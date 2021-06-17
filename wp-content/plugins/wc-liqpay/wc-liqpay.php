<?php
/*
 * Plugin Name: WooCommerce LiqPay Payment Gateway
 * Description: LiqPay Payments
 * Author: Max Kardanets
 * Version: 1.0.0
 */

define('LIQPAY_ROOT', WP_PLUGIN_DIR .'/wc-liqpay');

function liqpay_add_gateway_class( $gateways ) {
    $gateways[] = 'WC_LiqPay_Gateway';

    return $gateways;
}
add_filter( 'woocommerce_payment_gateways', 'liqpay_add_gateway_class' );

function liqpay_init_gateway_class() {
    class WC_LiqPay_Gateway extends WC_Payment_Gateway {
        public function __construct() {
            $this->id = 'liqpay';
            $this->icon = plugins_url() .'/wc-liqpay/inc/images/liqpay.png';
            $this->has_fields = false;
            $this->method_title = 'LiqPay Gateway';
            $this->method_description = 'LiqPay payment gateway';

            $this->supports = array(
                'products'
            );

            // Method with all the options fields
            $this->init_form_fields();

            // Load the settings.
            $this->init_settings();
            $this->title = $this->get_option( 'title' );
            $this->description = $this->get_option( 'description' );
            $this->enabled = $this->get_option( 'enabled' );
            $this->sandbox_mode = 'yes' === $this->get_option( 'sandbox_mode' );

            if($this->sandbox_mode == 'yes') {
                $this->public_key = $this->get_option( 'sandbox_public_key' );
                $this->private_key = $this->get_option( 'sandbox_private_key' );
            } else {
                $this->public_key = $this->get_option( 'production_public_key' );
                $this->private_key = $this->get_option( 'production_private_key' );
            }

            // This action hook saves the settings
            add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array( $this, 'process_admin_options' ) );

            // Webhook
            add_action( 'woocommerce_api_liqpay', array( $this, 'webhook' ) );
        }

        public function init_form_fields() {
            $this->form_fields = array(
                'enabled' => array(
                    'title'       => 'Enable/Disable',
                    'label'       => 'Enable LiqPay Gateway',
                    'type'        => 'checkbox',
                    'description' => '',
                    'default'     => 'no'
                ),
                'title' => array(
                    'title'       => 'Title',
                    'type'        => 'text',
                    'description' => 'This controls the title which the user sees during checkout.',
                    'default'     => 'LiqPay',
                    'desc_tip'    => true,
                ),
                'description' => array(
                    'title'       => 'Description',
                    'type'        => 'textarea',
                    'description' => 'This controls the description which the user sees during checkout.',
                    'default'     => 'Pay with your credit card via our super-cool payment gateway.',
                ),
                'sandbox_mode' => array(
                    'title'       => 'Sandbox mode',
                    'label'       => 'Enable Sandbox Mode',
                    'type'        => 'checkbox',
                    'description' => 'Place the payment gateway in test mode using test API keys.',
                    'default'     => 'yes',
                    'desc_tip'    => true,
                ),
                'sandbox_public_key' => array(
                    'title'       => 'Sandbox Public Key',
                    'type'        => 'text'
                ),
                'sandbox_private_key' => array(
                    'title'       => 'Sandbox Private Key',
                    'type'        => 'text',
                ),
                'production_public_key' => array(
                    'title'       => 'Production Public Key',
                    'type'        => 'text'
                ),
                'production_private_key' => array(
                    'title'       => 'Production Private Key',
                    'type'        => 'password'
                )
            );
        }

        public function process_payment($order_id) {
            require_once LIQPAY_ROOT .'/inc/classes/LiqPay.php';

            // Remove cart.
            WC()->cart->empty_cart();

            $order_data = wc_get_order($order_id);

            $amount = floatval($order_data->get_total());
            $first_name = WC()->customer->get_billing_first_name();
            $last_name = WC()->customer->get_billing_last_name();
            $address = WC()->customer->get_billing_address_1();
            $city = WC()->customer->get_billing_city();

            $liqpay = new LiqPay($this->public_key, $this->private_key);
            $liqpay_data = $liqpay->cnb_form_raw(array(
                'action'                => 'pay',
                'amount'                => $amount,
                'currency'              => 'USD',
                'description'           => 'Оплата заказа №'. $order_id,
                'order_id'              => $order_id,
                'version'               => 3,
                'language'              => 'en',
                'result_url'            => 'http://apple.loc/en/thank-you/',
                'server_url'            => 'http://apple.loc/wc-api/liqpay',
                'verifycode'            => 'Y',
                'sender_address'        => $address,
                'sender_city'           => $city,
                'sender_first_name'     => $first_name,
                'sender_last_name'      => $last_name,
            ));

            $liqpay_url = $liqpay_data['url'] .'?data='. $liqpay_data['data'] .'&signature='. $liqpay_data['signature'];

            return array(
                'result' => 'success',
                'redirect' => $liqpay_url
            );
        }

        public function webhook() {
            $liqpay_data = base64_decode($_POST['data']);
            $liqpay_data_json = json_decode($liqpay_data);

            $liqpay_signature = $_POST['signature'];

            $local_signature =  base64_encode( sha1($this->private_key . $_POST['data'] . $this->private_key, 1 ));

            // If LiqPay results valid
            if($liqpay_signature == $local_signature) {
                $liqpay_status = $liqpay_data_json->status;

                if($liqpay_status == 'success') {
                    $order_id = $liqpay_data_json->order_id;

                    $order_data = wc_get_order($order_id);

                    $order_data->set_status('completed');

                    $order_data->save();
                }
            }
        }
    }
}
add_action( 'plugins_loaded', 'liqpay_init_gateway_class' );