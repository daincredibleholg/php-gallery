<?php
/**
 * APC-based Cache driver.
 *
 * $Id: apc.php 3366 2008-08-27 22:15:39Z Shadowhand $
 *
 * @package    Cache
 * @author     Kohana Team
 * @copyright  (c) 2007-2008 Kohana Team
 * @license    http://kohanaphp.com/license.html
 */
class Cache_Driver_Apc_Core extends Cache_Driver {

	public function __construct()
	{
		if ( ! extension_loaded('apc'))
			throw new Kohana_Exception('cache.extension_not_loaded', 'apc');
	}

	public function get($id)
	{
		return (($return = apc_fetch($id)) === FALSE) ? NULL : $return;
	}

	public function set($id, $data, $tags, $lifetime)
	{
		count($tags) and Kohana::log('error', 'Cache: tags are unsupported by the APC driver');

		return apc_store($id, $data, $lifetime);
	}

	public function find($tag)
	{
		return FALSE;
	}

	public function delete($id, $tag = FALSE)
	{
		if ($id === TRUE)
			return apc_clear_cache('user');

		if ($tag == FALSE)
			return apc_delete($id);

		return TRUE;
	}

	public function delete_expired()
	{
		return TRUE;
	}

} // End Cache APC Driver