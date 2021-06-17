<?php
/* Template Name: COVID page */

$txt_choose = __('Choose country', 'apple');

$html_countries = get_transient('covid_countries_list');

if(empty($html_countries)) {
	$countries_data = file_get_contents('https://api.covid19api.com/countries');
	$countries = (!empty($countries_data)) ? json_decode($countries_data) : null;

	if(!empty($countries)) {
		$html_countries = null;

		foreach($countries as $country) {
			$country_name = __($country->Country, 'apple');
			$country_iso = $country->ISO2;

			$html_countries .= '<option value="'. $country_iso .'">'. $country_name .'</option>';
		}

		set_transient('covid_countries_list', $html_countries, 86400);
	}
}

get_header();
echo get_theme_page_title_block(get_the_title());
?>

<div class="covid_page container">
	<div class="row">
		<div class="countries_list">
			<select>
				<option selected disabled>-- <?php echo $txt_choose; ?> --</option>
				<?php echo $html_countries; ?>
			</select>
		</div>
		<div class="covid_results">
			<div class="error_message"></div>
			<div class="country_chart">
				<canvas id="country_chart"></canvas>
			</div>
		</div>
	</div>
</div>

<?php
get_footer();
