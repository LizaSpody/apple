<?php
function get_wishlist_count() {
	$output = array(
		'.header_wishlist_icon .badge' => yith_wcwl_count_all_products(),
	);

	echo json_encode($output);

	die();
}
add_action('wp_ajax_get_wishlist_count', 'get_wishlist_count');
add_action('wp_ajax_nopriv_get_wishlist_count', 'get_wishlist_count');
