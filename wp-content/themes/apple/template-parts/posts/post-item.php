<?php
$post_url = get_permalink();
$post_title = get_the_title();
$post_date = get_the_date();
$post_author = get_the_author_posts_link();
$post_content = wp_trim_words(get_the_content(), 60, '...');

$thumbnail = get_the_post_thumbnail();
$html_thumbnail = (!empty($thumbnail)) ? '<a class="blog-thumb mb-20 mb-md-0 mr-md-4 mr-xl-5 w-md-50 zoom-in d-block overflow-hidden" href="'. $post_url .'">'. $thumbnail .'</a>' : null;

$txt_more = __('Read More', 'apple');
?>
<div class="col-12 mb-30">
	<div class="single-blog media flex-column flex-md-row">
		<?php echo $html_thumbnail; ?>
		<div class="blog-post-content media-body mb-5 mb-md-0">
			<h3 class="title mb-15"><a href="<?php echo $post_url; ?>"><?php echo $post_title; ?></a>
			</h3>
			<h5 class="sub-title"> Posted by <?php echo $post_author; ?> <span
					class="separator">/</span> <?php echo $post_date; ?></h5>
			<?php echo $post_content; ?>
			<a class="read-more" href="<?php echo $post_url; ?>"><?php echo $txt_more; ?></a>
		</div>
	</div>
</div>
