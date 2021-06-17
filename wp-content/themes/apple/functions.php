<?php
define('THEME_DIR', get_template_directory());
define('THEME_DIR_URI', get_template_directory_uri());

// Temporary HTML layouts
$temp_html_dir = THEME_DIR_URI .'/junno/'; // TODO: delete before production

# Helpers
require_once THEME_DIR .'/inc/helpers/file.php';
require_once THEME_DIR .'/inc/helpers/theme.php';
require_once THEME_DIR .'/inc/helpers/string.php';

# WP
require_once THEME_DIR .'/inc/wp/enqueue_scripts.php';
require_once THEME_DIR .'/inc/wp/theme_support.php';
require_once THEME_DIR .'/inc/wp/image_sizes.php';
require_once THEME_DIR .'/inc/wp/widget_areas.php';
require_once THEME_DIR .'/inc/wp/menus.php';

# Hooks
require_once THEME_DIR .'/inc/hooks/images.php';
require_once THEME_DIR .'/inc/hooks/security.php';
require_once THEME_DIR .'/inc/hooks/woocommerce/woocommerce_init.php';

# ACF
require_once THEME_DIR .'/inc/acf/options_page.php';

# Shortcodes
require_once THEME_DIR .'/inc/shortcodes/footer_shortcodes.php';

# AJAX
require_once THEME_DIR .'/inc/ajax/covid.php';
require_once THEME_DIR .'/inc/ajax/header_counters.php';

function my_acf_init() {
	acf_update_setting('google_api_key', 'AIzaSyCwLTmY1_m0bKSvjcojpsbQqP-rQrYnwLg');
}
add_action('acf/init', 'my_acf_init');
