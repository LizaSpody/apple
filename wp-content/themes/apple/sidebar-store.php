<?php
$q_obj = get_queried_object();
$q_taxonomy = (!empty($q_obj->taxonomy)) ? $q_obj->taxonomy : null;
$q_slug = (!empty($q_obj->slug)) ? $q_obj->slug : null;

var_dump($q_taxonomy, $q_slug);

$product_filters = null;

// Phones
if(($q_taxonomy == 'product_cat') && ($q_slug == 'phones')) {
	$product_filters = do_shortcode('[yith_wcan_filters slug="draft-preset"]');
}

// Laptops
if(
	($q_taxonomy == 'product_cat') &&
	($q_slug == 'macbooks' || $q_slug == 'laptops')
) {
	$product_filters = do_shortcode('[yith_wcan_filters slug="draft-preset-2"]');
}

if(!empty($product_filters)) {
	$product_filters = '<h4 class="sidebar_filters_title">Filter By</h4>'. $product_filters;
}
?>
<div class="col-lg-3 mb-30 order-lg-first">
	<aside class="left-sidebar store_sidebar theme1">
		<?php echo $product_filters ?>

		<!-- search-filter start -->
		<div class="search-filter">
			<div class="check-box-inner pt-0">
				<h4 class="title">Bags &amp; Shoes</h4>
			</div>

		</div>

		<ul id="offcanvas-menu2" class="blog-ctry-menu">
			<li><a href="javascript:void(0)">Shoes</a>
				<ul class="category-sub-menu">
					<li><a href="#">Women Shoes</a></li>
					<li><a href="#">Men Shoes</a></li>
					<li><a href="#">Boots</a></li>
					<li><a href="#">Casual Shoes</a></li>
					<li><a href="#">Flip Flops</a></li>
				</ul>

			</li>
			<li><a href="javascript:void(0)">Luggage &amp; Bags</a>
				<ul class="category-sub-menu">
					<li><a href="#">Stylish Backpacks</a></li>
					<li><a href="#">Shoulder Bags</a></li>
					<li><a href="#">Crossbody Bags</a></li>
					<li><a href="#">Briefcases</a></li>
					<li><a href="#">Luggage &amp; Travel</a></li>
				</ul>
			</li>
			<li><a href="javascript:void(0)">Accessories</a>
				<ul class="category-sub-menu">
					<li><a href="#">Cosmetic Bags &amp; Cases</a></li>
					<li><a href="#">Wallets &amp; Card Holders</a></li>
					<li><a href="#">Luggage Covers</a></li>
					<li><a href="#">Passport Covers</a></li>
					<li><a href="#">Bag Parts &amp; Accessories</a></li>
				</ul>
			</li>
		</ul>

		<div class="search-filter">
			<form action="#">
				<div class="check-box-inner mt-10">
					<h4 class="title">Filter By</h4>
					<h4 class="sub-title pt-10">Categories</h4>
					<div class="filter-check-box">
						<input type="checkbox" id="20820">
						<label for="20820">Digital Cameras <span>(13)</span></label>
					</div>
					<div class="filter-check-box">
						<input type="checkbox" id="20821">
						<label for="20821">Camcorders <span>(13)</span></label>
					</div>
					<div class="filter-check-box">
						<input type="checkbox" id="20822">
						<label for="20822">Camera Drones<span>(13)</span></label>
					</div>
				</div>
				<!-- check-box-inner -->
				<div class="check-box-inner mt-10">
					<h4 class="sub-title">Price</h4>
					<div class="price-filter mt-10">
						<div class="price-slider-amount">
							<input type="text" id="amount" name="price" readonly
								   placeholder="Add Your Price" />
						</div>
						<div id="slider-range"></div>
					</div>
				</div>
				<div class="check-box-inner mt-10">
					<h4 class="sub-title">Size</h4>
					<div class="filter-check-box">
						<input type="checkbox" id="test9">
						<label for="test9">s <span>(2)</span></label>
					</div>
					<div class="filter-check-box">
						<input type="checkbox" id="test10">
						<label for="test10">m <span>(2)</span></label>
					</div>
					<div class="filter-check-box">
						<input type="checkbox" id="test11">
						<label for="test11">l <span>(2)</span></label>
					</div>
					<div class="filter-check-box">
						<input type="checkbox" id="test12">
						<label for="test12">xl <span>(2)</span></label>
					</div>
				</div>
				<!-- check-box-inner -->
				<div class="check-box-inner mt-10">
					<h4 class="sub-title">color</h4>
					<div class="filter-check-box color-grey">
						<input type="checkbox" id="20826">
						<label for="20826">grey <span>(4)</span></label>
					</div>
					<div class="filter-check-box color-white">
						<input type="checkbox" id="20827">
						<label for="20827">white <span>(3)</span></label>
					</div>
					<div class="filter-check-box color-black">
						<input type="checkbox" id="20828">
						<label for="20828">black <span>(6)</span></label>
					</div>
					<div class="filter-check-box color-camel">
						<input type="checkbox" id="20829">
						<label for="20829">camel <span>(2)</span></label>
					</div>
				</div>
				<!-- check-box-inner -->
				<div class="check-box-inner mt-10">
					<h4 class="sub-title">Brand</h4>
					<div class="filter-check-box">
						<input type="checkbox" id="20824">
						<label for="20824">Graphic Corner<span>(5)</span></label>
					</div>
					<div class="filter-check-box">
						<input type="checkbox" id="20825">
						<label for="20825">Studio Design<span>(8)</span></label>
					</div>
				</div>
			</form>
		</div>
		<!-- search-filter end -->
		<div class="product-widget mb-60 mt-30">
			<h3 class="title">Product Tags</h3>
			<ul class="product-tag d-flex flex-wrap">
				<li><a href="#">shopping</a></li>
				<li><a href="#">New products</a></li>
				<li><a href="#">Accessories</a></li>
				<li><a href="#">sale</a></li>
			</ul>
		</div>
		<!--second banner start-->
		<div class="banner hover-animation position-relative overflow-hidden">
			<a href="shop-grid-4-column.html" class="d-block">
				<img src="assets/img/banner/2.jpg" alt="img">
			</a>
		</div>
		<!--second banner end-->
	</aside>
</div>
