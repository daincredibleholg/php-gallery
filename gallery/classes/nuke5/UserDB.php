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
class Nuke5_UserDB extends Abstract_UserDB {
	var $db;

	function Nuke5_UserDB() {
		global $gallery;
		$this->db = $gallery->database{"nuke"};
		$this->nobody = new NobodyUser();
		$this->everybody = new EverybodyUser();
	}

	function getUidList() {
		$uidList = array();
		$db = $this->db;

		$results = $db->query("select uid from " . $db->prefix("users"));
		while ($row = $db->fetch_row($results)) {
			array_push($uidList, $row[0]);
		}
		array_push($uidList, $this->nobody->getUid());
		array_push($uidList, $this->everybody->getUid());

		sort($uidList);
		return $uidList;
	}

	function getUserByUsername($username, $level=0) {
		if (!strcmp($username, $this->nobody->getUsername())) {
			return $this->nobody;
		} else if (!strcmp($username, $this->everybody->getUsername())) {
			return $this->everybody;
		}

		$user = new Nuke5_User();
		$user->loadByUsername($username);
		return $user;
	}

	function getUserByUid($uid) {
		global $gallery;
		$userDir = $gallery->app->userDir;

		if (!$uid || !strcmp($uid, $this->nobody->getUid())) {
			return $this->nobody;
		} else if (!strcmp($uid, $this->everybody->getUid())) {
			return $this->everybody;
		}

		$user = new Nuke5_User();
		$user->loadByUid($uid);
		return $user;
	}
}

?>
