<?php
function ajax_get_covid_data() {
	$country_code = esc_sql($_GET['country_code']);

	$api_url = 'https://api.covid19api.com/dayone/country/'. $country_code;

	$api_raw_data = file_get_contents($api_url);

	if(empty($api_raw_data)) {
		$output = array(
			'status' => 'error',
			'error' => __('Wrong country ISO 2', 'apple')
		);

		echo json_encode($output);
		die();
	}


	$api_data = json_decode($api_raw_data);

	$results = array(
		'labels' => array(),
		'datasets' => array(
			array(
				'label' => 'Confirmed',
				'backgroundColor' => 'transparent',
				'borderColor' => 'orange',
				'data' => array()
			),
			array(
				'label' => 'Deaths',
				'backgroundColor' => 'transparent',
				'borderColor' => 'black',
				'data' => array()
			),
			array(
				'label' => 'Recovered',
				'backgroundColor' => 'transparent',
				'borderColor' => 'green',
				'data' => array()
			),
			array(
				'label' => 'Active',
				'backgroundColor' => 'transparent',
				'borderColor' => 'red',
				'data' => array()
			),
		)
	);

	$real_items_count = 0;

	foreach($api_data as $result_item) {
		$province = $result_item->Province;
		$city = $result_item->City;
		$citycode = $result_item->CityCode;

		if(!empty($province) || !empty($city) || !empty($citycode)) {
			continue;
		}

		$real_items_count++;

		if($real_items_count % 10 != 0) {
			continue;
		}

		$confirmed = $result_item->Confirmed;
		$deaths = $result_item->Deaths;
		$recovered = $result_item->Recovered;
		$active = $result_item->Active;

		$raw_date = $result_item->Date;
		$unix_date = strtotime($raw_date);
		$date = date('d/m/Y', $unix_date);

		// Setting up labels
		$results['labels'][] = $date;

		// Setting up Confirmed
		$results['datasets'][0]['data'][] = $confirmed;

		// Setting up Deaths
		$results['datasets'][1]['data'][] = $deaths;

		// Setting up Recovered
		$results['datasets'][2]['data'][] = $recovered;

		// Setting up Active
		$results['datasets'][3]['data'][] = $active;
	}


	$output = array(
		'status' => 'success',
		'results' => $results
	);

	echo json_encode($output);

	die();
}
add_action('wp_ajax_get_covid_data', 'ajax_get_covid_data');
add_action('wp_ajax_nopriv_get_covid_data', 'ajax_get_covid_data');
