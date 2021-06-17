<?php
get_header();

$title = woocommerce_page_title(false);

echo get_theme_page_title_block($title);
?>


<?php
if(is_archive()) {
	require_once THEME_DIR .'/template-parts/woocommerce/archive/archive.php';
} else { ?>
	<div class="container">
		<?php woocommerce_content(); ?>
	</div>
<?php } ?>

<?php
get_footer();
