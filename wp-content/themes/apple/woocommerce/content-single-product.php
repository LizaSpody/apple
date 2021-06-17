<?php
/**
 * The template for displaying product content in the single-product.php template
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-single-product.php.
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
global $temp_html_dir;

/**
 * Hook: woocommerce_before_single_product.
 *
 * @hooked woocommerce_output_all_notices - 10
 */
do_action( 'woocommerce_before_single_product' );

if ( post_password_required() ) {
	echo get_the_password_form(); // WPCS: XSS ok.
	return;
}
?>
<div id="product-<?php the_ID(); ?>" <?php wc_product_class( '', $product ); ?>>

	<section class="product-single theme3 pt-60">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mb-5 mb-lg-0">
					<?php
					/**
					 * Hook: woocommerce_before_single_product_summary.
					 *
					 * @hooked woocommerce_show_product_sale_flash - 10
					 * @hooked woocommerce_show_product_images - 20
					 */
					do_action( 'woocommerce_before_single_product_summary' );
					?>

					<!--
					<div class="position-relative">
						<span class="badge badge-danger top-right">New</span>
					</div>
					-->
				</div>
				<div class="col-lg-6 mt-5 mt-md-0">
					<div class="single-product-info">
						<?php
						/**
						 * Hook: woocommerce_single_product_summary.
						 *
						 * @hooked woocommerce_template_single_meta - 1
						 * @hooked woocommerce_template_single_title - 5
						 * @hooked woocommerce_template_single_rating - 10
						 * @hooked woocommerce_template_single_price - 10
						 * @hooked woocommerce_template_single_excerpt - 20
						 * @hooked woocommerce_template_single_add_to_cart - 30
						 * @hooked woocommerce_template_single_sharing - 50
						 * @hooked WC_Structured_Data::generate_product_data() - 60
						 */
						do_action( 'woocommerce_single_product_summary' );
						?>

						<div class="single-product-head">
							<h2 class="title mb-20">Originals Windbreaker Winter Jacket</h2>
							<div class="star-content mb-20">
								<span class="star-on"><i class="ion-ios-star"></i> </span>
								<span class="star-on"><i class="ion-ios-star"></i> </span>
								<span class="star-on"><i class="ion-ios-star"></i> </span>
								<span class="star-on"><i class="ion-ios-star"></i> </span>
								<span class="star-on"><i class="ion-ios-star"></i> </span>
								<a href="#" id="write-comment"><span class="ml-2"><i class="far fa-comment-dots"></i></span>
									Read reviews <span>(1)</span></a>
								<a href="#" data-toggle="modal" data-target="#exampleModalCenter"><span class="edite"><i
												class="far fa-edit"></i></span> Write a review</a>
							</div>
						</div>
						<div class="product-body mb-40">
							<div class="d-flex align-items-center mb-30">
								<h6 class="product-price mr-20"><del class="del">$23.90</del>
									<span class="current_price">$21.51</span></h6>
								<span class="badge position-static bg-dark rounded-0">Save 10%</span>
							</div>
							<p>Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket.</p>
							<ul>
								<li>Part of the Kaval Collection.</li>
								<li>Regular fit is eased, but not sloppy, and perfect for any activity.</li>
								<li>Plain-woven jacket specifically constructed for freedom of movement.</li>
							</ul>
						</div>
						<div class="product-footer">
							<div class="product-count style d-flex flex-column flex-sm-row mt-30 mb-30">
								<div class="count d-flex">
									<input type="number" min="1" max="10" step="1" value="1">
									<div class="button-group">
										<button class="count-btn increment"><i class="fas fa-chevron-up"></i></button>
										<button class="count-btn decrement"><i class="fas fa-chevron-down"></i></button>
									</div>
								</div>
								<div>
									<button class="btn theme-btn--dark3 btn--xl mt-5 mt-sm-0 rounded-5">
										<span class="mr-2"><i class="ion-android-add"></i></span>
										Add to cart
									</button>
								</div>
							</div>
							<div class="addto-whish-list">
								<a href="#"><i class="icon-heart"></i> Add to wishlist</a>
								<a href="#"><i class="icon-shuffle"></i> Add to compare</a>
							</div>
							<div class="pro-social-links mt-10">
								<ul class="d-flex align-items-center">
									<li class="share">Share</li>
									<li><a href="#"><i class="ion-social-facebook"></i></a></li>
									<li><a href="#"><i class="ion-social-twitter"></i></a></li>
									<li><a href="#"><i class="ion-social-google"></i></a></li>
									<li><a href="#"><i class="ion-social-pinterest"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<?php
	/**
	 * Hook: woocommerce_after_single_product_summary.
	 *
	 * @hooked woocommerce_output_product_data_tabs - 10
	 * @hooked woocommerce_upsell_display - 15
	 * @hooked woocommerce_output_related_products - 20
	 */
	do_action( 'woocommerce_after_single_product_summary' );
	?>
</div>

<?php do_action( 'woocommerce_after_single_product' ); ?>
