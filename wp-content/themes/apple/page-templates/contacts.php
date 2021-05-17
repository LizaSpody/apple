<?php
/* Template Name: Contacts page */

/**
 * Map
 */
$map = get_field('map');

$html_map = null;
if(!empty($map)) {
	$map_lat = esc_attr($map['lat']);
	$map_lng = esc_attr($map['lng']);

	$html_map = <<<HTML
<div class="acf-map" data-zoom="16">
	<div class="marker" data-lat="{$map_lat}" data-lng="{$map_lng}"></div>
</div>
HTML;
}

init_google_map();

/**
 * Contact form
 */
$contact_form_id = get_field('contact_form');


get_header();

echo get_theme_page_title_block(get_the_title());
?>

<div class="map">
	<?php echo $html_map; ?>
</div>

<section class="contact-section pt-80 pb-50">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-12 mb-30">
				<!--  contact page side content  -->
				<div class="contact-page-side-content">
					<h3 class="contact-page-title">Contact Us</h3>
					<p class="contact-page-message mb-30">Claritas est etiam processus dynamicus, qui sequitur
						mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum
						claram anteposuerit litterarum formas human.</p>
					<!--  single contact block  -->

					<div class="single-contact-block">
						<h4><i class="fa fa-fax"></i> Address</h4>
						<p>123 Main Street, Anytown, CA 12345 – USA</p>
					</div>

					<!--  End of single contact block -->

					<!--  single contact block -->

					<div class="single-contact-block">
						<h4><i class="fa fa-phone"></i> Phone</h4>
						<p>
							<a href="tel:123456789">Mobile: (08) 123 456 789</a>
						</p>
						<p><a href="tel:1009678456">Hotline: 1009 678 456</a></p>
					</div>

					<!-- End of single contact block -->

					<!--  single contact block -->

					<div class="single-contact-block">
						<h4><i class="fas fa-envelope"></i> Email</h4>
						<p>
							<a href="mailto:yourmail@domain.com">yourmail@domain.com</a>
						</p>
						<p> <a href="mailto:support@hastech.company">support@hastech.company</a></p>
					</div>

					<!--=======  End of single contact block  =======-->
				</div>

				<!--=======  End of contact page side content  =======-->

			</div>
			<div class="col-lg-6 col-12 mb-30">
				<!--  contact form content -->
				<div class="contact-form-content">
					<?php echo do_shortcode('[contact-form-7 id="'. $contact_form_id .'"]') ?>

					<p class="form-messegemt-10"></p>
				</div>
				<!-- End of contact -->
			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>
