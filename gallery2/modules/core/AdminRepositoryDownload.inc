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

GalleryCoreApi::requireOnce('modules/core/classes/GalleryRepository.class');
GalleryCoreApi::requireOnce('modules/core/classes/GalleryRepositoryUtilities.class');

/**
 * This controller will handle an administration request for a module
 * @package GalleryCore
 * @subpackage UserInterface
 * @author Jozef Selesi <selesi at gmail dot com>
 * @version $Revision$ $Date$
 */
class AdminRepositoryDownloadController extends GalleryController {

    /**
     * @see GalleryController::handleRequest
     */
    function handleRequest($form) {
	global $gallery;

	$ret = GalleryCoreApi::assertUserIsSiteAdministrator();
	if ($ret) {
	    return array($ret, null);
	}

	$status = $error = array();

	if (!isset($form['pluginType']) || !isset($form['pluginId'])) {
	    return array(GalleryCoreApi::error(
			     ERROR_BAD_PARAMETER, __FILE__, __LINE__,
			     "Plugin type or ID not set [$pluginType] [$pluginId]"),
			 null);
	}
	$pluginType = $form['pluginType'];
	$pluginId = $form['pluginId'];

	if (!preg_match('/theme|module/', $pluginType)) {
	    return array(GalleryCoreApi::error(ERROR_BAD_PARAMETER, __FILE__, __LINE__,
					       "Invalid plugin type [$pluginType]"),
			 null);
	}

	/* Handle cancel action. */
	if (isset($form['action']['cancel'])) {
	    $redirect['view'] = 'core.SiteAdmin';
	    $redirect['subView'] = 'core.AdminRepository';
	} else if (isset($form['action']['download'])) {
	    /* Create package list. */
	    $installPackages = $deleteLanguages = array();

	    $utils = new GalleryRepositoryUtilities();
	    list ($ret, $pluginPackages) = $utils->getPluginPackages($pluginType, $pluginId);
	    if ($ret) {
		return array($ret, null);
	    }

	    $baseSource = '';
	    if (!empty($form['base'])) {
		list($baseSource, $baseNewBuild) = explode(':', $form['base']);
		if (empty($pluginPackages['base']['build']) ||
		    $pluginPackages['base']['build'] != $baseNewBuild) {
		    $installPackages[$baseSource][$pluginType][$pluginId]['base'] = 1;
		}
	    }

	    $selected = array();
	    if (isset($form['languages'])) {
		foreach ($form['languages'] as $language) {
		    list ($langSource, $langCode, $langNewVersion) = explode(':', $language);
		    $langCode = 'lang-' . $langCode;
		    if ($langSource == $baseSource &&
			(empty($pluginPackages[$langCode]['build']) ||
			 $pluginPackages[$langCode]['build'] != $langNewVersion)) {
			$installPackages[$langSource][$pluginType][$pluginId][$langCode] = 1;
		    }
		    $selected[$pluginType][$pluginId][$langCode] = 1;
		}
	    }

	    if (isset($form['languagesAvailable'])) {
		foreach ($form['languagesAvailable'] as $language) {
		    list ($langSource, $langCode) = explode(':', $language);
		    if ($langSource == $baseSource &&
		        empty($selected[$pluginType][$pluginId]['lang-' . $langCode])) {
			$deleteLanguages[$pluginType][$pluginId][] = $langCode;
		    }
		}
	    }

	    /* Show error message if no packages have been selected for download. */
	    if (empty($installPackages) && empty($deleteLanguages)) {
		$delegate['view'] = 'core.SiteAdmin';
		$delegate['subView'] = 'core.AdminRepositoryDownload';
		$error[] = 'form[error][nothingSelected]';

		/* TODO: Do we need to put these vars back into the request? */
		GalleryUtilities::putRequestVariable('pluginId', $pluginId);
		GalleryUtilities::putRequestVariable('pluginType', $pluginType);
	    } else {
		list ($ret, $repositories) = GalleryRepository::getRepositories();
		if ($ret) {
		    return array(null, $ret);
		}

		$templateAdapter =& $gallery->getTemplateAdapter();
		$templateAdapter->registerTrailerCallback(
		    array($this, 'performDownloadAndInstallation'),
		    array($installPackages, $deleteLanguages, $repositories));
		$delegate['view'] = 'core.ProgressBar';
	    }
	}

	if (!empty($redirect)) {
	    $results['redirect'] = $redirect;
	} else {
	    if (empty($delegate)) {
		$results['delegate']['view'] = 'core.SiteAdmin';
		$results['delegate']['subView'] = 'core.AdminRepository';
	    } else {
		$results['delegate'] = $delegate;
	    }
	}
	$results['status'] = $status;
	$results['error'] = $error;

	return array(null, $results);
    }

