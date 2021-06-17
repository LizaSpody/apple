<?php
/**
 * Single Product Price
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/price.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $product;

$on_sale = $product->is_on_sale();

$html_sale_badge = null;
if($on_sale) {
	$regular_price = $product->get_regular_price();
	$current_price = $product->get_price();

	$sale_percent = round(($regular_price - $current_price) / ($regular_price * 0.01), 2);

	$html_sale_badge = '<span class="badge position-static bg-dark rounded-0">Save '. $sale_percent .'%</span>';
}
?>
<div class="product-body mb-40">
	<div class="d-flex align-items-center mb-30 <?php echo esc_attr( apply_filters( 'woocommerce_product_price_class', 'price' ) ); ?>">
		<?php
		echo $product->get_price_html();
		echo $html_sale_badge;
		?>

	</div>
