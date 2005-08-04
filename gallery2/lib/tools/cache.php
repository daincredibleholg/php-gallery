<?php
require_once(dirname(__FILE__) . '/security.inc');

$gallery = new GalleryStub();
include(dirname(__FILE__) . '/../../config.php');

function getCacheDirs() {
    global $gallery;
    $dirs = array();
    foreach (glob($gallery->getConfig('data.gallery.base') . '/cache/*') as $dir) {
	$dirs[] = basename($dir);
    }
    return $dirs;
}

function recursiveRmdir($dirname) {
    $results = array();
    if (!file_exists($dirname)) {
	return $results;
    }

    if (!($fd = opendir($dirname))) {
	return $results;
    }

    while (($filename = readdir($fd)) !== false) {
	if (!strcmp($filename, '.') || !strcmp($filename, '..')) {
	    continue;
	}
	$path = "$dirname/$filename";

	if (is_dir($path)) {
	    $results = array_merge($results, recursiveRmdir($path));
	} else {
	    if (!@unlink($path)) {
		if (!@is_writeable($path)) {
		    $results[] = array("error", "Permission denied removing file $path");
		} else {
		    $results[] = array("error", "Unable to remove file $path");
		}
	    }
	}
    }
    closedir($fd);

    if (!@rmdir($dirname)) {
	$results[] = array("error", "Unable to remove directory $dirname");
    }

    return $results;
}

$status = array();
if (isset($_REQUEST['clear'])) {
    if (isset($_REQUEST['dirs'])) {
	foreach ($_REQUEST['dirs'] as $dir => $ignored) {
	    /* Make sure the dir is legit */
	    if (preg_match('/\W/', $dir)) {
		$status[] = array("error", "Ignoring illegal dir: $dir");
		continue;
	    }

	    $path = $gallery->getConfig('data.gallery.base') . '/cache/' . $dir;
	    $status[] = array("info", "Deleting dir: $path");
	    $status = array_merge($status, recursiveRmdir($path));
	}
    }
}
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Cache Maintenance</title>
    <link rel="stylesheet" type="text/css" href="tools.css"/>
  </head>

  <body>
      <H1> Cache Maintenance </H1>

      <h2>
        Gallery caches data on disk to increase performance.
        Sometimes these caches get out of date and need to be deleted.
        Anything in the cache can be deleted safely, because Gallery
        will recreate anything that it needs.  However, some things
        are more expensive to recreate than others so you might not
        want to delete everything.  If you're in doubt, accept the
        defaults below.
      </h2>

      <?php if (!empty($status)): ?>
      <div class="status">
        <?php foreach ($status as $line): ?>
        <span class="line_<?php print $line[0]?>">
          <?php print $line[1] ?>
        </span>
        <?php endforeach; ?>
      </div>
      <?php endif; ?>

      <form>
        <?php $dirs = getCacheDirs(); ?>
        <div class="box">
          <?php foreach ($dirs as $dir): ?>
          <div>
            <input type="checkbox" name="dirs[<?php print $dir ?>]"
                   <?php if ($dir != 'derivative'): ?> checked="checked" <?php endif; ?> />
            g2data/cache/<?php print $dir?>
            <?php if ($dir == 'derivative'): ?>
              <span class="subtext"> (Contains thumbnails and resizes; expensive to rebuild) </span>
            <?php endif; ?>
          </div>
          <?php endforeach; ?>
          <div>
            <input type="submit" name="clear" value="Clear Cache"/>
          </div>
        </div>
      </form>
  </body>
</html>
