<?php
# Remove default product link wrapper
remove_action('woocommerce_before_shop_loop_item', 'woocommerce_template_loop_product_link_open', 10);
remove_action('woocommerce_after_shop_loop_item', 'woocommerce_template_loop_product_link_close', 5);

# Custom product image
function custom_product_item_loop_thumbnail() {
	get_template_part('template-parts/woocommerce/archive/product_item/image');
}
add_action('woocommerce_before_shop_loop_item_title', 'custom_product_item_loop_thumbnail', 12);
remove_action('woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_thumbnail', 10);

# Custom product title
function custom_product_item_loop_title() {
	get_template_part('template-parts/woocommerce/archive/product_item/title');
}
add_action('woocommerce_shop_loop_item_title', 'custom_product_item_loop_title', 10);
remove_action('woocommerce_shop_loop_item_title', 'woocommerce_template_loop_product_title', 10);
