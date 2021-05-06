<?php
require_once THEME_DIR .'/inc/classes/ThemeTeam.class.php';

$team = new ThemeTeam();

get_header();

echo get_theme_page_title_block(__('Team', 'apple'));

echo $team->display();

get_footer();
