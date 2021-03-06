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
 * Gallery 2 integration for phpBB3.
 * @version $Revision$ $Date$
 * @author Scott Gregory <jettyrat@jettyfishing.com>
 */

if (empty($lang) || !is_array($lang))
{
	$lang = array();
}

$lang = array_merge($lang, array(
	'ACP_GALLERY2_INTEGRATION'		=> 'Gallery2 Integration',

	// unmap
	'GALLERY2_UNMAP_TITLE'			=> 'Un-Synchronize Users',
	'GALLERY2_CONFIRM_EXPLAIN1'		=> 'This will remove all groups, admins, guests and users, including all items belonging to these users, that have an external id mapping in Gallery 2. All Gallery 2 albums and photos belonging to these users will be deleted and cannot be undone.',
	'GALLERY2_CONFIRM_EXPLAIN2'		=> 'The admin defined by activeAdminId will remian as an admin in Gallery 2, but will be removed from the external id map.',
	'GALLERY2_CONFIRM_EXPLAIN3'		=> 'Are you sure you wish to proceed?',
	'GALLERY2_UNMAP_G_PROCESSED'	=> '%u group(s) deleted and removed from Gallery 2 external id map.',
	'GALLERY2_UNMAP_U_PROCESSED'	=> '%u user(s) deleted and removed from Gallery 2 external id map.',
	'GALLERY2_UNMAP_U_UNMAPPED'		=> '%u user(s) removed from Gallery 2 external id map.',

	// export
	'GALLERY2_EXPORT_TITLE'			=> 'Export Results',
	'GALLERY2_EXPORT_ADDTOGROUP'	=> 'failed adding %1$s to %2$s',
	'GALLERY2_EXPORT_G_PROCESSED'	=> '%u group(s) processed for import to Gallery 2 from phpBB.',
	'GALLERY2_EXPORT_G_EXISTING'	=> '%u group(s) already mapped to Gallery 2.',
	'GALLERY2_EXPORT_G_IMPORTED'	=> '%u group(s) succeeded import to Gallery 2 from phpBB.',
	'GALLERY2_EXPORT_G_FAILED1'		=> '%u group(s) failed mapping to Gallery 2.',
	'GALLERY2_EXPORT_G_FAILED2'		=> 'The import of the following phpBB groups failed:',
	'GALLERY2_EXPORT_U_PROCESSED'	=> '%u user(s) processed for import to Gallery 2 from phpBB.',
	'GALLERY2_EXPORT_U_NONACTIVE'	=> '%u nonactive user(s) not mapped to Gallery 2.',
	'GALLERY2_EXPORT_U_EXISTING'	=> '%u user(s) already mapped to Gallery 2.',
	'GALLERY2_EXPORT_U_GUEST'		=> '%u guest user(s) mapped to Gallery 2.',
	'GALLERY2_EXPORT_U_ADMIN'		=> '%u admin user(s) mapped to Gallery 2.',
	'GALLERY2_EXPORT_U_IMPORTED'	=> '%u user(s) succeeded import to Gallery 2 from phpBB.',
	'GALLERY2_EXPORT_U_FAILED1'		=> '%u user(s) failed mapping to Gallery 2.',
	'GALLERY2_EXPORT_U_FAILED2'		=> 'The import of the following phpBB2 users failed:',
	'GALLERY2_EXPORT_REASON1'		=> 'The most common reasons for failed imports are:',
	'GALLERY2_EXPORT_REASON2'		=> 'Duplicate phpBB usernames',
	'GALLERY2_EXPORT_REASON3'		=> 'A phpBB username of "guest"',
	'GALLERY2_EXPORT_REASON4'		=> 'A phpBB username consisting of only numbers',
	'GALLERY2_EXPORT_REASON5'		=> 'Check the failed user_ids and re-run the export.',
	'GALLERY2_EXPORT_CONTINUE'		=> 'Continue',
	'GALLERY2_EXPORT_PROCESSED'		=> 'users processed',
	'GALLERY2_EXPORT_USERS'			=> 'Exporting Users',

	// options
	'GALLERY2_ADMIN_TITLE'			=> 'Administration Options',
	'GALLERY2_OPTIONS_CONFIG'		=> 'Configure Settings:',
	'GALLERY2_CONFIG_EXPLAIN'		=> 'Integration configuration settings.',
	'GALLERY2_OPTIONS_LINKS'		=> 'Link Settings:',
	'GALLERY2_LINKS_EXPLAIN'		=> 'Configure Gallery 2 link settings.',
	'GALLERY2_OPTIONS_SYNC'			=> 'Synchronize Users:',
	'GALLERY2_SYNC_EXPLAIN'			=> 'Synchronize users between Gallery2 and phpBB.',
	'GALLERY2_OPTIONS_CONFIRM'		=> 'Un-Synchronize Users:',
	'GALLERY2_CONFIRM_EXPLAIN'		=> 'Un-Synchronize users between Gallery 2 and phpBB.',
	'GALLERY2_OPTIONS_RESULTS'		=> 'Latest Export Results:',
	'GALLERY2_RESULTS_EXPLAIN'		=> 'View the latest export results.',
	'GALLERY2_VERSION_TITLE'		=> 'Integration Version Information',

	// sync
	'GALLERY2_SYNC_TITLE'			=> 'Synchronize Users',
	'GALLERY2_SYNC_EXISTING'		=> 'Existing Gallery Users',
	'GALLERY2_SYNC_NOW'				=> 'Export Users Now',
	'GALLERY2_SYNC_LATER'			=> 'Export User At Gallery 2 Access',
	'GALLERY2_SYNC_BUTTON'			=> 'Export',
	'GALLERY2_SYNC_EXPLAIN1'		=> 'This will export your current phpBB users to Gallery 2. Note that for large numbers of users, this may take some time.',
	'GALLERY2_SYNC_EXPLAIN2'		=> 'You may choose if you want to export all the current phpBB users to Gallery 2 now, or have each user exported the first time they access Gallery 2. The latter option is the fastest and easiest if you have a large number of users.',
	'GALLERY2_SYNC_EXPLAIN3'		=> 'If there are any users listed in the table below, it means they exist in the Gallery 2 database, but not in the phpBB database. It is recommended these users either be imported to phpBB or deleted from Gallery 2.',
	'GALLERY2_SYNC_EXPLAIN4'		=> 'Note that users imported to phpBB will not have a password due to the fact that Gallery 2 uses a different password storage scheme than phpBB. The first time these imported users login to phpBB, they will have to change their password from blank to their desired password for the synchronization to be complete.',
	'GALLERY2_SYNC_EXPLAIN5'		=> 'If the users are left as is, these users will not be synchronized with phpBB and you may experience errors later on if you try to add them to phpBB.',
	'GALLERY2_SYNC_EXPLAIN6'		=> 'If you choose to delete the users and there are already items existing for them (ie, photo albums), you can choose to delete the items along with the user, or keep them. If the items are kept, they will be re-mapped to the first admin that Gallery 2 finds.',
	'GALLERY2_SYNC_EXPLAIN7'		=> 'In any case the sychronization must be run at least once so that groups, guest and admin accounts can be properly mapped.',
	'GALLERY2_SYNC_ACTION'			=> 'Action',
	'GALLERY2_SYNC_USER'			=> 'G2 User',
	'GALLERY2_SYNC_USERID'			=> 'G2 ID',
	'GALLERY2_SYNC_GROUPS'			=> 'G2 Groups',
	'GALLERY2_SYNC_IMPORT'			=> 'Import To<br />PHPBB DB',
	'GALLERY2_SYNC_DELETEALL'		=> 'Delete User,<br />Delete Items',
	'GALLERY2_SYNC_DELETE'			=> 'Delete User,<br />Keep Items',
	'GALLERY2_SYNC_LEAVE'			=> 'Leave<br />As Is',

	// links
	'GALLERY2_LINKS_TITLE'			=> 'Gallery Link Settings',
	'GALLERY2_ALLLINKS_TITLE'		=> 'Gallery All Link Settings',
	'GALLERY2_LINKS_LINK'			=> 'Gallery profile links:',
	'GALLERY2_LINKS_EXPLAIN1'		=> 'This setting determines whether Gallery 2 links are allowed in the users profiles and posted messages.',
	'GALLERY2_LINKS_ALLLINKS'		=> 'Gallery show all item links:',
	'GALLERY2_LINKS_EXPLAIN2'		=> 'This setting determines whether all Gallery 2 item links are shown in the users profile.',
	'GALLERY2_LINKS_SHOWALBUMS'		=> 'Gallery show only album item links:',
	'GALLERY2_LINKS_EXPLAIN3'		=> 'This setting determines whether only Gallery 2 album item links are shown or Gallery 2 photo items are shown.',
	'GALLERY2_LINKS_LIMITLINKS'		=> 'Gallery show all item links limit:',
	'GALLERY2_LINKS_EXPLAIN4'		=> 'This setting limits the number of Gallery 2 item links that are allowed in the users profile.',
	'GALLERY2_LINKS_MESSAGE'		=> 'Gallery link settings saved successfully!',

	// config
	'GALLERY2_CONFIG_TITLE'			=> 'Configuration Settings',
	'GALLERY2_G2URI'				=> 'URL path to the gallery2 directory:',
	'GALLERY2_CONFIG_EXPLAIN1'		=> 'This value depends on your particular installation and you must ensure it is entered correctly. Proper examples are http://example.com/gallery2/ or just /gallery2/',
	'GALLERY2_EMBEDURI'				=> 'URL path to gallery2.php:',
	'GALLERY2_CONFIG_EXPLAIN2'		=> 'This value has been automatically detected and should be correct, however, you should double check it. Proper examples are http://example.com/phpbb/gallery2.php or just /phpbb/gallery2.php',
	'GALLERY2_FULLPATH'				=> 'Full file path to embed.php:',
	'GALLERY2_CONFIG_EXPLAIN3'		=> 'This value will be automatically discovered by the integration package when you hit submit. Leave it blank unless the automatic discovery fails on your host. A proper example would be /full/path/to/gallery2/embed.php',
	'GALLERY2_ACTIVEADMINID'		=> 'Active Admin ID:',
	'GALLERY2_CONFIG_EXPLAIN4'		=> 'This value is automatically generated and managed by the integration package. Do not change it unless you are certain you know what you are doing!',

	// checkConfig
	'GALLERY2_SETTINGS_PASSED'		=> 'Gallery integration settings and version checks passed.',
	'GALLERY2_SETTINGS_WARNING'		=> 'Gallery integration settings and version checks passed, but GalleryEmbed module is newer and may be incompatible.<br /> Required module version %s.%s - installed module version is %s.%s',
	'GALLERY2_SETTINGS_FAILED'		=> 'Gallery version check failed. Currently this integration is compatible with Gallery version %s and up,<br />using GalleryEmbed module version %s.%s - installed module version is %s.%s',
	'GALLERY_OLDER_VERSION'			=> 'Gallery version check failed. Currently this integration is compatible with Gallery version %s or higher.',

	// options errors
	'GALLERY2_URL_FAILED'			=> 'Could not open version file for input from %s.',
	'GALLERY2_TO_DATE'				=> '<p style="color: green;">You have the most current integration package.</p>',
	'GALLERY2_NOT_TO_DATE'			=> '<p style="color: red;">Your integration package is <b>not</b> up to date. Latest version available is <b>%s</b></p>',
	'GALLERY2_VIEW_CHANGES'			=> '<p>To see what has changed, read the ChangeLog here: <a href="%1$s" target="_blank">%1$s</a><br />You can download the latest integration package from: <a href="%2$s" target="_blank">%2$s</a></p>',

	// config errors
	'GALLERY2_CONFIG_ERROR'			=> 'One or more fields are blank. Please make sure required fields are filled in and correct.',
	'GALLERY2_SAVE_ERROR'			=> 'Configuration data successfully saved, but errors were encountered.',
	'GALLERY2_SAVE_OK'				=> 'Configuration data successfully saved.',

	// sql errors
	'INSERT_QUERY_FAILED'			=> 'Could not insert data into ' . GALLERY2_TABLE . '.',
	'OBTAIN_SETTINGS_FAILED'		=> 'Could not obtain config settings from ' . GALLERY2_TABLE . '.',
	'FETCH_GROUPDATA_FAILED'		=> 'Could not obtain group data from ' . GROUPS_TABLE . '.',
	'INSERT_USERGROUPDATA_FAILED'	=> 'Could not insert data into ' . USER_GROUP_TABLE . '.',
	'INSERT_GROUPDATA_FAILED'		=> 'Could not insert data into ' . GROUPS_TABLE . '.',
	'INSERT_USERDATA_FAILED'		=> 'Could not insert data into ' . USERS_TABLE . '.',
	'FETCH_USERINFO_FAILED'			=> 'Could not obtain user information from ' . USERS_TABLE . '.',
	'FETCH_USERGROUPDATA_FAILED'	=> 'Could not obtain user/group information from ' . GROUPS_TABLE . ' and/or ' . USER_GROUP_TABLE . '.',
	'UPDATE_ACTIVEADMINID_FAILED'	=> 'Could not update activeAdminId in ' . GALLERY2_TABLE . '.',
	'UPDATE_EXPORTDATA_FAILED'		=> 'Could not update exportData in ' . GALLERY2_TABLE . '.',
	'FETCH_EXPORTDATA_FAILED'		=> 'Could not obtain exportData from ' . GALLERY2_TABLE . '.',
	'DB_FATAL_ERROR'				=> 'Fatal Error: Could not access db for transaction.',

	// g2 errors
	'G2_ERROR'						=> ' Here is the error message from G2:<br />',
	'G2_INIT_FAILED'				=> 'G2 init failed.',
	'G2_TIME_LIMIT'					=> 'G2 did not guarantee a time limit of %s.',
	'G2_TRANSACTION_FAILED'			=> 'Failed to complete transaction.',
	'G2_FETCHUSERNAMES_FAILED'		=> 'fetchUserNames failed.',
	'G2_FETCHGROUPSFORUSER_FAILED'	=> 'fetchGroupsForUser failed for %s.',
	'G2_ADMINPARAMETER_FAILED'		=> 'getPluginParameter id.adminGroup failed.',
	'G2_GROUPPARAMETER_FAILED'		=> 'getPluginParameter id.allUserGroup failed.',
	'G2_EVERYBODYPARAMETER_FAILED'	=> 'getPluginParameter id.everybodyGroup failed.',
	'G2_LOADENTITIESBYID_FAILED'	=> 'loadEntitiesById failed for %s.',
	'G2_FETCHUSERSFORGROUP_FAILED'	=> 'fetchUsersForGroup failed for %s.',
	'G2_RETURNADMINS_FAILED'		=> 'No adminUsers were returned from fetchUsersForGroup %s.',
	'G2_DELETEADMIN_FAILED'			=> 'The only G2 admin cannot be deleted.',
	'G2_DELETEUSERITEMS_FAILED'		=> 'deleteUserItems failed for %s.',
	'G2_REMAPOWNERID_FAILED'		=> 'remapOwnerId %1$s, %2$s failed.',
	'G2_DELETEENTITYBYID_FAILED'	=> 'deleteEntityById failed for %s.',
	'G2_FETCHGROUPINFO_FAILED'		=> 'Unable to fetch group information from the G2 group table.',
	'G2_GETEXTERNALIDMAP_FAILED'	=> 'getExternalIdMap failed.',
	'G2_FETCHUSERBYUSERNAME_FAILED' => 'fetchUserByUserName failed for %s.',
	'G2_ISEXTERNALIDMAPPED_FAILED'	=> 'isExternalIdMapped failed for %s.',
	'G2_ADDEXTERNALMAPENTRY_FAILED' => 'addExternalMapEntry failed for %s.',
	'G2_ADDUSERTOGROUP_FAILED'		=> 'addUserToGroup %1$s failed for %2$s.',
	'G2_AUTHADMIN_FAILED'			=> 'Active admin is not valid. Gallery 2 appears not to be integrated properly. Please run the user sychronization at least once.',
	'G2_INITADMIN_FAILED'			=> 'initAdmin failed.',
	'G2_INITUSER_FAILED'			=> 'init failed for %s.',
	'G2_CREATEUSER_FAILED'			=> 'createUser failed for %s.',
	'G2_UPDATEUSER_FAILED'			=> 'updateUser failed for %s.',
	'G2_DELETEUSER_FAILED'			=> 'deleteUser failed for %s.',
	'G2_REMOVEUSERFROMGROUP_FAILED'	=> 'removeUserFromGroup %1$s failed for %2$s.',
	'G2_CREATEGROUP_FAILED'			=> 'createGroup failed for %s.',
	'G2_UPDATEGROUP_FAILED'			=> 'updateGroup failed for %s.',
	'G2_UPDATEMAPENTRY_FAILED'		=> 'updateMapEntry failed for %s.',
	'G2_DELETEGROUP_FAILED'			=> 'deleteGroup failed for %s.',
	'G2_REMOVEMAPENTRY_FAILED'		=> 'removeMapEntry failed for %s.',
));

?>
