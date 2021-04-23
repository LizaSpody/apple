<?php
$title = get_the_title();
$html_thumbnail = get_the_post_thumbnail();
$date = get_the_date();
$content = get_the_content();

get_header();

echo get_theme_page_title_block($title);
?>
<!-- product tab start -->
<section class="blog-section pt-80 pb-80">
	<div class="container">
		<div class="row">
			<div class="col-12 col-xl-9 mx-auto">
				<div class="blog-title">
					<h2 class="title">From Our Blog </h2>
					<p class="text">The latest news, videos, and discussion topics</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-xl-9 mx-auto">
				<div class="single-blog text-left">
					<?php echo $html_thumbnail; ?>
					<div class="blog-post-content pt-30">
						<h5 class="sub-title font-style-normal">
							Posted by <a class="blog-link" href="https://themeforest.net/user/hastech">HasTech</a> <span class="separator">/</span>
							<?php echo $date; ?> <span class="separator">/</span> <a class="blog-link" href="https://themeforest.net/user/hastech">Electronics</a>
						</h5>
						<?php echo $content; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- product tab end -->
<?php get_footer(); ?>
