<?php
class ThemeHeader {
	public $acf_fields;

	function __construct() {
		$this->acf_fields = get_field('header', 'options');
	}

	/**
	 * Header top
	 */
	function get_header_top() {
		$block = <<<HTML
<div class="header-top theme1 bg-dark py-15">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6 col-md-7 order-last order-md-first">
				<div class="static-info text-center text-md-left">
					<p class="text-white">Join our showroom and get <span class="theme-color">50 % off</span> !
						Coupon code : <span class="theme-color">Junno50</span></p>
				</div>
			</div>
			<div class="col-lg-6 col-md-5">
				<nav class="navbar-top pb-2 pb-md-0 position-relative">
					<ul class="d-flex justify-content-center justify-content-md-end align-items-center">
						<li>
							<a href="#" id="dropdown1" data-toggle="dropdown" aria-haspopup="true"
							   aria-expanded="false">Setting <i class="ion ion-ios-arrow-down"></i></a>
							<ul class="topnav-submenu dropdown-menu" aria-labelledby="dropdown1">
								<li><a href="myaccount.html">My account</a></li>
								<li><a href="checkout.html">Checkout</a></li>
								<li><a href="login.html">Sign out</a></li>
							</ul>
						</li>
						<li>
							<a href="#" id="dropdown2" data-toggle="dropdown" aria-haspopup="true"
							   aria-expanded="false">USD $ <i class="ion ion-ios-arrow-down"></i> </a>
							<ul class="topnav-submenu dropdown-menu" aria-labelledby="dropdown2">
								<li class="active"><a href="#">EUR €</a></li>
								<li><a href="#">USD $</a></li>
							</ul>
						</li>
						<li class="english">
							<a href="#" id="dropdown3" class="pr-0" data-toggle="dropdown" aria-haspopup="true"
							   aria-expanded="false">
								<img src="<?php echo $temp_html_dir; ?>assets/img/logo/us-flag.jpg" alt="us flag"> English
								<i class="ion ion-ios-arrow-down"></i>
							</a>
							<ul class="topnav-submenu dropdown-menu" aria-labelledby="dropdown3">
								<li class="active">
									<a href="#"><img src="<?php echo $temp_html_dir; ?>assets/img/logo/us-flag.jpg" alt="us flag">
										English</a>
								</li>
								<li>
									<a href="#"><img src="<?php echo $temp_html_dir; ?>assets/img/logo/france.jpg" alt="france flag">
										Français</a>
								</li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
HTML;

		return $block;
	}

	/**
	 * Logo
	 */
	function get_logo() {
		$logo_url = home_url('/');
		$logo_image = $this->acf_fields['logo']['sizes']['thumbnail'];

		$block = <<<HTML
<div class="col-sm-6 col-lg-2 order-first">
	<div class="logo text-center text-sm-left mb-30 mb-sm-0">
		<a href="{$logo_url}"><img src="{$logo_image}" alt="logo"></a>
	</div>
</div>
HTML;

		return $block;
	}

	/**
	 * Main icons
	 */
	function get_main_icons() {
		global $temp_html_dir; // TODO: Remove pefore production

		$phone_title = $this->acf_fields['phone']['phone_title'];
		$phone_number = $this->acf_fields['phone']['phone_number'];



		$block = <<<HTML
<div class="col-sm-6 col-lg-5 col-xl-4">
	<!-- search-form end -->
	<div class="d-flex align-items-center justify-content-center justify-content-sm-end">
		<div class="media static-media mr-50 d-none d-lg-flex">
			<img class="mr-3 align-self-center" src="{$temp_html_dir}assets/img/icon/1.png" alt="icon">
			<div class="media-body">
				<div class="phone">
					<span class="text-muted">{$phone_title}</span>
				</div>
				<div class="phone">
					<a href="tel:{$phone_number}" class="text-dark">{$phone_number}</a>
				</div>
			</div>
		</div>
		<!-- static-media end -->
		<div class="cart-block-links theme1">
			<ul class="d-flex">
				<li>
					<a href="compare.html">
						<span class="position-relative">
							<i class="icon-shuffle"></i>
							<span class="badge cbdg1">1</span>
						</span>
					</a>
				</li>
				<li>
					<a class="offcanvas-toggle" href="#offcanvas-wishlist">
						<span class="position-relative">
							<i class="icon-heart"></i>
							<span class="badge cbdg1">3</span>
						</span>
					</a>
				</li>
				<li class="mr-0 cart-block position-relative">
					<a class="offcanvas-toggle" href="#offcanvas-cart">
						<span class="position-relative">
							<i class="icon-bag"></i>
							<span class="badge cbdg1">3</span>
						</span>
						<span class="cart-total position-relative">$90.00</span>
					</a>
				</li>
				<!-- cart block end -->
			</ul>
		</div>
		<div class="mobile-menu-toggle theme1 d-lg-none">
			<a href="#offcanvas-mobile-menu" class="offcanvas-toggle">
				<svg viewbox="0 0 800 600">
					<path
						d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200"
						id="top"></path>
					<path d="M300,320 L540,320" id="middle"></path>
					<path
						d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190"
						id="bottom" transform="translate(480, 320) scale(1, -1) translate(-480, -318)">
					</path>
				</svg>
			</a>
		</div>
	</div>
</div>
HTML;

		return $block;
	}

	/**
	 * Search
	 */
	function get_search() {
		$block = <<<HTML
<div class="col-lg-5 col-xl-6 order-lg-first">
	<div class="search-form pt-30 pt-lg-0">
		<form class="form-inline position-relative">
			<input class="form-control theme1-border" type="search"
				   placeholder="Enter your search key ...">
			<button class="btn search-btn theme-bg btn-rounded" type="submit"><i
					class="icon-magnifier"></i></button>
		</form>
	</div>
</div>
HTML;

		return $block;
	}

	/**
	 * Logo
	 */
	/*function get_logo() {
		$block = <<<HTML

HTML;

		return $block;
	}

	/**
	 * Logo
	 */
	/*function get_logo() {
		$block = <<<HTML

HTML;

		return $block;
	}

	/**
	 * Logo
	 */
	/*function get_logo() {
		$block = <<<HTML

HTML;

		return $block;
	}*/
}
