{*
 * $Revision$
 * If you want to customize this file, do not edit it directly since future upgrades
 * may overwrite it.  Instead, copy it into a new directory called "local" and edit that
 * version.  Gallery will look for that file first and use it if it exists.
 *}
<div class="gbBlock gcBackground1">
  <h2> {g->text text="Select Albums and Users"} </h2>
</div>

{if !empty($form.error)}
<div class="gbBlock"><h2 class="giError">
  {if isset($form.error.nothingSelected)}
    {g->text text="You must choose something to import!"}
  {/if}
  {if isset($form.error.emptyCustomField)}
    {g->text text="You must specify a custom field name"}
  {/if}
</h2></div>
{/if}

<div class="gbBlock">
  <h3> {g->text text="Import Users"} </h3>

  <p class="giDescription">
    {g->text text="Select the users to migrate"}
  </p>

  <script type="text/javascript">{literal}
    // <![CDATA[
    function setCheck(val) {
	var ufne = document.forms[0], len = ufne.elements.length;
	for (var i = 0 ; i < len ; i++) {
	    if (ufne.elements[i].name.substring(0,20) == 'g2_form[migrateUser]') {
		ufne.elements[i].checked = val;
	    }
	}
    }

    function invertCheck() {
	var ufne = document.forms[0], len = ufne.elements.length;
	for (var i = 0 ; i < len ; i++) {
	    if (ufne.elements[i].name.substring(0,20)=='g2_form[migrateUser]') {
		ufne.elements[i].checked = !(ufne.elements[i].checked);
	    }
	}
    }
    // ]]>
  {/literal}</script>

  <span>
    <a href="javascript:setCheck(1)">{g->text text="Check All"}</a>
    &nbsp;
    <a href="javascript:setCheck(0)">{g->text text="Clear All"}</a>
    &nbsp;
    <a href="javascript:invertCheck()">{g->text text="Invert Selection"}</a>
  </span>

  {if (sizeof($ChooseObjects.newUsers) > 0)} 
    <table class="gbDataTable"><tr>
      <th> {g->text text="Select"} </th>
      <th> {g->text text="Username"} </th>
      <th> {g->text text="Select"} </th>
      <th> {g->text text="Username"} </th>
      <th> {g->text text="Select"} </th>
      <th> {g->text text="Username"} </th>
    </tr>
    <tr class="{cycle values="gbEven,gbOdd"}">
    {foreach name=users key=uid item=username from=$ChooseObjects.newUsers}
      <td>
	<input type="checkbox" id="user_{$uid}"{if $form.migrateUser.$uid} checked="checked"{/if}
	 name="{g->formVar var="form[migrateUser][$uid]"}"/>
      </td><td>
	<label for="user_{$uid}"> {$username} </label>
      </td>

      {if ($smarty.foreach.users.iteration % 3) == 0 && !$smarty.foreach.users.last}
	</tr> <tr class="{cycle values="gbEven,gbOdd"}">
      {/if}
    {/foreach}
    </tr></table>
  {else}
    <b> {g->text text="No available users"} </b>
  {/if}

  {if sizeof($ChooseObjects.existingUsers) > 0}
    <div style="font-weight: bold">
      {g->text text="These users are already in your gallery, and will not be imported:"}
    </div>

    {foreach key=uid item=username from=$ChooseObjects.existingUsers}
      {$username} <br/>
    {/foreach}
  {/if}
</div>

