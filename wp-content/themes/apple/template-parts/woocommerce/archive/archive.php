<div class="product-tab bg-white pt-80 pb-50">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 mb-30">
<?php
/**
 * @hooked woocommerce_taxonomy_archive_description - 10
 * @hooked woocommerce_product_archive_description - 10
 */
do_action( 'woocommerce_archive_description' );
?>

<?php if ( woocommerce_product_loop() ) : ?>

<?php
/**
 * @hooked woocommerce_output_all_notices - 10
 * @hooked woocommerce_result_count - 20
 * @hooked woocommerce_catalog_ordering - 30
 * @hooked custom_moved_cubcategories - 40
 */
do_action( 'woocommerce_before_shop_loop' );
?>

<?php woocommerce_product_loop_start(); ?>

<?php if ( wc_get_loop_prop( 'total' ) ) : ?>
<?php while ( have_posts() ) : ?>
<?php the_post(); ?>
<?php wc_get_template_part( 'content', 'product' ); ?>
<?php endwhile; ?>
<?php endif; ?>

<?php woocommerce_product_loop_end(); ?>

<?php do_action( 'woocommerce_after_shop_loop' ); ?>

<?php
else :
	do_action( 'woocommerce_no_products_found' );
endif;
?>
				<div class="grid-nav-wraper bg-lighten2 mb-30">
					<div class="row align-items-center">
						<div class="col-12 col-md-6 mb-3 mb-md-0">
							<nav class="shop-grid-nav">
								<ul class="nav nav-pills align-items-center" id="pills-tab" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" id="pills-home-tab" data-toggle="pill"
										   href="#pills-home" role="tab" aria-controls="pills-home"
										   aria-selected="true">
											<i class="fa fa-th"></i>

										</a>
									</li>
									<li class="nav-item mr-0">
										<a class="nav-link" id="pills-profile-tab" data-toggle="pill"
										   href="#pills-profile" role="tab" aria-controls="pills-profile"
										   aria-selected="false"><i class="fa fa-list"></i></a>
									</li>
									<li> <span class="total-products text-capitalize">There are 13 products.</span></li>
								</ul>
							</nav>
						</div>
						<div class="col-12 col-md-6 position-relative">
							<div class="shop-grid-button d-flex align-items-center">
								<span class="sort-by">Sort by:</span>
								<button class="btn-dropdown rounded d-flex justify-content-between" type="button"
										id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
									Relevance <span class="ion-android-arrow-dropdown"></span>
								</button>
								<div class="dropdown-menu shop-grid-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#">Relevance</a>
									<a class="dropdown-item" href="#"> Name, A to Z</a>
									<a class="dropdown-item" href="#"> Name, Z to A</a>
									<a class="dropdown-item" href="#"> Price, low to high</a>
									<a class="dropdown-item" href="#"> Price, high to low</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- product-tab-nav end -->
				<div class="tab-content" id="pills-tabContent">
					<!-- first tab-pane -->
					<div class="tab-pane fade show active" id="pills-home" role="tabpanel"
						 aria-labelledby="pills-home-tab">
						<div class="row grid-view theme1">
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="product-thumbnail position-relative">
											<span class="badge badge-danger top-right">New</span>
											<a href="single-product.html">
												<img class="first-img" src="assets/img/product/1.jpg" alt="thumbnail">
											</a>
											<ul class="product-links d-flex justify-content-center">
												<li>
													<a href="wishlist.html">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="add to wishlist" class="icon-heart"> </span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#compare">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Add to compare" class="icon-shuffle"></span>
													</a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view">
                                                        <span data-toggle="tooltip" data-placement="bottom"
															  title="Quick view" class="icon-magnifier"></span>
													</a>
												</li>
											</ul>
										</div>
										<div class="product-desc py-0">
											<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
													Men's Slim Fit Shirt Short Sleeve...</a></h3>
											<div class="star-rating">
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star"></span>
												<span class="ion-ios-star de-selected"></span>
											</div>
											<div class="d-flex align-items-center justify-content-between">
												<h6 class="product-price">$11.90</h6>
												<button class="pro-btn" data-toggle="modal"
														data-target="#add-to-cart"><i class="icon-basket"></i></button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- second tab-pane -->
					<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
						<div class="row grid-view-list theme1">
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/1.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
															Men's Slim Fit Shirt Short Sleeve...</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price">$11.90</h6>
												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-success top-left">-10%</span>
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/6.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">New Balance
															Running Arishi trainers in triple</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price"><del class="del">$23.90</del>
														<span class="onsale">$21.51</span></h6>
												</div>

												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/2.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">New Balance
															Fresh Foam Kaymin from new zeland</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price">$11.90</h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/7.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">New Balance
															Running Fuel Cell trainers</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price">$11.90</h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/3.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">Juicy
															Couture
															Tricot Logo Stripe Jacket</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price"> $21.51</h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/8.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">orginal
															Kaval
															Windbreaker Winter Jacket</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price">$11.90</h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/4.jpg"
														 alt="thumbnail">
													<img class="second-img" src="assets/img/product/12.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">Juicy
															Couture
															Tricot Logo Stripe Jacket</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price"><del class="del">$23.90</del>
														<span class="onsale">$21.51</span></h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/9.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">orginal
															Kaval
															Windbreaker Winter Jacket</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price">$11.90</h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/5.jpg"
														 alt="thumbnail">
													<img class="second-img" src="assets/img/product/12.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
															Men's
															Slim Fit Shirt Short Sleeve...</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price">$11.90</h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/12.jpg"
														 alt="thumbnail">
													<img class="second-img" src="assets/img/product/5.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">orginal
															Kaval
															Windbreaker Winter Jacket</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price">$11.90</h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/10.jpg"
														 alt="thumbnail">
													<img class="second-img" src="assets/img/product/8.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">New Luxury
															Men's
															Slim Fit Shirt Short Sleeve...</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price"><del class="del">$23.90</del>
														<span class="onsale">$21.51</span></h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
							<div class="col-12 mb-30">
								<div class="card product-card">
									<div class="card-body">
										<div class="media flex-column flex-md-row">
											<div class="product-thumbnail position-relative">
												<span class="badge badge-danger top-right">New</span>
												<a href="single-product.html">
													<img class="first-img" src="assets/img/product/11.jpg"
														 alt="thumbnail">
													<img class="second-img" src="assets/img/product/5.jpg"
														 alt="thumbnail">
												</a>
												<!-- product links -->
												<ul class="product-links d-flex justify-content-center">
													<li>
														<a href="wishlist.html">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="add to wishlist" class="icon-heart"> </span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#compare">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Add to compare" class="icon-shuffle"></span>
														</a>
													</li>
													<li>
														<a href="#" data-toggle="modal" data-target="#quick-view">
                                                            <span data-toggle="tooltip" data-placement="bottom"
																  title="Quick view" class="icon-magnifier"></span>
														</a>
													</li>
												</ul>
												<!-- product links end-->
											</div>
											<div class="media-body pl-30">
												<div class="product-desc py-0">
													<h3 class="title"><a href="shop-grid-4-column.html">orginal
															Kaval
															Windbreaker Winter Jacket</a></h3>
													<div class="star-rating mb-10">
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star"></span>
														<span class="ion-ios-star de-selected"></span>
													</div>
													<h6 class="product-price">$11.90</h6>

												</div>
												<ul class="product-list-des">
													<li>
														Block out the haters with the fresh adidas® Originals Kaval
														Windbreaker
														div Jacket.
													</li>
													<li>
														Part of the Kaval Collection.
													</li>
													<li>
														Regular fit is eased, but not sloppy, and perfect for any
														activity.
													</li>
													<li>
														Plain-woven jacket specifically constructed for freedom of
														movement.
													</li>
												</ul>
												<div class="availability-list mb-30">
													<p>Availability: <span>1200 In Stock</span></p>
												</div>
												<button class="btn theme-btn--dark1 btn--xl rounded-5"
														data-toggle="modal" data-target="#add-to-cart">
													Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- product-list End -->
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<nav class="pagination-section mt-30">
							<div class="row align-items-center">
								<div class="col-12">
									<ul class="pagination justify-content-center">
										<li class="page-item active"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item">
											<a class="page-link" href="#"><i class="ion-chevron-right"></i></a>
										</li>
									</ul>
								</div>
							</div>
						</nav>
					</div>
				</div>
			</div>
			<?php get_sidebar('store'); ?>
		</div>
	</div>
</div>
