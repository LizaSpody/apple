<?php
global $product;

$pr_id = $product->get_id();
$pr_url = get_permalink($pr_id);

$pr_image_id = $product->get_image_id();

if(!empty($pr_image_id)) {
	$pr_image = wp_get_attachment_image_url($pr_image_id, 'shop_catalog');
} else {
	$pr_image = wc_placeholder_img_src('shop_catalog');
}
?>
<a href="<?php echo $pr_url; ?>"><img class="first-img" src="<?php echo $pr_image; ?>" alt="thumbnail"></a>
<ul class="product-links d-flex justify-content-center">
	<li class="add-to-wishlist-<?php echo $pr_id; ?>">
		<a href="#" class="add_to_wishlist" data-product-id="<?php echo $pr_id; ?>">
			<span data-toggle="tooltip" data-placement="bottom" title="add to wishlist" class="icon-heart"> </span>
		</a>
	</li>
	<li>
		<a href="#" class="compare" data-product_id="<?php echo $pr_id; ?>">
			<span data-toggle="tooltip" data-placement="bottom" title="Add to compare" class="icon-shuffle"></span>
		</a>
	</li>
</ul>
