<?php
class ThemeAbout {
	/*
	 * Text + Image (2 columns)
	 */
	function text_image_2_col($data) {
		$layout = $data['layout'];

		// Image
		$image_id = $data['image']['ID'];
		$image = wp_get_attachment_image($image_id, 'medium-large');
		$html_image = '<div class="flex_image">'. $image .'</div>';

		// Text
		$text = $data['text'];
		$html_text = '<div class="flex_text">'. $text .'</div>';

		// Display
		if($layout == 'txt_img') {
			$display = $html_text . $html_image;
		} else {
			$display = $html_image . $html_text;
		}


		$html_block = <<<HTML
<section class="flex_text_image_2_col">
	<div class="container">
		<div class="row">
			{$display}
		</div>
	</div>
</section>
HTML;

		return $html_block;
	}

	/**
	 * Stats
	 */
	function stats($data) {
		$stats_data = $data['statistics'];

		if(empty($stats_data)) {
			return false;
		}

		$html_stats = null;
		$stats_count = 0;
		foreach($stats_data as $stats_item) {
			$stats_count++;

			$icon_num = $stats_count % 4;
			$icon_num++;

			$stat_title =$stats_item['title'];
			$stat_description = $stats_item['description'];

			$html_stats .= <<<HTML
<div class="stat_item">
	<div class="stat_title"><div class="icon icon_{$icon_num}"></div> {$stat_title}</div>
	<div class="stat_description">{$stat_description}</div>
</div>
HTML;
		}

		$html_block = <<<HTML
<section class="flex_stats">
	<div class="container">
		<div class="row">
			<div class="stats_list">
				{$html_stats}
			</div>
		</div>
	</div>
</section>
HTML;


		return $html_block;
	}
}