    /**
     * Download specified packages to the local repository cache and perform installation.
     *
     * TODO: Show a summary page (or at least a link to it) which contains details about
     * the exact tasks that were performed and any errors that were encountered.
     *
     * @param array $installPackages packages to install
     * @param array $deleteLanguages language packages to delete
     * @param array an array of object GalleryRepository
     * @return object GalleryStatus a status code
     */
    function performDownloadAndInstallation($installPackages, $deleteLanguages, $repositories) {
	global $gallery;
	$session =& $gallery->getSession();
	$platform =& $gallery->getPlatform();
	$templateAdapter =& $gallery->getTemplateAdapter();

	list ($ret, $module) = GalleryCoreApi::loadPlugin('module', 'core');
	if ($ret) {
	    return $ret;
	}
	$titleText = $module->translate('Updating Packages');
	$templateAdapter->updateProgressBar($titleText, '', 0);

	/* Create download file list. */
	$sourcedFiles = array();
	foreach ($installPackages as $source => $packages) {
	    if (!isset($repositories[$source])) {
		continue;
	    }

	    list ($ret, $tmp) = $repositories[$source]->getDownloadFileList($packages);
	    if ($ret) {
		return $ret;
	    }
	    $sourcedFiles[$source] = empty($sourcedFiles[$source])
		? $tmp
		: array_merge($sourcedFiles[$source], $tmp);
	}

	$totalActions = 0;
	foreach ($sourcedFiles as $source => $files) {
	    foreach ($files as $pluginType => $plugins) {
		foreach ($plugins as $pluginId => $pluginDownloadData) {
		    $totalActions += count($pluginDownloadData['files']);
		}
	    }
	}
	foreach ($deleteLanguages as $pluginType => $plugins) {
	    foreach ($plugins as $pluginId => $languages) {
		$totalActions += count($languages);
	    }
	}

	$status = array();

	/* Download files. */
	$currentAction = 0;
	foreach ($sourcedFiles as $source => $files) {
	    $repository = $repositories[$source];

	    foreach ($files as $pluginType => $plugins) {
		foreach ($plugins as $pluginId => $pluginDownloadData) {
		    $packageUrls = $pluginDownloadData['files'];
		    $pluginName = $pluginDownloadData['name'];

		    /* Set up progress bar variables. */
		    $currentAction++;

		    foreach ($packageUrls as $packageName => $relativePackageUrl) {
			$templateAdapter->updateProgressBar(
			    $titleText,
			    sprintf($module->translate('Downloading %s'), $pluginName),
			    $currentAction / $totalActions);

			/* Download and unpack package. */
			list ($ret, $pluginDescriptor) = $repository->downloadAndUnpack(
			    $pluginType, $pluginId, $packageName, $relativePackageUrl);
			if ($ret) {
			    return $ret;
			}

			if (!empty($pluginDescriptor)) {
			    /* Save current package's descriptor. */
			    $descriptor = $pluginDescriptor;
			} else {
			    /* Sanity check. */
			    if (empty($descriptor)) {
				return GalleryCoreApi::error(ERROR_STORAGE_FAILURE,
					__FILE__, __LINE__, 'Descriptor must not be empty.');
			    }

			    /* Check the unpacked files' integrity. */
			    $ret = $repository->verifyPackageIntegrity($packageName, $descriptor);
			    if ($ret) {
				return $ret;
			    }

			    /* Update plugin package map. */
			    list ($ret, $version, $build) = $repository->getPackageVersionAndBuild(
				$pluginType, $pluginId, $packageName);
			    if ($ret) {
				return $ret;
			    }
			    $ret = $repository->updatePackageMetaData(
				$pluginType, $pluginId, $packageName, $version, $build, 0);
			    if ($ret) {
				return $ret;
			    }
			}
		    }

		    /*
		     * Our plugin status caches are no longer valid because we've just installed
		     * some new code.  Load the status and ignore the cache which forces a cache
		     * update.  @todo: add a real cache flushing method in the api instead
		     */
		    list ($ret, $ignored) = GalleryCoreApi::fetchPluginStatus($pluginType, true);
		    if ($ret) {
			return $ret;
		    }

		    /*********************************************************
		     * This next block is duplicated in PluginCallback.
		     * @todo: Refactor this code duplication away
		     */

		    $templateAdapter->updateProgressBar(
			$titleText, sprintf($module->translate('Activating %s'), $pluginName),
			$currentAction / $totalActions);

		    list ($ret, $plugin) = GalleryCoreApi::loadPlugin($pluginType, $pluginId, true);
		    if ($ret) {
			return $ret;
		    }

		    $ret = $plugin->installOrUpgrade();
		    if ($ret) {
			return $ret;
		    }

		    if ($pluginType == 'module') {
			list ($ret, $autoConfigured) = $plugin->autoConfigure();
			if ($ret) {
			    return $ret;
			}
		    } else {
			/* Themes don't need this step */
			$autoConfigured = true;
		    }

		    if ($autoConfigured) {
			list ($ret, $redirect) = $plugin->activate();
			if ($ret) {
			    return $ret;
			}
			/* Ignore the redirect */
		    }

		    $status['updated'][] = $pluginName;

		    /*********************************************************/
		}
	    }
	}

	/* Delete old language packs */
	$deleteText = $module->translate('Deleting Language Packs');
	$g2base = dirname(dirname(dirname(__FILE__)));
	$status['languagePacksDeleted'] = 0;
	foreach ($deleteLanguages as $pluginType => $plugins) {
	    foreach ($plugins as $pluginId => $languages) {
		foreach ($languages as $language) {
		    $currentAction++;
		    $templateAdapter->updateProgressBar(
			$titleText, $deleteText, $currentAction / $totalActions);

		    $actual = 0;
		    $dir = "$g2base/${pluginType}s/$pluginId/locale/$language";
		    if ($platform->is_dir($dir) && $platform->is_writeable($dir)) {
			$platform->recursiveRmdir($dir);
			$actual++;
		    }
		    $file = "$g2base/${pluginType}s/$pluginId/po/$language.po";
		    if ($platform->is_file($file) && $platform->is_writeable($file)) {
			$platform->unlink($file);
			$actual++;
		    }

		    $ret = GalleryCoreApi::removeMapEntry(
			'GalleryPluginPackageMap',
			array('pluginType' => $pluginType,
			      'pluginId' => $pluginId,
			      'packageName' => 'lang-' . $language));
		    if ($ret) {
			return $ret;
		    }

		    if ($actual) {
			$status['languagePacksDeleted']++;
		    }
		}
	    }
	}

	/* Update progress bar. */
	$templateAdapter->updateProgressBar($titleText, $module->translate('Update complete.'), 1);

	/* Show link to return to the previously selected tab. */
	$redirect['view'] = 'core.SiteAdmin';
	$redirect['subView'] = 'core.AdminRepository';
	$redirect['statusId'] = $session->putStatus($status);

	$urlGenerator =& $gallery->getUrlGenerator();
	$templateAdapter->completeProgressBar($urlGenerator->generateUrl($redirect));
	return null;
    }
}

