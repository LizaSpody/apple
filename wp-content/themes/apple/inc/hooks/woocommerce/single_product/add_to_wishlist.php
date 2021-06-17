<?php
function custom_wishlist_fragments($data) {
	$data['fragments']['span.badge.heart'] = yith_wcwl_count_all_products();

	return $data;
}
add_filter('yith_wcwl_ajax_add_return_params', 'custom_wishlist_fragments' );
