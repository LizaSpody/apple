<?php
/* Template Name: About page */

require_once THEME_DIR .'/inc/classes/ThemeAbout.class.php';

$about = new ThemeAbout();

$acf_fields = get_field('content');

get_header();

echo get_theme_page_title_block(get_the_title());

if(!empty($acf_fields)) {
	foreach($acf_fields as $about_block) {
		$layout = $about_block['acf_fc_layout'];

		switch($layout) {
			case 'text_image_2_col':
				echo $about->text_image_2_col($about_block);
				break;

			case 'stats':
				echo $about->stats($about_block);
				break;
		}
	}
}

get_footer();
