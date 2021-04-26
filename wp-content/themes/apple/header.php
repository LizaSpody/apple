<?php
require_once THEME_DIR .'/inc/classes/ThemeHeader.class.php';

$header = new ThemeHeader();

global $temp_html_dir;
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">

	<?php wp_head(); ?>

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>


<!-- offcanvas-overlay start -->
<div class="offcanvas-overlay"></div>
<!-- offcanvas-overlay end -->
<!-- offcanvas-mobile-menu start -->
<div id="offcanvas-mobile-menu" class="offcanvas theme1 offcanvas-mobile-menu">
	<div class="inner">
		<div class="border-bottom mb-4 pb-4 text-right">
			<button class="offcanvas-close">×</button>
		</div>
		<div class="offcanvas-head mb-4">
			<nav class="offcanvas-top-nav">
				<ul class="d-flex justify-content-center align-items-center">
					<li class="mx-4"><a href="compare.html"><i class="ion-ios-loop-strong"></i> Compare <span>(0)</span>
						</a></li>
					<li class="mx-4">
						<a href="wishlist.html"> <i class="ion-android-favorite-outline"></i> Wishlist
							<span>(0)</span></a>
					</li>
				</ul>
			</nav>
		</div>
		<nav class="offcanvas-menu">
			<ul>
				<li><a href="#"><span class="menu-text">Home</span></a>
					<ul class="offcanvas-submenu">
						<li><a href="index.html">Home 1</a></li>
						<li><a href="index-2.html">Home 2</a></li>
						<li><a href="index-3.html">Home 3</a></li>
						<li><a href="index-4.html">Home 4</a></li>
					</ul>

				</li>
				<li><a href="#"><span class="menu-text">Shop</span></a>
					<ul class="offcanvas-submenu">
						<li>
							<a href="#"><span class="menu-text">Shop Grid</span></a>
							<ul class="offcanvas-submenu">
								<li><a href="shop-grid-3-column.html">Shop Grid 3 Column</a></li>
								<li><a href="shop-grid-4-column.html">Shop Grid 4 Column</a></li>
								<li><a href="shop-grid-left-sidebar.html">Shop Grid Left Sidebar</a></li>
								<li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
							</ul>
						</li>
						<li>
							<a href="#"><span class="menu-text">Shop List</span></a>
							<ul class="offcanvas-submenu">
								<li><a href="shop-grid-list.html">Shop List</a></li>
								<li><a href="shop-grid-list-left-sidebar.html">Shop List Left Sidebar</a></li>
								<li><a href="shop-grid-list-right-sidebar.html">Shop List Right Sidebar</a></li>
							</ul>
						</li>
						<li>
							<a href="#"><span class="menu-text">Shop Single</span></a>
							<ul class="offcanvas-submenu">
								<li><a href="single-product.html">Shop Single</a></li>
								<li><a href="single-product-configurable.html">Shop Variable</a></li>
								<li><a href="single-product-affiliate.html">Shop Affiliate</a></li>
								<li><a href="single-product-group.html">Shop Group</a></li>
							</ul>
						</li>
						<li>
							<a href="#"><span class="menu-text">other pages</span></a>
							<ul class="offcanvas-submenu">
								<li><a href="about-us.html">About Page</a></li>
								<li><a href="cart.html">Cart Page</a></li>
								<li><a href="checkout.html">Checkout Page</a></li>
								<li><a href="compare.html">Compare Page</a></li>
								<li><a href="login.html">Login &amp; Register Page</a></li>
								<li><a href="myaccount.html">Account Page</a></li>
								<li><a href="wishlist.html">Wishlist Page</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="#"><span class="menu-text">Pages</span></a>
					<ul class="offcanvas-submenu">
						<li><a href="about-us.html">About Page</a></li>
						<li><a href="cart.html">Cart Page</a></li>
						<li><a href="checkout.html">Checkout Page</a></li>
						<li><a href="compare.html">Compare Page</a></li>
						<li><a href="login.html">Login &amp; Register Page</a></li>
						<li><a href="myaccount.html">Account Page</a></li>
						<li><a href="wishlist.html">Wishlist Page</a></li>
					</ul>
				</li>
				<li><a href="#"><span class="menu-text">Blog</span></a>
					<ul class="offcanvas-submenu">
						<li><a href="#"><span class="menu-text">Blog Grid</span></a>
							<ul class="offcanvas-submenu">
								<li><a href="blog-grid-3-column.html">Blog Grid 3 column</a></li>
								<li><a href="blog-grid-4-column.html">Blog Grid 4 column</a></li>
								<li><a href="blog-grid-left-sidebar.html">Blog Grid Left Sidebar</a>
								</li>
								<li><a href="blog-grid-right-sidebar.html">Blog Grid Right Sidebar</a></li>
							</ul>
						</li>
						<li><a href="#"><span class="menu-text">Blog List</span></a>
							<ul class="offcanvas-submenu">
								<li><a href="blog-list-left-sidebar.html">Blog List Left Sidebar</a></li>
								<li><a href="blog-list-right-sidebar.html">Blog List Right Sidebar</a></li>
							</ul>
						</li>
						<li><a href="#"><span class="menu-text">Blog Single</span></a>
							<ul class="offcanvas-submenu">
								<li><a href="single-blog.html">Single Blog</a></li>
								<li><a href="blog-single-left-sidebar.html">Blog Single Left Sidebar</a></li>
								<li><a href="blog-single-right-sidebar.html">Blog Single Right Sidbar</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="contact.html">Contact Us</a></li>
			</ul>
		</nav>
		<div class="offcanvas-social py-30">
			<ul>
				<li>
					<a href="#"><i class="icon-social-facebook"></i></a>
				</li>
				<li>
					<a href="#"><i class="icon-social-twitter"></i></a>
				</li>
				<li>
					<a href="#"><i class="icon-social-instagram"></i></a>
				</li>
				<li>
					<a href="#"><i class="icon-social-google"></i></a>
				</li>
				<li>
					<a href="#"><i class="icon-social-instagram"></i></a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- offcanvas-mobile-menu end -->
