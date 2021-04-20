<?php
define('THEME_DIR', get_template_directory());
define('THEME_DIR_URI', get_template_directory_uri());

// Temporary HTML layouts
$temp_html_dir = THEME_DIR_URI .'/junno/'; // TODO: delete before production

require_once THEME_DIR .'/inc/helpers/file.php';
require_once THEME_DIR .'/inc/wp/enqueue_scripts.php';
require_once THEME_DIR .'/inc/wp/theme_support.php';
