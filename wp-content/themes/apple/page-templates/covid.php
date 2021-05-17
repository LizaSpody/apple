<?php
/* Template Name: COVID page */

get_header();
echo get_theme_page_title_block(get_the_title());
?>

<div class="covid_page container">
	<div class="row">
		<div class="countries_list">
			<select>
				<option>-- Choose country --</option>
				<option value="UA">Ukraine</option>
				<option value="FR">France</option>
				<option value="IN">India</option>
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