<!-- OffCanvas Wishlist Start -->
<div id="offcanvas-wishlist" class="offcanvas offcanvas-wishlist theme1">
	<div class="inner">
		<div class="head d-flex flex-wrap justify-content-between">
			<span class="title">Wishlist</span>
			<button class="offcanvas-close">×</button>
		</div>
		<ul class="minicart-product-list">
			<li>
				<a href="single-product.html" class="image"><img src="<?php echo $temp_html_dir; ?>assets/img/product/4.jpg"
																 alt="Cart product Image"></a>
				<div class="content">
					<a href="single-product.html" class="title">Walnut Cutting Board</a>
					<span class="quantity-price">1 x <span class="amount">$100.00</span></span>
					<a href="#" class="remove">×</a>
				</div>
			</li>
			<li>
				<a href="single-product.html" class="image"><img src="<?php echo $temp_html_dir; ?>assets/img/product/5.jpg"
																 alt="Cart product Image"></a>
				<div class="content">
					<a href="single-product.html" class="title">Lucky Wooden Elephant</a>
					<span class="quantity-price">1 x <span class="amount">$35.00</span></span>
					<a href="#" class="remove">×</a>
				</div>
			</li>
			<li>
				<a href="single-product.html" class="image"><img src="<?php echo $temp_html_dir; ?>assets/img/product/6.jpg"
																 alt="Cart product Image"></a>
				<div class="content">
					<a href="single-product.html" class="title">Fish Cut Out Set</a>
					<span class="quantity-price">1 x <span class="amount">$9.00</span></span>
					<a href="#" class="remove">×</a>
				</div>
			</li>
		</ul>
		<a href="wishlist.html" class="btn theme--btn-default btn--lg d-block d-sm-inline-block rounded-5 mt-30">view
			wishlist</a>
	</div>
