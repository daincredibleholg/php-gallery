<? 

/*
 * Protect against very old versions of 4.0 (like 4.0RC1) which 
 * don't implicitly create a new stdClass() when you use a variable
 * like a class.
 */
if (!$gallery) {
	$gallery = new stdClass();
}

$gallery->version = "1.1-cvs";
$gallery->config_version = 20;
$gallery->url = "http://gallery.sourceforge.net";
?>
