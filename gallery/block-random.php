<?
/*
 * Gallery - a web based photo album viewer and editor
 * Copyright (C) 2000-2004 Bharat Mediratta
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */

/*
 * This block selects a random photo for display.  It will only display photos
 * from albums that are visible to the public.  It will not display hidden
 * photos.  
 *
 * Once a day (or whatever you set CACHE_EXPIRED to) we scan all albums and
 * create a cache file listing each public album and the number of photos it
 * contains.  For all subsequent attempts we use that cache file.  This means
 * that if you change your albums around it may take a day before this block
 * starts (or stops) displaying them.
 */

require(dirname(__FILE__) . "/init.php");

if (!empty($profile)) {
	$timer = time();
}

/* Initializing the seed */
srand ((double) microtime() * 1000000);

define('CACHE_FILE', $gallery->app->albumDir . "/block-random.dat");
define('CACHE_EXPIRED', $gallery->app->blockRandomCache);

// Check the cache file to see if it's up to date
$rebuild = 1;
if (fs_file_exists(CACHE_FILE)) {
	$stat = fs_stat(CACHE_FILE);
	$mtime = $stat[9];
	if ((time() - $mtime) < CACHE_EXPIRED) {
		$rebuild = 0;
	}
}

if ($rebuild) {
	scanAlbums();
	saveCache();
} else {
	readCache();
}

$album = chooseAlbum();

if ($album) {
	$index = choosePhoto($album);
}

if (isset($index)) {
	$id = $album->getPhotoId($index);
	echo ""
		. "<center><a href=" . makeAlbumUrl($album->fields["name"], $id) . ">"
		. $album->getThumbnailTag($index)
		. "</a></center>";

	$caption = $album->getCaption($index);
	if ($caption) {
		echo "<br><center>$caption</center>";
	}

	echo "<br><center>From: "
		."<a href=" .makeAlbumUrl($album->fields["name"]) .">"
		.$album->fields["title"]
		."</a></center>";
} else {
	print "No photo chosen.";
}

if (!empty($profile)) {
	$elapsed = time() - $timer;
	print "<br>Elapsed: $elapsed secs";
}

/*
 * --------------------------------------------------
 * Support functions
 * --------------------------------------------------
 */

function saveCache() {
	global $cache;
	safe_serialize($cache, CACHE_FILE);
}

function readCache() {
	global $cache;

	$sCache = getFile(CACHE_FILE);
	$cache = unserialize($sCache);
}

function choosePhoto($album) {
	global $cache;

	$count = $cache[$album->fields["name"]];
	if ($count == 0) {
		// Shouldn't happen
		return null;
	} else if ($count == 1) {
		$choose = 1;
	} else {
		$choose = rand(1, $count);
		$wrap = 0;
		if ($album->isHiddenRecurse($choose)) {
			$choose++;
			if ($choose > $album->numPhotos(1)) {
				$choose = 1;
				$wrap++;

				if ($wrap == 2) {
					return null;
				}
			}
		}
	}

	return $choose;
}

function chooseAlbum() {
	global $cache;

	/*
	* The odds that an album will be selected is proportional
	* to the number of (visible) items in the album.
	*/
	$total = 0;
	foreach ($cache as $name => $count) {
		if (empty($choose)) {
			$choose = $name;
		}

		$total += $count;
		if ($total != 0 && ($total == 1 || rand(1, $total) <= $count)) {
			$choose = $name;
		}
	}

	if ($choose) {
		$album = new Album();
		$album->load($choose);
		return $album;
	} else {
		return null;
	}
}

function scanAlbums() {
	global $cache;
	global $gallery;

	$cache = array();
	$everybody = $gallery->userDB->getEverybody();
	$albumDB = new AlbumDB();
	foreach ($albumDB->albumList as $tmpAlbum) {
		if ($tmpAlbum->canReadRecurse($everybody->getUid()) && !$tmpAlbum->isHiddenRecurse()) {
			$seeHidden = $everybody->canWriteToAlbum($tmpAlbum);
			$numPhotos = $tmpAlbum->numPhotos($seeHidden);
			$name = $tmpAlbum->fields["name"];
			if ($numPhotos > 0) {
				$cache[$name] = $numPhotos;
			}
		}
	}
}
?>
