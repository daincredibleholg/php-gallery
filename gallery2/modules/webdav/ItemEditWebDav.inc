<?php
/*
 * Gallery - a web based photo album viewer and editor
 * Copyright (C) 2000-2007 Bharat Mediratta
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

GalleryCoreApi::requireOnce('modules/core/ItemEdit.inc');
GalleryCoreApi::requireOnce('modules/webdav/classes/WebDavHelper.class');

/**
 * Replace items with WebDAV.  Handle WebDAV PUT requests and show instructions to mount Gallery
 * with WebDAV.
 * @package WebDav
 * @subpackage UserInterface
 * @author Jack Bates <ms419@freezone.co.uk>
 * @version $Revision: 16164 $
 */
class ItemEditWebDav extends ItemEditPlugin {

    /**
     * @see ItemEditPlugin::handleRequest
     */
    function handleRequest($form, &$item, &$preferred) {
	global $gallery;
	$platform =& $gallery->getPlatform();

	/* Accept only the PUT request method.  Others can be easily forged with HTML. */
	$requestMethod = GalleryUtilities::strToLower(
	    GalleryUtilities::getServerVar('REQUEST_METHOD'));
	if ($requestMethod != 'put') {
	    return array(GalleryCoreApi::error(ERROR_REQUEST_FORGED), null, null, null);
	}

	/* Only data items can have file content */
	if (!GalleryUtilities::isA($item, 'GalleryDataItem')) {
	    WebDavServer::setResponseStatus('403 Forbidden');
	    return array(GalleryCoreApi::error(ERROR_BAD_DATA_TYPE), null, null, null);
	}

	$path = WebDavHelper::getRequestVariable('path', true, false);
	$pathComponent = urldecode(basename($path));

	/* Check resource is not locked */
	$ret = WebDavHelper::checkLocks($path);
	if ($ret) {
	    return array($ret, null, null, null);
	}

	/* Prepare data-structure from PUT request */
	list ($ret, $webDavOptions, $stream, $mimeType) = WebDavHelper::putRequestHelper();
	if ($ret) {
	    return array($ret, null, null, null);
	}

	/* If the mime type is unknown try to get a mime type from the file name */
	list ($ret, $mimeExtensions) = GalleryCoreApi::convertMimeToExtensions($mimeType);
	if ($mimeType == 'application/octet-stream'
		|| $mimeType == 'application/unknown'
		|| empty($mimeExtensions)) {
	    $extension = GalleryUtilities::getFileExtension($pathComponent);
	    list ($ret, $mimeType) = GalleryCoreApi::convertExtensionToMime($extension);
	    if ($ret) {
		$mimeType = 'application/unknown';
	    }
	}

	list ($ret, $filePath) = $item->fetchPath();
	if ($ret) {
	    return array($ret, null, null, null);
	}

	/* Follow pattern from ItemAddWebCam */
	$tmpDir = $gallery->getConfig('data.gallery.tmp');
	$tmpFile = $platform->tempnam($tmpDir, 'webdav');

	if (!$platform->copy($filePath, $tmpFile)) {
	    return array(GalleryCoreApi::error(ERROR_PLATFORM_FAILURE), null, null, null);
	}

	if (($handle = $platform->fopen($tmpFile, 'wb')) === false) {
	    return array(GalleryCoreApi::error(ERROR_PLATFORM_FAILURE), null, null, null);
	}

	/* Format PUT response */
	$webDavOptions['new'] = false;
	$ret = WebDavHelper::putResponseHelper($webDavOptions, $handle);
	if ($ret) {
	    @$platform->unlink($tmpFile);
	    return array($ret, null, null, null);
	}

	/*
	 * The parent must be read locked at this point to make sure that it's not going to be moved
	 * around while we're copying a file to its directory
	 */
	list ($ret, $lockIds[]) = GalleryCoreApi::acquireReadLockParents($item->getId());
	if ($ret) {
	    @$platform->unlink($tmpFile);
	    return array($ret, null, null, null);
	}

	/* Write lock the item we're replacing */
	list ($ret, $lockIds[]) = GalleryCoreApi::acquireWriteLock($item->getId());
	if ($ret) {
	    @$platform->unlink($tmpFile);
	    GalleryCoreApi::releaseLocks($lockIds);
	    return array($ret, null, null, null);
	}

	/* Refresh the item in case it changed before it was locked */
	list ($ret, $item) = $item->refresh();
	if ($ret) {
	    @$platform->unlink($tmpFile);
	    GalleryCoreApi::releaseLocks($lockIds);
	    return array($ret, null, null, null);
	}

	$ret = $item->delete();
	if ($ret) {
	    @$platform->unlink($tmpFile);
	    GalleryCoreApi::releaseLocks($lockIds);
	    return array($ret, null, null, null);
	}

	list ($ret, $item) = GalleryCoreApi::addItemToAlbum(
	    $tmpFile, $pathComponent, $item->getTitle(), $item->getSummary(),
	    $item->getDescription(), $mimeType, $item->getParentId());
	@$platform->unlink($tmpFile);
	if ($ret) {
	    GalleryCoreApi::releaseLocks($lockIds);
	    return array($ret, null, null, null);
	}

	$ret = GalleryCoreApi::releaseLocks($lockIds);
	if ($ret) {
	    return array($ret, null, null, null);
	}

	/* Set WebDAV path component */
	if ($item->getPathComponent() != $pathComponent) {
	    $ret = GalleryCoreApi::addMapEntry('WebDavPathComponentMap',
		array('itemId' => $item->getId(), 'pathComponent' => $pathComponent));
	    if ($ret) {
		return array($ret, null, null);
	    }
	}

	return array(null, array(), array(), false);
    }

    /**
     * @see ItemEditPlugin::loadTemplate
     */
    function loadTemplate(&$template, &$form, $item, $thumbnail) {
	return array(null, 'modules/webdav/templates/WebDavMount.tpl', null);
    }

    /**
     * @see ItemEditPlugin::getTitle
     */
    function getTitle() {
	list ($ret, $module) = GalleryCoreApi::loadPlugin('module', 'webdav');
	if ($ret) {
	    return array($ret, null);
	}

	return array(null, $module->translate('WebDAV'));
    }
}
?>