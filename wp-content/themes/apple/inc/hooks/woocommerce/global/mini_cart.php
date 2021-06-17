<?php
/**
 * Subtotal in mini cart
 */
function custom_subtotal_mini_cart() {
	$txt_subtotal = __('Subtotal', 'apple');
	$subtotal = WC()->cart->get_cart_subtotal();

	$block = <<<HTML
<div class="sub-total d-flex flex-wrap justify-content-between">
	<strong>{$txt_subtotal} :</strong>
	{$subtotal}
</div>
HTML;

	echo $block;
}
remove_action('woocommerce_widget_shopping_cart_total', 'woocommerce_widget_shopping_cart_subtotal', 10);
add_action('woocommerce_widget_shopping_cart_total', 'custom_subtotal_mini_cart', 10);

