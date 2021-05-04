<?php
function custom_mimes_for_upload($mimes = array()) {
	$mimes['webp'] = 'image/webp';

	return $mimes;
}
add_action('upload_mimes', 'custom_mimes_for_upload');