</div>
<!-- OffCanvas Wishlist End -->

<!-- OffCanvas Cart Start -->
<div id="offcanvas-cart" class="offcanvas offcanvas-cart theme1">
	<div class="inner">
		<div class="head d-flex flex-wrap justify-content-between">
			<span class="title">Cart</span>
			<button class="offcanvas-close">×</button>
		</div>
		<ul class="minicart-product-list">
			<li>
				<a href="single-product.html" class="image"><img src="<?php echo $temp_html_dir; ?>assets/img/product/1.jpg"
																 alt="Cart product Image"></a>
				<div class="content">
					<a href="single-product.html" class="title">Walnut Cutting Board</a>
					<span class="quantity-price">1 x <span class="amount">$100.00</span></span>
					<a href="#" class="remove">×</a>
				</div>
			</li>
			<li>
				<a href="single-product.html" class="image"><img src="<?php echo $temp_html_dir; ?>assets/img/product/2.jpg"
																 alt="Cart product Image"></a>
				<div class="content">
					<a href="single-product.html" class="title">Lucky Wooden Elephant</a>
					<span class="quantity-price">1 x <span class="amount">$35.00</span></span>
					<a href="#" class="remove">×</a>
				</div>
			</li>
			<li>
				<a href="single-product.html" class="image"><img src="<?php echo $temp_html_dir; ?>assets/img/product/3.jpg"
																 alt="Cart product Image"></a>
				<div class="content">
					<a href="single-product.html" class="title">Fish Cut Out Set</a>
					<span class="quantity-price">1 x <span class="amount">$9.00</span></span>
					<a href="#" class="remove">×</a>
				</div>
			</li>
		</ul>
		<div class="sub-total d-flex flex-wrap justify-content-between">
			<strong>Subtotal :</strong>
			<span class="amount">$144.00</span>
		</div>
		<a href="cart.html" class="btn theme--btn-default btn--lg d-block d-sm-inline-block rounded-5 mr-sm-2">view
			cart</a>
		<a href="checkout.html"
		   class="btn theme-btn--dark1 btn--lg d-block d-sm-inline-block mt-4 mt-sm-0 rounded-5">checkout</a>
		<p class="minicart-message">Free Shipping on All Orders Over $100!</p>
	</div>
</div>
<!-- OffCanvas Cart End -->

