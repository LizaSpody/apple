<?php
/**
 * Add a custom product data tab
 */
function woo_custom_tabs($tabs) {
	global $product;

	$tshirt_data = $product->get_attribute('pa_t-shirt-size');

	if(!empty($tshirt_data)) {
		$tabs['tshirt_sizes'] = array(
			'title' 	=> __( 'T-shirt sizes', 'woocommerce' ),
			'priority' 	=> 25,
			'callback' 	=> 'woo_tshirt_tab_content'
		);
	}

	return $tabs;

}
add_filter( 'woocommerce_product_tabs', 'woo_custom_tabs' );


/**
 * T-shirt tab content
 */
function woo_tshirt_tab_content() {
	echo '<h2>New Product Tab</h2>';
	echo '<p>Here\'s your new product tab.</p>';
}
