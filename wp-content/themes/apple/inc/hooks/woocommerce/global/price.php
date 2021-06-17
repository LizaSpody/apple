<?php
function custom_wc_price_html($price, $product) {
	$regular_price = $product->get_regular_price();
	$sale_price = $product->get_sale_price();
	$main_price = $product->get_price();

	$symbol = ' '. get_woocommerce_currency_symbol();


	$html_old_price = null;
	if(!empty($sale_price)) {
		$html_old_price = '<del class="del">'. $regular_price . $symbol .'</del>';
	}

	$price = '<h6 class="product-price mr-20">'. $html_old_price .'<span class="current_price">'. $main_price . $symbol .'</span></h6>';

	return $price;
}
add_filter( 'woocommerce_get_price_html', 'custom_wc_price_html', 100, 2 );
