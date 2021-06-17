<?php
/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 */

defined( 'ABSPATH' ) || exit;

global $product;

// Ensure visibility.
if ( empty( $product ) || ! $product->is_visible() ) {
	return;
}
?>
<div <?php wc_product_class( 'col-sm-6 col-lg-4 col-xl-3 mb-30', $product ); ?>>
	<div class="card product-card">
		<?php
		/**
		 * Hook: woocommerce_before_shop_loop_item.
		 *
		 */
		do_action( 'woocommerce_before_shop_loop_item' );

		echo '<div class="card-body">';
			echo '<div class="product-thumbnail position-relative">';
				/**
				 * Hook: woocommerce_before_shop_loop_item_title.
				 *
				 * @hooked woocommerce_show_product_loop_sale_flash - 10
				 * @hooked custom_product_item_loop_thumbnail - 12
				 */
				do_action( 'woocommerce_before_shop_loop_item_title' );
			echo '</div>';

			echo '<div class="product-desc py-0">';
				/**
				 * Hook: woocommerce_shop_loop_item_title.
				 *
				 * @hooked custom_product_item_loop_title - 10
				 */
				do_action( 'woocommerce_shop_loop_item_title' );

				echo '<div class="d-flex align-items-center justify-content-between">';
					/**
					 * Hook: woocommerce_after_shop_loop_item_title.
					 *
					 * @hooked woocommerce_template_loop_rating - 5
					 * @hooked woocommerce_template_loop_price - 10
					 */
					do_action( 'woocommerce_after_shop_loop_item_title' );

					/**
					 * Hook: woocommerce_after_shop_loop_item.
					 *
					 * @hooked woocommerce_template_loop_add_to_cart - 10
					 */
					do_action( 'woocommerce_after_shop_loop_item' );
				echo '</div>';
			echo '</div>';
		echo '</div>';
		?>
	</div>
</div>