<!-- header start -->
<header>
	<!-- header top start -->
	<?php echo $header->get_header_top(); ?>
	<!-- header top end -->
	<!-- header-middle satrt -->
	<div class="header-middle pt-20">
		<div class="container">
			<div class="row align-items-center">
				<?php
					echo $header->get_logo();
					echo $header->get_main_icons();
					echo $header->get_search();
				?>
			</div>
		</div>
	</div>
	<!-- header-middle end -->

	<!-- header bottom start -->
	<nav id="sticky" class="header-bottom theme1 d-none d-lg-block">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-10 offset-lg-2 d-flex flex-wrap align-items-center position-relative">
					<ul class="main-menu d-flex">
						<li class="active ml-0">
							<a href="#" class="pl-0">Home <i class="ion-ios-arrow-down"></i></a>
							<ul class="sub-menu">
								<li><a href="index.html">Home 1</a></li>
								<li><a href="index-2.html">Home 2</a></li>
								<li><a href="index-3.html">Home 3</a></li>
								<li><a href="index-4.html">Home 4</a></li>
							</ul>
						</li>
						<li class="position-static">
							<a href=" #">Shop <i class="ion-ios-arrow-down"></i></a>
							<ul class="mega-menu row">
								<li class="col-3">
									<ul>
										<li class="mega-menu-title"><a href="#">Shop Grid</a></li>
										<li><a href="shop-grid-3-column.html">Shop Grid 3 Column</a></li>
										<li><a href="shop-grid-4-column.html">Shop Grid 4 Column</a></li>
										<li><a href="shop-grid-left-sidebar.html">Shop Grid Left Sidebar</a></li>
										<li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
									</ul>
								</li>
								<li class="col-3">
									<ul>
										<li class="mega-menu-title"><a href="#">Shop List</a></li>
										<li><a href="shop-grid-list.html">Shop List</a></li>
										<li><a href="shop-grid-list-left-sidebar.html">Shop List Left Sidebar</a>
										</li>
										<li><a href="shop-grid-list-right-sidebar.html">Shop List Right Sidebar</a>
										</li>
									</ul>
								</li>
								<li class="col-3">
									<ul>
										<li class="mega-menu-title"><a href="#">Shop Single</a></li>
										<li><a href="single-product.html">Shop Single</a></li>
										<li><a href="single-product-configurable.html">Shop Variable</a></li>
										<li><a href="single-product-affiliate.html">Shop Affiliate</a></li>
										<li><a href="single-product-group.html">Shop Group</a></li>
									</ul>
								</li>
								<li class="col-3">
									<ul>
										<li class="mega-menu-title"><a href="#">other pages</a></li>
										<li><a href="about-us.html">About Page</a></li>
										<li><a href="cart.html">Cart Page</a></li>
										<li><a href="checkout.html">Checkout Page</a></li>
										<li><a href="compare.html">Compare Page</a></li>
									</ul>
								</li>
								<li class="col-6 mt-4">
									<a href="single-product.html" class="zoom-in overflow-hidden"><img
											src="<?php echo $temp_html_dir; ?>assets/img/mega-menu/1.jpg" alt="img"></a>
								</li>
								<li class="col-6 mt-4">
									<a href="single-product.html" class="zoom-in overflow-hidden"><img
											src="<?php echo $temp_html_dir; ?>assets/img/mega-menu/2.jpg" alt="img"></a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">Pages <i class="ion-ios-arrow-down"></i></a>
							<ul class="sub-menu">
								<li><a href="about-us.html">About Page</a></li>
								<li><a href="cart.html">Cart Page</a></li>
								<li><a href="checkout.html">Checkout Page</a></li>
								<li><a href="compare.html">Compare Page</a></li>
								<li><a href="login.html">Login &amp; Register Page</a></li>
								<li><a href="myaccount.html">Account Page</a></li>
								<li><a href="wishlist.html">Wishlist Page</a></li>
							</ul>
						</li>
						<li>
							<a href="#">Blog <i class="ion-ios-arrow-down"></i></a>
							<ul class="sub-menu">
								<li>
									<a href="#">Blog Grid</a>
									<ul class="sub-menu">
										<li><a href="blog-grid-3-column.html">Blog Grid 3 column</a></li>
										<li><a href="blog-grid-4-column.html">Blog Grid 4 column</a></li>
										<li><a href="blog-grid-left-sidebar.html">Blog Grid Left Sidebar</a></li>
										<li><a href="blog-grid-right-sidebar.html">Blog Grid Right Sidebar</a></li>
									</ul>
								</li>
								<li>
									<a href="#">Blog List</a>
									<ul class="sub-menu">
										<li><a href="blog-list-left-sidebar.html">Blog List Left Sidebar</a></li>
										<li><a href="blog-list-right-sidebar.html">Blog List Right Sidebar</a></li>
									</ul>
								</li>
								<li>
									<a href="#">Blog Single</a>
									<ul class="sub-menu">
										<li><a href="single-blog.html">Single Blog</a></li>
										<li><a href="blog-single-left-sidebar.html">Blog Single Left Sidebar</a>
										</li>
										<li><a href="blog-single-right-sidebar.html">Blog Single Right Sidbar</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="contact.html">contact Us</a></li>
					</ul>

				</div>
			</div>
		</div>
	</nav>
	<!-- header bottom end -->
	<div class="mobile-category-nav theme1 d-lg-none py-20">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!--=======  category menu  =======-->
					<div class="hero-side-category">
						<!-- Category Toggle Wrap -->
						<div class="category-toggle-wrap">
							<!-- Category Toggle -->
							<button class="category-toggle"><i class="fa fa-bars"></i> All Categories</button>
						</div>

						<!-- Category Menu -->
						<nav class="category-menu">
							<ul>
								<li class="menu-item-has-children menu-item-has-children-1">
									<a href="#">Accessories & Parts<i class="ion-ios-arrow-down"></i></a>
									<!-- category submenu -->
									<ul class="category-mega-menu category-mega-menu-1">
										<li><a href="#">Cables & Adapters</a></li>
										<li><a href="#">Batteries</a></li>
										<li><a href="#">Chargers</a></li>
										<li><a href="#">Bags & Cases</a></li>
										<li><a href="#">Electronic Cigarettes</a></li>
									</ul>
								</li>
								<li class="menu-item-has-children menu-item-has-children-2">
									<a href="#">Camera & Photo<i class="ion-ios-arrow-down"></i></a>
									<!-- category submenu -->
									<ul class="category-mega-menu category-mega-menu-2">
										<li><a href="#">Digital Cameras</a></li>
										<li><a href="#">Camcorders</a></li>
										<li><a href="#">Camera Drones</a></li>
										<li><a href="#">Action Cameras</a></li>
										<li><a href="#">Photo Studio Supplies</a></li>
									</ul>
								</li>
								<li class="menu-item-has-children menu-item-has-children-3">
									<a href="#">Smart Electronics <i class="ion-ios-arrow-down"></i></a>
									<!-- category submenu -->
									<ul class="category-mega-menu category-mega-menu-3">
										<li><a href="#">Wearable Devices</a></li>
										<li><a href="#">Smart Home Appliances</a></li>
										<li><a href="#">Smart Remote Controls</a></li>
										<li><a href="#">Smart Watches</a></li>
										<li><a href="#">Smart Wristbands</a></li>
									</ul>
								</li>
								<li class="menu-item-has-children menu-item-has-children-4">
									<a href="#">Audio & Video <i class="ion-ios-arrow-down"></i></a>
									<!-- category submenu -->
									<ul class="category-mega-menu category-mega-menu-4">
										<li><a href="#">Televisions</a></li>
										<li><a href="#">TV Receivers</a></li>
										<li><a href="#">Projectors</a></li>
										<li><a href="#">Audio Amplifier Boards</a></li>
										<li><a href="#">TV Sticks</a></li>
									</ul>
								</li>
								<li class="menu-item-has-children menu-item-has-children-5">
									<a href="#">Portable Audio & Video <i class="ion-ios-arrow-down"></i></a>
									<!-- category submenu -->
									<ul class="category-mega-menu category-mega-menu-5">
										<li><a href="#">Headphones</a></li>
										<li><a href="#">Speakers</a></li>
										<li><a href="#">MP3 Players</a></li>
										<li><a href="#">VR/AR Devices</a></li>
										<li><a href="#">Microphones</a></li>
									</ul>
								</li>
								<li class="menu-item-has-children menu-item-has-children-6">
									<a href="#">Video Game <i class="ion-ios-arrow-down"></i></a>
									<!-- category submenu -->
									<ul class="category-mega-menu category-mega-menu-6">
										<li><a href="#">Handheld Game Players</a></li>
										<li><a href="#">Game Controllers</a></li>
										<li><a href="#">Joysticks</a></li>
										<li><a href="#">Stickers</a></li>
									</ul>
								</li>
								<li><a href="#">Televisions</a></li>
								<li><a href="#">Digital Cameras</a></li>
								<li><a href="#">Headphones</a></li>
								<li><a href="#">Wearable Devices</a></li>
								<li><a href="#">Smart Watches</a></li>
								<li><a href="#">Game Controllers</a></li>
								<li><a href="#"> Smart Home Appliances</a></li>
								<li class="hidden"><a href="#">Projectors</a></li>
								<li>
									<a href="#" id="more-btn"><i class="ion-ios-plus-empty"></i>
										More Categories</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--=======  End of category menu =======-->
</header>
<!-- header end -->
