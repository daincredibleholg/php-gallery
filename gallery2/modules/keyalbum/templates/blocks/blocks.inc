<?php
$blocks = array(
    'KeywordLinks' => array(
	'description' => $gallery->i18n('Keyword album links'),
	'vars' => array(
	    'forItem' => array(
		'description' =>
		    $gallery->i18n('Keywords for current item (uncheck to show all keywords)'),
		'type' => 'boolean',
		'default' => 'true',
		'overrides' => array('onlyPublic')),
	    'onlyPublic' => array(
		'description' => $gallery->i18n('Keywords from public items only'),
		'type' => 'boolean',
		'default' => 'true'),
	    )));
?>