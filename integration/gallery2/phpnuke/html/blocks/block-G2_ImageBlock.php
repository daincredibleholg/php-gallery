<?php

/*
 * Gallery - a web based photo album viewer and editor
 * Copyright (C) 2000-2006 Bharat Mediratta
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
 * Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston, MA  02110-1301, USA.
 */
/**
 * Gallery 2 image block for PHPNuke.
 * @version $Revision$ $Date$
 * @author Dariush Molavi <dari@nukedgallery.net>
 */

/****************************************************************************/
/* This is your configuration section of your Gallery 2 image block.	    */
/*									    */
/* 1. Select which block you want to show from the list below:		    */
/*									    */
/* randomImage  : A random image is shown				    */
/* recentImage  : The most recent image is shown			    */
/* viewedImage  : The most popular image is shown			    */
/* randomAlbum  : The highlight from a random album is shown		    */
/* recentAlbum  : The highlight from the most recent album is shown	    */
/* viewedAlbum  : The highlight from the most popular album is shown	    */
/* dailyImage   : A new image each day					    */
/* weeklyImage  : A new image each week					    */
/* monthlyImage : A new image each month				    */
/* dailyAlbum   : A new album highlight each day			    */
/* weeklyAlbum  : A new album highlight each week			    */
/* monthlyAlbum : A new album highlight each month			    */
/*									    */
   $blockType = "randomImage";

/* 2. Select what album/image properties you want displayed, you can	    */
/*    display more than one, but separate them by |	 (the pipe symbol)  */
/*									    */
/* title   : Show the title						    */
/* views   : Show how many views the item has				    */
/* date    : Show the capture/upload date				    */
/* owner   : Show the item owner					    */
/* heading : Show the item heading ("Random Image","Daily Image", etc)	    */
/* fullSize: Show the full sized item (not a thumbnail)			    */
/* none    : Don't show anything, just the thumbnail			    */
/*									    */
   $display = "title|heading";
 
/*	3. What size image do you want displayed? If you want the default   */
/*     thumbnail, leave this empty, otherwise, enter the max pixel size.    */
/*     IF YOU SPECIFY A SIZE LARGER THAN THE DEFAULT THUMBNAIL SIZE, YOU    */  
/*     MUST ALSO ADD "fullSize" TO THE $display VARIABLE ABOVE.		    */ 
	$maxSize='';
/*									    */  
/****************************************************************************/

if (eregi("block-G2_ImageBlock.php", $_SERVER['SCRIPT_NAME'])) {
    Header("Location: index.php");
    die();
}

global $admin, $user, $cookie, $db, $prefix;

define("_G2_EMBED_PHP_FILE","embed.php");
define("_G2_CONFIGURATION_NOT_DONE","The module has not yet been configured.");

$g2result = $db->sql_query("SELECT * FROM ".$prefix."_g2config");
list($embedUri, $g2Uri, $activeUserId, $cookiepath, $showSidebar, $g2configurationDone, $embedVersion) = $db->sql_fetchrow($g2result);

if ($g2configurationDone != 1) {
   $content = _G2_CONFIGURATION_NOT_DONE;
   return;
}

preg_match("/^(.*)?(modules\/.*)/i", $g2Uri, $matches);
require_once($matches[2]._G2_EMBED_PHP_FILE);

if (is_admin($admin)) {
   $uid='admin';
}
else {
   if (is_user($user)) {
      cookiedecode($user);
      $uid=''; 
      if (is_user($user)) {
         $uid = $cookie[0];
      }
   }
}

$ret = GalleryEmbed::init(array(
   'embedUri' => $embedUri,
   'g2Uri' => $g2Uri,
   'activeUserId' => "$uid",
   'fullInit' => true));

if ($showSidebar) {
   $content = "The Gallery2 sidebar is enabled.<br>You should disable it before using this block.";
   return true;
}

list($ret, $modulestatus) = GalleryCoreApi::fetchPluginStatus('module');
if($modulestatus['imageblock']['active'] != '1') {
   $content = 'You need to install and/or activate the ImageBlock module in Gallery 2 before using this block';
   return true;
}
   

if(intval($maxSize) > 0) {
   list($ret,$html, $head) = GalleryEmbed::getImageBlock(array('blocks'=>$blockType, 'show'=>$display,'itemFrame'=>'solid','albumFrame'=>'solid','maxSize' => $maxSize));
}
else {
   list($ret,$html, $head) = GalleryEmbed::getImageBlock(array('blocks'=>$blockType, 'show'=>$display,'itemFrame'=>'solid','albumFrame'=>'solid'));
}

$block_css = "";
$block_script = "";

if (isset($head)) {
	list($title, $css, $javascript) = GalleryEmbed::parseHead($head);
	foreach($css as $stylesheet) {
	   $block_css .= $stylesheet."\n";
	}

	foreach($javascript as $script) {
	   $block_script .= $script."\n";
	}
}

$ret = GalleryEmbed::done();

if(!empty($ret)) {
   $content = "The G2 Imageblock request failed. Here's the error:<br>".$ret->getAsHtml();
}

$content = $block_css."\n".$block_script."\n<center>".$html."</center>";


?>