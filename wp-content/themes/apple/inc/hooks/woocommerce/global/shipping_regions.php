<?php
/**
 * Countries regions
 */
function countries_regions($regions) {
	$regions['UA'] = array(
		'KY' => 'Kyiv',
		'LV' => 'Lviv',
		'KH' => 'Kharkiv',
		'OD' => 'Odesa',
	);

	return $regions;
}
add_filter( 'woocommerce_states', 'countries_regions' );

/**
 * Rename states to regions
 */
function rename_states_to_regions($fields) {
	$fields['state']['label'] = __('Regions', 'apple');

	return $fields;
}
add_filter( 'woocommerce_default_address_fields', 'rename_states_to_regions');
