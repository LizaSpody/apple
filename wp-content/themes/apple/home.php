<?php
global $wp_query;

$page_title = $wp_query->queried_object->post_title;

get_header();

echo get_theme_page_title_block($page_title);
?>
<!-- product tab start -->
<section class="blog-section pt-80 pb-50">
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<div class="row">
					<?php
						if(have_posts()) {
							while(have_posts()) {
								the_post();

								get_template_part('template-parts/posts/post', 'item');
							}

							echo get_the_posts_pagination(array(
								'prev_text' => '«',
								'next_text' => '»'
							));
						} else {
							get_template_part('template-parts/posts/post', 'none');
						}
					?>
				</div>
			</div>
			<?php get_sidebar(); ?>
		</div>
	</div>
</section>
<!-- product tab end -->
<?php
get_footer();
?>
