<?php
class ThemeTeam {
	// Свойства класса (по умолчанию пустые, данные появляются после вызова определенных методов)
	public $html_departments; // HTML код списка департаментов (ссылки-переключатели)
	public $final_data; // Ассоциативный массив: 1-й уровень - ID департамента, 2-й уровень - данные сотрудников

	/**
	 * Метод, который обрабатывает данные всех департаментов
	 */
	function get_departments() {
		// Получаем массив со всеми департаментами
		$departments_data = get_terms(array(
			'taxonomy' => 'departments'
		));

		// Присваиваем свойству открытие HTML списка (перед циклом)
		$this->html_departments = '<ul>';

		// Начало цикла по перебору каждого департамента из массива
		$dep_count = 0;
		foreach($departments_data as $repartment) {
			$dep_count++;

			// Получаем нужные данные из массива
			$dep_id = $repartment->term_id;
			$dep_name = $repartment->name;
			$dep_class = ($dep_count == 1) ? 'active' : null;

			// Для свойства final_data создаем N элементов массива, где ключ массива будет равен ID департамента, каждый такой элемент будет содержать пустой массив
			$this->final_data[$dep_id] = array();

			// Строим HTML элементы всех департаментов
			$this->html_departments .= '<li><a href="#" class="'. $dep_class .'" data-department="'. $dep_id .'">'. $dep_name .'</a></li>';
		}

		// Заканчиваем вносить данные в свойство (после цикла)
		$this->html_departments .= '</ul>';

		// В данном методе нет return, так как данные заносятся в свойства класса ($this->final_data, $this->html_departments)
	}

	/**
	 * Метод, который обрабатывает данные всех сотрудников
	 */
	function get_team_lists() {
		// Получение всех кастомных постов Team
		$team_data = get_posts(array(
			'post_type' => 'team',
			'numberposts' => -1
		));

		// Перебор в цикле каждого сотрудника
		foreach($team_data as $team_item) {
			// Получение нужных данных из массива
			$member_id = $team_item->ID;
			$member_title = $team_item->post_title;
			$member_position = get_field('position', $member_id);

			// Получение аватара
			$member_avatar = get_the_post_thumbnail_url($member_id);
			$member_avatar = (empty($member_avatar)) ? THEME_DIR_URI .'/assets/images/pages/team/no_avatar.jpg' : $member_avatar;

			// ID департамента
			$member_department_id = get_the_terms($member_id, 'departments');
			$member_department_id = (isset($member_department_id[0])) ? $member_department_id[0]->term_id : null;

			// Создание элемента массива для глобального свойства final_data, где мы в начале указываем ключ массива в виде ID департамента (1-й уровень), а в пустых [] — указываем, чтобы создалось N количество элементов 2-го уровня
			$this->final_data[$member_department_id][] = array(
				'avatar' => $member_avatar,
				'name' => $member_title,
				'position' => $member_position,
				'department_id' => $member_department_id
			);
		}

		// В данном методе нет return, так как данные заносятся в свойства класса ($this->final_data)
	}

	/**
	 * Создание HTML списка департаментов (с сотрудниками) на основании данных  свойства $this->final_data
	 */
	function display_departments_lists() {
		$html_departments_list = null;

		// Перебор департаментов в цикле (1 цикл - 1 департамент)
		$dep_count = 0;
		foreach($this->final_data as $key => $department_members) {
			$dep_count++;
			$dep_class = ($dep_count == 1) ? 'active' : null;

			// Перебор сотрудников  в цикле (1 цикл - 1 сотрудник) (цикл в цикле, так как массив $this->final_data у нас состоит из 2 уровней: 1-й уровень - ID департамента, 2-й уровень - данные сотрудников)
			$html_members = null;
			foreach($department_members as $dep_member) {
				// Подготавливаем HTML каждого сотрудника
				$html_members .= <<<HTML
		<a href="#" class="team_member">
			<div class="team_avatar"><img src="{$dep_member['avatar']}" alt=""></div>
			<div class="team_name">{$dep_member['name']}</div>
			<div class="team_position">{$dep_member['position']}</div>
		</a>
HTML;
			}

			// Создаем HTML-обертку департамента, внутри которого выводим всех сотрудников департамента
			$html_departments_list .= <<<HTML
		<div class="department_list {$dep_class}" data-department="{$key}">
			<div class="list_inner">
				{$html_members}
			</div>
		</div>
HTML;

		}

		// Возвращаем готовый HTML
		return $html_departments_list;
	}

	/**
	 * Основной метод, который мы вызываем на странице archive-team.php
	 */
	function display() {
		// Мы вызываем методы, которые вносят изменения в глобальные свойства класса, так что их мы выводим без присвояния к переменной
		$this->get_departments();
		$this->get_team_lists();

		// Получаем HTML всех департаментов (с сотрудниками)
		$html_departments_lists = $this->display_departments_lists();

		$block = <<<HTML
<div class="team_page container">
	<div class="row">
		<div class="team_departments">
			{$this->html_departments}
		</div>
		<div class="team_lists">
			{$html_departments_lists}
		</div>
	</div>
</div>
HTML;

		return $block;
	}
}
