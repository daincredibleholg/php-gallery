<?php
/*
 * Gallery - a web based photo album viewer and editor
 * Copyright (C) 2000-2003 Bharat Mediratta
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
 *
 * $Id$
 */
?>
<?php
// Hack prevention.
if (!empty($HTTP_GET_VARS["GALLERY_BASEDIR"]) ||
		!empty($HTTP_POST_VARS["GALLERY_BASEDIR"]) ||
		!empty($HTTP_COOKIE_VARS["GALLERY_BASEDIR"])) {
	print _("Security violation") ."\n";
	exit;
}
?>
<?php if (!isset($GALLERY_BASEDIR)) {
    $GALLERY_BASEDIR = './';
}
require($GALLERY_BASEDIR . 'init.php'); ?>

<?php
// Security check.
if (!isset($uname)) {
	$uname="";
}
$uname = removeTags($uname);
?>

<html>
<head>
	<title><?php echo sprintf(_("Login to %s"), $gallery->app->galleryTitle) ?></title>
  <?php echo getStyleSheetLink() ?>
</head>
<body dir="<?php echo $gallery->direction ?>">

<center>
<span class="popuphead"><?php echo sprintf(_("Login to %s"), $gallery->app->galleryTitle) ?></span>
<br>
<br>
<?php

if (isset($uname) && isset($gallerypassword)) {
       	$tmpUser = $gallery->userDB->getUserByUsername($uname);
       	if ($tmpUser && $tmpUser->isCorrectPassword($gallerypassword)) {
	       	$gallery->session->username = $uname;
	       	if ($tmpUser->getDefaultLanguage() != "") {
		       	$gallery->session->language = 
				$tmpUser->getDefaultLanguage();
	       	}
	       	if (!$gallery->session->offline) {
		       	dismissAndReload();
	       	} else {
		       	print "<span class=error>SUCCEEDED</span><p>";
		       	return;
	       	}
       	} else {
	       	$invalid = 1;
	       	$gallerypassword = null;
       	}
}
else if (isset($forgot)) {
       	$tmpUser = $gallery->userDB->getUserByUsername($uname);
       	if ($tmpUser) {


	       	if (validate_email($tmpUser->getEmail())) {
		       	if (gallery_mail( $tmpUser->email,
				_("New password request"),
			       	sprintf(_("You requested a new password from Gallery '%s' on %s. You can create a password by visiting the link below. If you didn't request a password, please ignore this mail. "), $gallery->app->galleryTitle, $gallery->app->photoAlbumURL) . "\n\n" .
			      	sprintf(_("Click to reset your password: %s"),
				       	newPasswordHash($tmpUser)) . "\n",
				sprintf(_("New password request %s"), $uname))) {
			       	echo sprintf(_("An email has been sent to %s.  Follow the instructions to change your password.  If you do not receive this email, please contact the Gallery administrators."),$tmpUser->email)  ?> 
					<br><br>
			       	<form> <input type="button" value="<?php echo _("Dismiss") ?>" onclick='parent.close()'> </form>
				<?php
		       	} else {
			       	echo gallery_error(sprintf(_("Email could not be sent.  Please contact %s adminstrators for a new password"),$gallery->app->galleryTitle ));
		       	}
		       	return;
	       	} else {
		       	echo gallery_error(sprintf(_("There is no valid email for this account.  Please contact %s adminstrators for a new password"),$gallery->app->galleryTitle ));
	       	}
       	} else
	       	echo gallery_error(_("Not a valid username"));
} 
?>

<?php echo makeFormIntro("login.php", array("name" => "login_form", "method" => "POST")); ?>
<?php echo _("Logging in gives you greater permission to view, create, modify and delete albums.") ?>
<p>
<table>
<?php if (isset($invalid)) { ?>
 <tr>
  <td colspan=2>
   <?php echo gallery_error(_("Invalid username or password")); ?>
  </td>
 </tr>
<?php } ?>

 <tr>
  <td>
   <?php echo _("Username") ?>
  </td>
  <td>
   <input type=text name="uname" value=<?php echo $uname ?>>
  </td>
 </tr>

<?php if (isset($error) && !isset($uname)) { ?>
 <tr>
  <td colspan=2 align=center>
   <?php echo gallery_error(_("You must specify a username")); ?>
  </td>
 </tr>
<?php } ?>

 <tr>
  <td>
	<?php echo _("Password") ?>
  </td>
  <td>
   <input type=password name="gallerypassword">
  </td>
 </tr>

<?php if (isset($error) && !isset($gallerypassword)) { ?>
 <tr>
  <td colspan=2 align=center>
   <?php echo gallery_error(_("You must specify a password")); ?>
  </td>
 </tr>
<?php } ?>

</table>
<p>
<input type="submit" name="login" value="<?php echo _("Login") ?>">
<input type="button" name="cancel" value="<?php echo _("Cancel") ?>" onclick='parent.close()'>
</form>
<br><hr>
<?php echo makeFormIntro("login.php", array("name" => "forgot_form", "method" => "POST")); ?>
<span class="popuphead"><?php echo _("Forgotten your password?") ?></span>
<br>
<br>

<p>
<table>
 <tr>
  <td>
   <?php echo _("Username") ?>
  </td>
  <td>
   <input type=text name="uname" value=<?php echo $uname ?>>
  </td>
 </tr>
 </table>
 <p>
<input type=submit name="forgot" value="<?= _("Send me my password") ?>">

<script language="javascript1.2">
<!--
// position cursor in top form field
document.login_form.uname.focus();
//--> 
</script>

</body>
</html>