<div class="gbBlock">
  <h3> {g->text text="Import Albums"} </h3>

  <p class="giDescription">
    {g->text text="Select the albums to migrate"}
  </p>

  <div>
    <h4> {g->text text="Source:"} </h4>

    <select multiple="multiple" size="10" name="{g->formVar var="form[sourceAlbums][]"}">
      {foreach from=$ChooseObjects.g1AlbumTree item=album}
	<option value="{$album.data.urlencodedname}">
	  {"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"|repeat:$album.depth}--
	  {g->text text="%s (%s)" arg1=$album.data.title|htmlentities arg2=$album.data.name}
	</option>
      {/foreach}
    </select>
  </div>

  <div>
    <h4> {g->text text="Destination:"} </h4>

    <select name="{g->formVar var="form[destinationAlbumID]"}">
      {foreach from=$ChooseObjects.g2AlbumTree item=album}
	<option value="{$album.data.id}"{if $form.destinationAlbumID==$album.data.id}
	 selected="selected"{/if}>
	  {"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"|repeat:$album.depth}--
	  {$album.data.title|default:$album.data.pathComponent}
	</option>
      {/foreach}
    </select>
  </div>

  <div>
    <h4> {g->text text="Character Encoding of Source Text:"} </h4>

    <select name="{g->formVar var="form[sourceEncoding]"}">
      {foreach from=$ChooseObjects.availableEncodings key=encodingName item=encoding}
	{if strcmp($ChooseObjects.possibleEncodingMatch, $encodingName)}
	  <option value="{$encoding}">{$encodingName}</option>
	{else}
	  <option value="{$encoding}" selected="selected">{$encodingName}</option>
	{/if}
      {/foreach}
    </select>
  </div>

  <div>
    <h4> {g->text text="URL Redirection"} </h4>

    <input type="checkbox" id="cbUrlRedirect"{if !empty($form.urlRedirect)} checked="checked"{/if}
     name="{g->formVar var="form[urlRedirect]"}"/>
    <label for="cbUrlRedirect">
      {g->text text="Record G1->G2 mappings during import"}
    </label>
  </div>

  <div>
    <h4> {g->text text="Thumbnail generation"} </h4>

    <input type="checkbox" id="cbThumb" {if !empty($form.generateThumbnails)} checked="checked"{/if}
     name="{g->formVar var="form[generateThumbnails]"}"/>
    <label for="cbThumb">
      {g->text text="Normally Gallery will generate thumbnails the first time you look at them, then save them for subsequent views.  If you check this box, we'll create the thumbnails at migration time.  Migration will take longer but the first time you view an album will go much faster."}
    </label>
  </div>

  <div>
    <h4> {g->text text="Item captions"} </h4>

    <p class="giDescription">
      {g->text text="Gallery 2 has the following fields for all items and albums: title, summary text shown with thumbnails and description text shown in item or album view. G1 albums already have these three items (though the names of summary and description are reversed). G1 items have only a filename and caption. For items imported into G2:"}
    </p>

    <table class="gbDataEntry"><tr>
      <td style="vertical-align:top">
	{g->text text="Set title from:"}
      </td><td>
	<input type="radio" id="setTitleFilename" onclick="clickit('Title')"
	 {if $form.set.title=="filename"}checked="checked"
	 {/if}name="{g->formVar var="form[set][title]"}" value="filename"/>
	<label for="setTitleFilename"> {g->text text="Base filename"} </label>
	<br/>
	<input type="radio" id="setTitleCaption" onclick="clickit('Title')"
	 {if $form.set.title=="caption"}checked="checked"
	 {/if}name="{g->formVar var="form[set][title]"}" value="caption"/>
	<label for="setTitleCaption"> {g->text text="Caption"} </label>
	<br/>
	<input type="radio" id="setTitleCustom" onclick="clickit('Title', 1)"
	 {if $form.set.title=="custom"}checked="checked"
	 {/if}name="{g->formVar var="form[set][title]"}" value="custom"/>
	<label for="setTitleCustom"> {g->text text="Custom Field:"} </label>
	<input type="text" name="{g->formVar var="form[customfield][title]"}" size="20"
	 {if isset($form.customfield.title)}value="{$form.customfield.title}"
	 {/if}id="customTitle" style="margin-left:0.6em"{if $form.set.title!="custom"}
	 disabled="disabled"{/if}/>
	{if isset($form.error.emptyCustomField.title)}
	  <span class="giError"> {g->text text="Enter a custom field name"} </span>
	{/if}
	<br/>
	<input type="radio" id="setTitleBlank" onclick="clickit('Title')"
	 {if $form.set.title=="blank"}checked="checked"
	 {/if}name="{g->formVar var="form[set][title]"}" value="blank"/>
	<label for="setTitleCustom"> {g->text text="Blank"} </label>
      </td>
    </tr><tr>
      <td style="vertical-align:top">
	{g->text text="Set summary from:"}
      </td><td>
	<input type="radio" id="setSummaryFilename" onclick="clickit('Summary')"
	 {if $form.set.summary=="filename"}checked="checked"
	 {/if}name="{g->formVar var="form[set][summary]"}" value="filename"/>
	<label for="setSummaryFilename"> {g->text text="Base filename"} </label>
	<br/>
	<input type="radio" id="setSummaryCaption" onclick="clickit('Summary')"
	 {if $form.set.summary=="caption"}checked="checked"
	 {/if}name="{g->formVar var="form[set][summary]"}" value="caption"/>
	<label for="setSummaryCaption"> {g->text text="Caption"} </label>
	<br/>
	<input type="radio" id="setSummaryCustom" onclick="clickit('Summary', 1)"
	 {if $form.set.summary=="custom"}checked="checked"
	 {/if}name="{g->formVar var="form[set][summary]"}" value="custom"/>
	<label for="setSummaryCustom"> {g->text text="Custom Field:"} </label>
	<input type="text" name="{g->formVar var="form[customfield][summary]"}" size="20"
	 {if isset($form.customfield.summary)}value="{$form.customfield.summary}"
	 {/if}id="customSummary" style="margin-left:0.6em"{if $form.set.summary!="custom"}
	 disabled="disabled"{/if}/>
	{if isset($form.error.emptyCustomField.summary)}
	  <span class="giError"> {g->text text="Enter a custom field name"} </span>
	{/if}
	<br/>
	<input type="radio" id="setSummaryBlank" onclick="clickit('Summary')"
	 {if $form.set.summary=="blank"}checked="checked"
	 {/if}name="{g->formVar var="form[set][summary]"}" value="blank"/>
	<label for="setSummaryCustom"> {g->text text="Blank"} </label>
      </td>
    </tr><tr>
      <td style="vertical-align:top">
	{g->text text="Set description from:"}
      </td><td>
	<input type="radio" id="setDescriptionFilename" onclick="clickit('Description')"
	 {if $form.set.description=="filename"}checked="checked"
	 {/if}name="{g->formVar var="form[set][description]"}" value="filename"/>
	<label for="setDescriptionFilename"> {g->text text="Base filename"} </label>
	<br/>
	<input type="radio" id="setDescriptionCaption" onclick="clickit('Description')"
	 {if $form.set.description=="caption"}checked="checked"
	 {/if}name="{g->formVar var="form[set][description]"}" value="caption"/>
	<label for="setDescriptionCaption"> {g->text text="Caption"} </label>
	<br/>
	<input type="radio" id="setDescriptionCustom" onclick="clickit('Description', 1)"
	 {if $form.set.description=="custom"}checked="checked"
	 {/if}name="{g->formVar var="form[set][description]"}" value="custom"/>
	<label for="setDescriptionCustom"> {g->text text="Custom Field:"} </label>
	<input type="text" name="{g->formVar var="form[customfield][description]"}" size="20"
	 {if isset($form.customfield.description)}value="{$form.customfield.description}"
	 {/if}id="customDescription" style="margin-left:0.6em"{if $form.set.description!="custom"}
	 disabled="disabled"{/if}/>
	{if isset($form.error.emptyCustomField.description)}
	  <span class="giError"> {g->text text="Enter a custom field name"} </span>
	{/if}
	<br/>
	<input type="checkbox" id="defaultDescription"
	 name="{g->formVar var="form[set][defaultDescription]"}" style="margin-left:2em"
	 {if !empty($form.set.defaultDescription)}checked="checked"
	 {/if}{if $form.set.description!="custom"}disabled="disabled"{/if}/>
	<label for="defaultDescription">
	  {g->text text="Default to same as summary if custom field not set"}
	</label>
	<br/>
	<input type="radio" id="setDescriptionBlank" onclick="clickit('Description')"
	 {if $form.set.description=="blank"}checked="checked"
	 {/if}name="{g->formVar var="form[set][description]"}" value="blank"/>
	<label for="setDescriptionCustom"> {g->text text="Blank"} </label>
      </td>
    </tr></table>
    <script type="text/javascript">{literal}
	// <![CDATA[
	function clickit(which, on) {
	  var txt = document.getElementById('custom' + which);
	  txt.disabled = on?0:1;
	  if (which == 'Description') {
	    document.getElementById('defaultDescription').disabled = on?0:1;
	  }
	  if (on) { txt.focus(); }
	}
	// ]]>
    {/literal}</script>
  </div>
</div>

<div class="gbBlock gcBackground1">
  <input type="hidden" name="{g->formVar var="albumsPath"}" value="{$ChooseObjects.albumsPath}"/>
  <input type="submit" class="inputTypeSubmit"
   name="{g->formVar var="form[action][import]"}" value="{g->text text="Prepare Import"}"/>
</div>
