<!--
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
 * Gallery 2 integration for phpBB2.
 * @version $Revision$ $Date$
 * @author Dariush Molavi <dari@nukedgallery.net>
 * @author Scott Gregory <jettyrat@jettyfishing.com>
 */
 -->

<h1>{L_CONFIG_TITLE}</h1>

<form method="post" action="{S_G2_ACTION}" name="configForm"><table cellspacing="1" cellpadding="4" border="0" align="center" class="forumline">
	<tr>
		<th align="center" class="row1" colspan="2">{L_CONFIG_EXPLAIN1}</th>
	</tr>
	<tr>
		<td height="40" valign="top" align="right" class="row1">{L_G2URI}</td>
		<td height="40" valign="top" align="left" class="row2"><input type="text" name="g2uri" value="{S_G2URI}" onchange="document.configForm.fullpath.value='';"  /></td>
	</tr>
	<tr>
		<th align="center" class="row1" colspan="2">{L_CONFIG_EXPLAIN2}</th>
	</tr>
	<tr>
		<td height="40" valign="top" align="right" class="row1">{L_EMBEDURI}</td>
		<td height="40" valign="top" align="left" class="row2"><input type="text" name="embeduri" value="{S_EMBEDURI}"  /></td>
	</tr>
	<tr>
		<th align="center" class="row1" colspan="2">{L_CONFIG_EXPLAIN3}</th>
	</tr>
	<tr>
		<td height="40" valign="top" align="right" class="row1">{L_FULLPATH}</td>
		<td height="40" valign="top" align="left" class="row2"><input type="text" name="fullpath" value="{S_FULLPATH}"  /></td>
	</tr>
	<tr>
		<th align="center" class="row1" colspan="2">{L_CONFIG_EXPLAIN4}</th>
	</tr>
	<tr>
		<td height="40" valign="top" align="right" class="row1">{L_ACTIVEADMINID}</td>
		<td height="40" valign="top" align="left" class="row2"><input type="text" name="activeadminid" value="{S_ACTIVEADMINID}"  /></td>
	</tr>
	<tr>
		<th align="center" class="row1" colspan="2">{L_CONFIG_EXPLAIN5}</th>
	</tr>
	<tr>
		<td height="40" valign="top" align="right" class="row1">{L_UTF8}</td>
		<td height="40" valign="top" align="left" class="row2"><input type="radio" name="utf8" value="1" {S_UTF8_1}/>&nbsp;{L_ENABLE}&nbsp;&nbsp;<input type="radio" name="utf8" value="0" {S_UTF8_0}/>&nbsp;{L_DISABLE}</td>
	</tr>
	<tr>
		<td align="center" class="catbottom" colspan="2"><input type="submit" name="save" value="{L_SUBMIT}"  /></td>
	</tr>
</table></form>