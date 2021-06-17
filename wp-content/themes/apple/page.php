<?php
$title = get_the_title();
$html_thumbnail = get_the_post_thumbnail();
$content = apply_filters('the_content', get_the_content());

get_header();

echo get_theme_page_title_block($title);
?>
<!-- product tab start -->
<section class="blog-section pt-80 pb-80">
	<div class="container">
		<div class="row">
			<div class="col-12 col-xl-9 mx-auto">
				<div class="single-blog text-left">
					<?php echo $html_thumbnail; ?>
					<div class="blog-post-content pt-30">
						<?php echo $content; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- product tab end -->
<?php get_footer(); ?>
