<?php
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
 *
 * $Id$
 *
 * Version: 1_4_4-RC2
 */
/**
 * NLS (National Language System) array.
 *
 * The basic idea and values was taken from then Horde Framework (http://horde.org)
 * The original filename was horde/config/nls.php.dist.
 * The modifications to fit it for Gallery were made by Jens Tkotz 
 * (jens@peino.de)
 *
 */


/**
 ** Native languagename
 **/
	$nls['language']['is_IS'] = '&#205;slenska';

/**
 ** Alias for languages with different browser and gettext codes
 **/

	$nls['alias']['is'] = 'is_IS';

/**
 ** Aliases for languages which we substitte or send by NUKE
 **/

	$nls['alias']['icelandic']=		'is_IS' ;
	$nls['alias']['isl']=			'is_IS' ;
	$nls['alias']['is_IS.ISO8859-1'] =	'is_IS' ;
	
/**
 ** phpNuke
 **/
	$nls['phpnuke']['is_IS'] = 'icelandic';

/**
 ** postNuke
 **/
	$nls['postnuke']['is_IS'] = 'isl';

?>
