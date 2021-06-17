/* global Chart */
$(document).ready(function() {
if($('.covid_page').length > 0) {
	/**
	 * Countries list
	 */
	$('.covid_page .countries_list select').select2();

	/**
	 * Country chart
	 */
	let ctx = $('#country_chart')[0].getContext('2d');
	let country_chart;

	$('.countries_list select').change(function() {
		let country_code = $(this).val();

		$('.covid_results .error_message').hide();

		$.ajax({
			url: themeVars.ajaxurl,
			dataType: 'json',
			method: 'GET',
			data: {
				action: 'get_covid_data',
				country_code: country_code,
			},
			success: function(data) {
				if(data.status === 'success') {
					// Render country chart
					$('.country_chart').show();

					if(typeof country_chart == 'undefined') {
						country_chart = new Chart(ctx, {
							type: 'line',
							data: {
								labels: data.results.labels,
								datasets: data.results.datasets,
							},

							// Configuration options go here
							options: {
								tooltips: {
									mode: 'index',
									intersect: true,
								},
							},
						});
					} else {
						country_chart.data = {
							labels: data.results.labels,
							datasets: data.results.datasets,
						}

						country_chart.update();
					}
				} else {
					$('.country_chart').hide();

					let error_message = data.error;
					$('.covid_results .error_message').text(error_message).fadeIn(300);
				}
			},
		});
	});

}
});
