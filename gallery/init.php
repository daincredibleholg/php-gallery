<?
/*
 * Gallery - a web based photo album viewer and editor
 * Copyright (C) 2000 Bharat Mediratta
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
<?
/* Load bootstrap code */
require('version.php');
if (file_exists('config.php')) {
	require('config.php');
}
require('util.php');

/* Make sure that Gallery is set up properly */
gallerySanityCheck();

/* Load classes and session information */
require('classes/Album.php');
require('classes/Image.php');
require('classes/AlbumItem.php');
require('classes/AlbumDB.php');
require('classes/User.php');
require('classes/EverybodyUser.php');
require('classes/NobodyUser.php');
require('classes/UserDB.php');
require('session.php');

/* Load our user database (and user object) */
$userDB = new UserDB;

/* Check to see if we have the serialization bug */
if (strcmp(get_class($userDB),"userdb")) {
	include("errors/bug_unserialization.php");
	exit;
}

if ($username) {
	$user = $userDB->getUserByUsername($username);
}

if (!$user) {
	$user = $userDB->getEverybody();
	$username = "";
}

/* Load the correct album object */
$album = new Album;
if ($albumName) {
	$album->load($albumName);
	if ($album->integrityCheck()) {
		$album->save();
	}
}
?>
