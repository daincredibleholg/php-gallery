<?php
/*
 * Gallery - a web based photo album viewer and editor
 * Copyright (C) 2000-2002 Bharat Mediratta
 *
 * Additional voting code added by Joan McGalliard, Copyright 2003
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
?>
<?php
// Hack prevention.
if (!empty($HTTP_GET_VARS["GALLERY_BASEDIR"]) ||
		!empty($HTTP_POST_VARS["GALLERY_BASEDIR"]) ||
		!empty($HTTP_COOKIE_VARS["GALLERY_BASEDIR"])) {
	print _("Security violation") . "\n";
	exit;
}
?>
<?php 
if (!isset($GALLERY_BASEDIR)) {
	$GALLERY_BASEDIR = './';
}

require($GALLERY_BASEDIR . "init.php"); ?>
<?php 
// Hack check
if (!$gallery->user->canReadAlbum($gallery->album)) {
	header("Location: " . makeAlbumUrl());
	return;
}

if (!$gallery->album->isLoaded()) {
	header("Location: " . makeAlbumUrl());
	return;
}



$albumName = $gallery->session->albumName;

if (!$gallery->session->viewedAlbum[$albumName]) {
	$gallery->session->viewedAlbum[$albumName] = 1;
	$gallery->album->incrementClicks();
} 

$bordercolor = $gallery->album->fields["bordercolor"];

$cols = $gallery->album->fields["cols"];
$imageCellWidth = floor(100 / $cols) . "%";
$fullWidth="100%";

$pAlbum = $gallery->album;

?>

<?php if (!$GALLERY_EMBEDDED_INSIDE) { ?>
<html> 
<head>
  <title><?php echo $gallery->app->galleryTitle ?> :: <?php echo $gallery->album->fields["title"] . "::" . _("Poll Results") ?></title>
  <?php echo getStyleSheetLink() ?>
  <style type="text/css">
<?php
// the link colors have to be done here to override the style sheet 
if ($gallery->album->fields["linkcolor"]) {
?>
    A:link, A:visited, A:active
      { color: <?php echo $gallery->album->fields[linkcolor] ?>; }
    A:hover
      { color: #ff6600; }
<?php }
if ($gallery->album->fields["bgcolor"]) {
	echo "BODY { background-color:".$gallery->album->fields[bgcolor]."; }";
}
if ($gallery->album->fields["background"]) {
	echo "BODY { background-image:url(".$gallery->album->fields[background]."); } ";
}
if ($gallery->album->fields["textcolor"]) {
	echo "BODY, TD {color:".$gallery->album->fields[textcolor]."; }";
	echo ".head {color:".$gallery->album->fields[textcolor]."; }";
	echo ".headbox {background-color:".$gallery->album->fields[bgcolor]."; }";
}
?>
  </style>
</head>

<body> 
<?php } 

includeHtmlWrap("album.header");
$breadcrumb["top"] = true;
$breadcrumb["bordercolor"] = $bordercolor;
$breadcrumb["text"][] = sprintf(_("Return to  %s"), 
		"<a href=\"" .  makeAlbumUrl($gallery->session->albumName) .
      		"\">" . $pAlbum->fields['title'] . "</a>");

includeLayout('breadcrumb.inc');

$navigator["page"] = 1;
$navigator["pageVar"] = "page";
$navigator["maxPages"] = 1;
$navigator["fullWidth"] = $fullWidth;
$navigator["url"] = makeAlbumUrl($gallery->session->albumName);
$navigator["spread"] = 5;
$navigator["bordercolor"] = $bordercolor;
includeLayout('navigator.inc');

?>


<!-- image grid table -->
<br>
<?php
	$num_rows=$gallery->album->numPhotos($gallery->user->canWriteToAlbum($gallery->album));
	list($buf, $results)=showResultsGraph($num_rows);
	$ranks=array_keys($results);
	print $buf;
		?>
			<p><span class=title>
			<?php echo _("Results Breakdown") ?>
			</span>
			<table width=<?php print $fullWidth?> border=0 cellspacing=0 cellpadding=7>
			<?
		
			$rowStart = 0;
			$i = 0;
			$numPhotos = sizeof($ranks);
		
			while ($i < $numPhotos) {
				/* Do the inline_albumthumb header row */
				echo("<tr>");
				$i = $rowStart;
				$j = 1;
		
				while ($j <= $cols && $i < $numPhotos) {
					echo("<td>");

					$index=$gallery->album->getIndexByVotingId($ranks[$i]);
					if ($index < 0) {
						$i++;
						continue;
					}
					$albumName=$gallery->album->isAlbumName($index);
					if ($albumName) {
						$album=$gallery->album->getSubAlbum($index);
						print sprintf(_("Album: %s"),$album->fields['title'])."<Br>";
					} else {
						print $gallery->album->getCaption($index)."<br>";
					}

					print showResults($ranks[$i]);
					echo("</td>");
					$j++; 
					$i++;
				}
				echo("</tr>");
		
				$rowCount++;
				$rowStart = $i;
			}
		?>
		
		</table>
		
	<?
	includeHtmlWrap("album.footer");
?>

<?php if (!$GALLERY_EMBEDDED_INSIDE) { ?>
</body>
</html>
<?php } ?>
