<?php
the_post();

$post_title = get_the_title();
$html_thumbnail = get_the_post_thumbnail();
$post_date = get_the_date();
$post_categories = get_the_category_list();
$post_author = get_the_author_posts_link();
$post_content = get_the_content();

$txt_posted_by = __('Posted by', 'apple');

get_header();

echo get_theme_page_title_block($post_title);
?>
<!-- product tab start -->
<section class="blog-section pt-80 pb-80">
	<div class="container">
		<div class="row">
			<div class="col-12 col-xl-9 mx-auto">
				<div class="single-blog text-left">
					<?php echo $html_thumbnail; ?>
					<div class="blog-post-content pt-30">
						<h5 class="sub-title font-style-normal">
							<?php echo $txt_posted_by .' '. $post_author; ?> <span class="separator">/</span>
							<?php echo $post_date; ?> <span class="separator">/</span> <?php echo $post_categories; ?>
						</h5>
						<?php echo $post_content; ?>
					</div>
				</div>

				<?php comments_template(); ?>
			</div>
		</div>
	</div>
</section>
<!-- product tab end -->
<?php get_footer(); ?>
