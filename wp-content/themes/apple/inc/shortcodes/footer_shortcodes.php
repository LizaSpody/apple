<?php
/**
 * Logo
 */
function footer_logo_shortcode() {
	$home_url = home_url('/');
	$logo = get_field('footer_logo', 'options');

	if(empty($logo)) {
		return false;
	}

	$logo_url = $logo['url'];

	$html_logo = <<<HTML
<div class="footer-logo mb-35">
	<a href="{$home_url}">
		<img src="{$logo_url}" alt="footer logo">
	</a>
</div>
HTML;

	return $html_logo;
}
add_shortcode('footer-logo', 'footer_logo_shortcode');

/**
 * Description
 */
function footer_description() {
	$description = get_field('footer_description', 'options');

	if(empty($description)) {
		return false;
	}

	$block = '<p class="text mb-30">'. $description .'</p>';

	return $block;
}
add_shortcode('footer-description', 'footer_description');

/**
 * Phone
 */
function footer_phone() {
	$phone_data = get_field('footer_phone', 'options');

	if(empty($phone_data)) {
		return false;
	}

	$phone_icon = THEME_DIR_URI .'/assets/images/footer/phone.png';
	$phone_title = $phone_data['phone_title'];
	$phone_number = $phone_data['phone_number'];

	$block = <<<HTML
<div class="address-widget mb-30">
	<div class="media">
		<span class="address-icon mr-3">
			<img src="{$phone_icon}" alt="phone">
		</span>
		<div class="media-body">
			<p class="help-text text-uppercase">{$phone_title}</p>
			<h4 class="title text-dark"><a href="tel:{$phone_number}">{$phone_number}</a></h4>
		</div>
	</div>
</div>
HTML;

	return $block;
}
add_shortcode('footer-phone', 'footer_phone');

/**
 * Social networks
 */
function footer_logo_social() {
	$socials_list = get_field('footer_social_networks', 'options');

	if(empty($socials_list)) {
		return false;
	}

	$html_socials = null;
	foreach($socials_list as $social_item) {
		$icon_class = $social_item['social_network_name'];
		$network_url = $social_item['network_url'];

		$html_socials .= '<li><a href="'. $network_url .'" target="_blank"><span class="'. $icon_class .'"></span></a></li>';
	}

	$block = <<<HTML
<div class="social-network">
	<ul class="d-flex">
		{$html_socials}
	</ul>
</div>
HTML;

	return $block;
}
add_shortcode('footer-social', 'footer_logo_social');