/**
 * This view will show all repository-related features.
 */
class AdminRepositoryDownloadView extends GalleryView {

    /**
     * @see GalleryView::loadTemplate
     */
    function loadTemplate(&$template, &$form) {
	global $gallery;

	$ret = GalleryCoreApi::assertUserIsSiteAdministrator();
	if ($ret) {
	    return array($ret, null);
	}

	if ($form['formName'] != 'AdminRepositoryDownload') {
	    $form['formName'] = 'AdminRepositoryDownload';
	}

	/* Init repository. */
	list ($ret, $repositories) = GalleryRepository::getRepositories();
	if ($ret) {
	    return array($ret, null);
	}

	list ($pluginType, $pluginId) =
	    GalleryUtilities::getRequestVariables('pluginType', 'pluginId');

	$AdminRepositoryDownload = array(
	    'pluginId' => $pluginId,
	    'pluginType' => $pluginType);

	$utils = new GalleryRepositoryUtilities();
	list ($ret, $pluginPackages) = $utils->getPluginPackages($pluginType, $pluginId);
	if ($ret) {
	    return array($ret, null);
	}

	foreach (array_keys($pluginPackages) as $code) {
	    if (strpos($code, 'lang-') !== false) {
		$AdminRepositoryDownload['installedLanguages'][substr($code, 5)] = 1;
	    }
	}

	foreach ($repositories as $source => $repository) {
	    if (!$repository->pluginExistsInIndex($pluginType, $pluginId)) {
		continue;
	    }

	    /* Downloading and upgrading plugins are only different in the UI */
	    list ($ret, $upgradeData) = $repository->getPluginUpgradeInfo($pluginType, $pluginId);
	    if ($ret) {
		return array($ret, null);
	    }

	    list ($ret, $upgradeData['pluginName']) =
		$repository->getPluginName($pluginType, $pluginId);
	    if ($ret) {
		return array($ret, null);
	    }

	    $upgradeData['languageCount'] = count($upgradeData['languages']);
	    $upgradeData['repository'] = $source;
	    list ($ret, $upgradeData['repositoryName']) =
		GalleryRepository::translateRepositoryName($source);
	    if ($ret) {
		return array($ret, null);
	    }

	    $AdminRepositoryDownload['upgradeData'][] = $upgradeData;

	    if (empty($AdminRepositoryDownload['pluginName'])) {
		$AdminRepositoryDownload['pluginName'] = $upgradeData['pluginName'];
	    }
	}
	usort($AdminRepositoryDownload['upgradeData'], array($this, 'versionComparator'));

	if (!empty($AdminRepositoryDownload['upgradeData'][0]['base']['currentVersion'])) {
	    for ($i = 0; $i < count($AdminRepositoryDownload['upgradeData']); $i++) {
		if ($AdminRepositoryDownload['upgradeData'][$i]['base']['relation'] == 'equal') {
		    break;
		}
		if ($AdminRepositoryDownload['upgradeData'][$i]['base']['relation'] == 'older') {
		    $newEntry['pluginName'] = $AdminRepositoryDownload['pluginName'];
		    $newEntry['base'] = array(
			'newVersion' => $pluginPackages['base']['version'],
			'newBuild' => $pluginPackages['base']['build'],
			'currentVersion' => $pluginPackages['base']['version'],
			'currentBuild' => $pluginPackages['base']['build'],
			'relation' => 'equal');
		    $newEntry['repository'] = 'installed';
		    $newEntry['languages'] = array();
		    $newEntry['languageCount'] = 0;
		    array_splice($AdminRepositoryDownload['upgradeData'], $i, 0, array($newEntry));
		    break;
		}
	    }
	}

	$template->setVariable('AdminRepositoryDownload', $AdminRepositoryDownload);
	$template->setVariable('controller', 'core.AdminRepositoryDownload');
	$template->javascript('modules/core/templates/AdminRepositoryDownload.js');

	return array(null, array('body' => 'modules/core/templates/AdminRepositoryDownload.tpl'));
    }

    function versionComparator($a, $b) {
	$result = version_compare($a['base']['newVersion'], $b['base']['newVersion']);
	if (!$result) {
	    $result = version_compare($a['base']['newBuild'], $b['base']['newBuild']);
	}
	return $result;
    }
}
?>