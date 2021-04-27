<?php
require_once THEME_DIR .'/inc/classes/ThemeHeader.class.php';

$header = new ThemeHeader();

global $temp_html_dir;
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">

	<?php wp_head(); ?>

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<div class="offcanvas-overlay"></div>

<?php
	echo $header->get_mobile_menu(); // TODO: not ready yet
	echo $header->get_wishlist(); // TODO: not ready yet
	echo $header->get_cart(); // TODO: not ready yet
?>

<!-- header start -->
<header>
	<?php echo $header->get_header_top(); // TODO: not ready yet ?>

	<div class="header-middle pt-20">
		<div class="container">
			<div class="row align-items-center">
				<?php
					echo $header->get_logo();
					echo $header->get_main_icons(); // TODO: not ready yet
					echo $header->get_search(); // TODO: not ready yet
				?>
			</div>
		</div>
	</div>

	<?php
		echo $header->get_main_menu(); // TODO: not ready yet
		echo $header->get_mobile_categories(); // TODO: not ready yet
	?>
</header>
<!-- header end -->
