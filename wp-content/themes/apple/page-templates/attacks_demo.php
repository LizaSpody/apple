<?php
/* Template Name: Attacks demo */

get_header();

$test = (!empty($_GET['test'])) ? $_GET['test'] : null;

?>

<form>
	<input name="test" value="<?php echo $test; ?>">

	<input type="submit">
</form>

<?php
get_footer();
