<?php
function apple_widget_areas() {
	// Sidebar
	register_sidebar( array(
		'name'          => __('Sidebar'),
		'id'            => 'sidebar',
		'description'   => '',
		'class'         => '',
		'before_widget' => '<div class="sidebar-widget theme1 mb-30">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="post-title">',
		'after_title'   => '</h3>',
		'before_sidebar' => '',
		'after_sidebar'  => '',
	) );

	// Sidebar
	register_sidebar( array(
		'name'          => __('Store Sidebar'),
		'id'            => 'store_sidebar',
		'description'   => '',
		'class'         => '',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '',
		'after_title'   => '',
		'before_sidebar' => '',
		'after_sidebar'  => '',
	) );

	// Footer Column 1
	register_sidebar( array(
		'name'          => __('Footer Column 1'),
		'id'            => 'footer-col-1',
		'description'   => '',
		'class'         => '',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '',
		'after_title'   => '',
		'before_sidebar' => '',
		'after_sidebar'  => '',
	) );

	// Footer Column 2
	register_sidebar( array(
		'name'          => __('Footer Column 2'),
		'id'            => "footer-col-2",
		'description'   => '',
		'class'         => '',
		'before_widget' => '<div id="%1$s" class="footer-widget %2$s">',
		'after_widget'  => "</div>\n",
		'before_title'  => '<div class="border-bottom cbb1 mb-25"><div class="section-title pb-20"><h2 class="title text-dark text-uppercase">',
		'after_title'   => "</h2></div></div>\n",
		'before_sidebar' => '',
		'after_sidebar'  => '',
	) );

	// Footer Column 3
	register_sidebar( array(
		'name'          => __('Footer Column 3'),
		'id'            => "footer-col-3",
		'description'   => '',
		'class'         => '',
		'before_widget' => '<div id="%1$s" class="footer-widget %2$s">',
		'after_widget'  => "</div>\n",
		'before_title'  => '<div class="border-bottom cbb1 mb-25"><div class="section-title pb-20"><h2 class="title text-dark text-uppercase">',
		'after_title'   => "</h2></div></div>\n",
		'before_sidebar' => '',
		'after_sidebar'  => '',
	) );

	// Footer Column 4
	register_sidebar( array(
		'name'          => __('Footer Column 4'),
		'id'            => "footer-col-4",
		'description'   => '',
		'class'         => '',
		'before_widget' => '<div id="%1$s" class="footer-widget %2$s">',
		'after_widget'  => "</div>\n",
		'before_title'  => '<div class="border-bottom cbb1 mb-25"><div class="section-title pb-20"><h2 class="title text-dark text-uppercase">',
		'after_title'   => "</h2></div></div>\n",
		'before_sidebar' => '',
		'after_sidebar'  => '',
	) );
}
add_action( 'widgets_init', 'apple_widget_areas' );
