<?php
/**
 * Single Product Image
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/product-image.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.1
 */

defined( 'ABSPATH' ) || exit;

// Note: `wc_get_gallery_image_html` was added in WC 3.3.2 and did not exist prior. This check protects against theme overrides being used on older versions of WC.
if ( ! function_exists( 'wc_get_gallery_image_html' ) ) {
	return;
}

global $product;
global $temp_html_dir;

$image_id = $product->get_image_id();
$gallery_image_ids = $product->get_gallery_image_ids();

$images_data = null;
$html_images_large = null;
$html_images_small = null;
if(!empty($image_id) && !empty($gallery_image_ids)) {
	$images_data[0] = intval($image_id);

	// Merge all images
	$images_data_ids = $images_data + $gallery_image_ids;

	foreach($images_data_ids as $image_data_id) {
		$image_url_large = wp_get_attachment_image_url($image_data_id, 'large');
		$image_url_small = wp_get_attachment_image_url($image_data_id, 'shop_catalog');

		$html_images_large .= <<<HTML
<div class="single-product images">
	<div class="product-thumb woocommerce-product-gallery__image--placeholder">
		<img src="{$image_url_large}" class="wp-post-image" alt="product-thumb">
	</div>
</div>
HTML;

		$html_images_small .= <<<HTML
<div class="single-product">
	<div class="product-thumb">
		<a href="javascript:void(0)"> <img src="{$image_url_small}" alt="product-thumb"></a>
	</div>
</div>
HTML;
	}

	$html_images_small = '<div class="product-sync-nav single-product">'. $html_images_small .'</div>';
} elseif(!empty($image_id)) {
	$image_url_large = wp_get_attachment_image_url($image_id, 'large');
	$html_images_large = '<div class="single-product images"><div class="product-thumb woocommerce-product-gallery__image--placeholder"><img src="'. $html_images_large .'" class="wp-post-image" alt=""></div></div>';
} else {
	$html_images_large = wc_placeholder_img_src( 'woocommerce_single' );
	$html_images_large = '<div class="single-product"><div class="product-thumb"><img src="'. $html_images_large .'" alt=""></div></div>';
}


echo '<div class="product-sync-init mb-20">';
echo $html_images_large;
echo '</div>';

echo $html_images_small;
