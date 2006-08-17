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
 * @version $Revision$ $Date$
 * @package Picasa
 * @subpackage UserInterface
 * @author Waldemar Schlackow <gallery@schlackow.de> based on code by
 * Jesse Mullan <jmullan@visi.com>
 */

/**
 * @package Picasa
 * @subpackage UserInterface
 */
class ImportResultsView extends GalleryView {

    /**
     * @see GalleryView::loadTemplate
     */
    function loadTemplate(&$template, &$form) {
        global $gallery;

        if ($form['formName'] != 'ImportResults') {
            $form['formName'] = 'ImportResults';
        }
        $status = $template->getVariable('status');
        $counts = array();
        foreach (array('albumImportFailure', 'albumImportSuccess',
                'pictureImportFailure', 'pictureImportSuccess') as $key) {

            if (isset($status[$key])) {
                $counts[$key] = sizeof($status[$key]);
            } else {
                $counts[$key] = 0;
            }
        }

        $ImportResults = array();
        $ImportResults['counts'] = $counts;
        $ImportResults['status'] = $status;
        $template->setVariable('ImportResults', $ImportResults);
        $template->setVariable('controller', 'picasa.ImportResults');
        return array(null,
            array('body' => 'modules/picasa/templates/ImportResults.tpl'));
    }
}
?>