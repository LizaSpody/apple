<?php
function add_to_cart_ajaxify($fragments) {
	/**
	 * Mini cart fragments
	 */
	ob_start();
	echo '<div id="offcanvas-cart" class="offcanvas offcanvas-cart theme1">';
	woocommerce_mini_cart();
	echo '</div>';

	$mini_cart = ob_get_contents();
	ob_end_clean();

	$fragments['#offcanvas-cart'] = $mini_cart;

	/**
	 * Total products in cart & total sum
	 */
	$cart_data = WC()->cart;

	$cart_total_price = $cart_data->get_total();
	$cart_total_products = $cart_data->cart_contents_count;

	$fragments['a.header_cart_icon .badge'] = '<span class="badge cbdg1 heart">'. $cart_total_products .'</span>';
	$fragments['a.header_cart_icon .cart-total'] = '<span class="cart-total position-relative">'. $cart_total_price .'</span>';

	return $fragments;
}
add_filter( 'woocommerce_add_to_cart_fragments', 'add_to_cart_ajaxify', -1);
