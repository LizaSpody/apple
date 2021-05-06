$(document).ready(function() {

if($('.team_page').length > 0) {
	// Click on department link
	$('.team_departments a').click(function() {
		let obj = $(this);

		// Если текущая ссылка содержит класс active, то прекращаем выполнение кода
		if(obj.hasClass('active')) {
			return false;
		}

		// Get department id from link data attribute
		let department_id = obj.data('department');

		// Remove previous active department link
		$('.team_departments a.active').removeClass('active');

		// Display current department link
		obj.addClass('active');

		// Hide previous active department list
		$('.department_list.active').removeClass('active');

		// Display current department list
		$('.department_list[data-department="'+ department_id +'"]').addClass('active');

		return false;
	});
}

});
