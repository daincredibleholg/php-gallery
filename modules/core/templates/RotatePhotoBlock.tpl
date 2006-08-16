{*
 * $Revision: 12540 $
 * If you want to customize this file, do not edit it directly since future upgrades
 * may overwrite it.  Instead, copy it into a new directory called "local" and edit that
 * version.  Gallery will look for that file first and use it if it exists.
 *}
<div class="{$class}">
  {assign smarty.Gallery.image.ids.0="image"|elementId}
  {g->image params=$RotatePhotoBlock}

  {assign smarty.RotatePhotoBlock.status=null}
  {assign smarty.RotatePhotoBlock.form=null}
  {assign smarty.RotatePhotoBlock.links=null}
  {if GalleryUtilities::isA($RotatePhotoBlock.item, 'GalleryPhotoItem')
      && $RotatePhotoBlock.item.permissions.core_edit}
    {*if empty($ItemEditRotateAndScalePhoto.editPhoto.can.rotate)}
      {capture assign="smarty.RotatePhotoBlock.form"}
	<b>
	  {g->text text="There are no graphics toolkits enabled that support this type of photo, so we cannot rotate it."}
	  {if !empty($user.isAdmin)}
	    <a href="{g->url arg1="view=core.SiteAdmin" arg2="subView=core.AdminPlugins"}"> {g->text text="site admin"} </a>
	  {/if}
	</b>
      {/capture}
    {else*}
      {capture assign="smarty.RotatePhotoBlock.status"}
	<span id="{"status"|elementId}" style="{if empty($status.editMessage) && empty($status.warning) && empty($form.error)}display: none; {/if}position: absolute">
	  <img class="giWorking" id="{"working"|elementId}" style="display: none" src="{g->url href="themes/ajaxian/images/working-hard.gif"}" title="{g->text text="Rotating photo..."}"/>

	  <img class="giSuccess" id="{"success"|elementId}"{if empty($status.editMessage)} style="display: none"{/if} src="{g->url href="install/images/ico_success.gif"}" title="{$status.editMessage}"/>

	  <img class="giWarning" id="{"warning"|elementId}"{if empty($status.warning)} style="display: none"{/if} src="{g->url href="install/images/ico_warning.gif"}" title="{$status.warning|@implode:""}"/>

	  <img class="giError" id="{"error"|elementId}"{if empty($form.error)} style="display: none"{/if} src="{g->url href="install/images/ico_error.gif"}" title="{g->text text="There was a problem processing your request"}"/>
	</span>
      {/capture}

      {capture assign="smarty.RotatePhotoBlock.form"}
	<span id="{"hidden"|elementId}" style="display: none"></span>

	<form id="{"form"|elementId}" action="{g->url}" method="post" enctype="{$RotatePhotoBlock.enctype|default:"application/x-www-form-urlencoded"}">
	  {g->hiddenFormVars}
	  <input name="{"controller"|formVar}" type="hidden" value="core.ItemEdit"/>
	  <input name="{"itemId"|formVar}" type="hidden" value="{$RotatePhotoBlock.item.id}"/>
	  <input name="{"editPlugin"|formVar}" type="hidden" value="ItemEditRotateAndScalePhoto"/>
	  <input class="serialNumberInput-{$RotatePhotoBlock.item.id}" name="{"form[serialNumber]"|formVar}" type="hidden" value="{$RotatePhotoBlock.item.serialNumber}"/>
	  <input class="inputTypeSubmit" id="{"rotate-90Input"|elementId}" name="{"form[action][rotate][-90]"|formVar}" type="submit" value="{g->text text="-90&deg;"}"/> &nbsp;
	  <input class="inputTypeSubmit" id="{"rotate180Input"|elementId}" name="{"form[action][rotate][180]"|formVar}" type="submit" value="{g->text text="180&deg;"}"/> &nbsp;
	  <input class="inputTypeSubmit" id="{"rotate90Input"|elementId}" name="{"form[action][rotate][90]"|formVar}" type="submit" value="{g->text text="90&deg;"}"/>
	</form>

	{if !empty($head.javascript['lib/javascript/RotatePhotoBlock.js'])}
	  <script type="text/javascript">
	    // <![CDATA[

	    var RotatePhotoBlock_{$templateId|replace:"-":"_"} = new RotatePhotoBlock();
	    {if !empty($templateId)}
	      RotatePhotoBlock_{$templateId|replace:"-":"_"}.templateId = "{$templateId}";
	    {/if}

	    {* Register template's submit function with submit buttons *}
	    YAHOO.util.Event.addListener(["{"rotate-90Input"|elementId}",
		"{"rotate180Input"|elementId}",
		"{"rotate90Input"|elementId}"], "click", function(event, self) {ldelim}
		    RotatePhotoBlock_{$templateId|replace:"-":"_"}.submit(
		      {ldelim}RotatePhotoBlock: {ldelim}class: "{$smarty.Gallery.image.classes.1}",
			id: "{$smarty.Gallery.image.ids.1}",
			item: {ldelim}id: {$RotatePhotoBlock.item.id}{rdelim},
			image: {ldelim}id: {$RotatePhotoBlock.image.id}{rdelim}{if !empty($RotatePhotoBlock.maxSize)},
			maxSize: {$RotatePhotoBlock.maxSize}{/if}{rdelim}{rdelim},
		      YAHOO.util.Event.getTarget(event), self);

		    YAHOO.util.Event.preventDefault(event);
		  {rdelim}, RotatePhotoBlock_{$templateId|replace:"-":"_"});

	    {* Register template's request handler with custom request event *}
	    GalleryUtilities.requestEvent.subscribe(
	      RotatePhotoBlock_{$templateId|replace:"-":"_"}.handleRequest,
	      RotatePhotoBlock_{$templateId|replace:"-":"_"});

	    {* Register template's response handler with custom response event *}
	    GalleryUtilities.responseEvent.subscribe(
	      RotatePhotoBlock_{$templateId|replace:"-":"_"}.handleResponse,
	      RotatePhotoBlock_{$templateId|replace:"-":"_"});

	    {* TODO Move to init function *}
	    new YAHOO.widget.Tooltip("{"workingTooltip"|elementId}", {ldelim}context: "{"working"|elementId}"{rdelim});
	    new YAHOO.widget.Tooltip("{"successTooltip"|elementId}", {ldelim}context: "{"success"|elementId}"{rdelim});
	    new YAHOO.widget.Tooltip("{"warningTooltip"|elementId}", {ldelim}context: "{"warning"|elementId}"{rdelim});
	    new YAHOO.widget.Tooltip("{"errorTooltip"|elementId}", {ldelim}context: "{"error"|elementId}"{rdelim});

	    // ]]>
	  </script>
	{/if}
      {/capture}

      {if !empty($head.javascript['lib/javascript/RotatePhotoBlock.js'])}
	{capture assign="smarty.RotatePhotoBlock.links.0.script"}RotatePhotoBlock_{$templateId|replace:"-":"_"}.submit({ldelim}RotatePhotoBlock: {ldelim}class: '{$smarty.Gallery.image.classes.1}', id: '{$smarty.Gallery.image.ids.1}', item: {ldelim}id: {$RotatePhotoBlock.item.id}{rdelim}, image: {ldelim}id: {$RotatePhotoBlock.image.id}{rdelim}{if !empty($RotatPhotoBlock.maxSize)}, maxSize: {$RotatePhotoBlock.maxSize}{/if}{rdelim}{rdelim}, YAHOO.util.Dom.get('{"rotate-90Input"|elementId}'), RotatePhotoBlock_{$templateId|replace:"-":"_"}){/capture}
	{capture assign="smarty.RotatePhotoBlock.links.0.text"}{g->text text="Rotate -90&deg;"}{/capture}
	{capture assign="smarty.RotatePhotoBlock.links.1.script"}RotatePhotoBlock_{$templateId|replace:"-":"_"}.submit({ldelim}RotatePhotoBlock: {ldelim}class: '{$smarty.Gallery.image.classes.1}', id: '{$smarty.Gallery.image.ids.1}', item: {ldelim}id: {$RotatePhotoBlock.item.id}{rdelim}, image: {ldelim}id: {$RotatePhotoBlock.image.id}{rdelim}{if !empty($RotatPhotoBlock.maxSize)}, maxSize: {$RotatePhotoBlock.maxSize}{/if}{rdelim}{rdelim}, YAHOO.util.Dom.get('{"rotate180Input"|elementId}'), RotatePhotoBlock_{$templateId|replace:"-":"_"}){/capture}
	{capture assign="smarty.RotatePhotoBlock.links.1.text"}{g->text text="Rotate 180&deg;"}{/capture}
	{capture assign="smarty.RotatePhotoBlock.links.2.script"}RotatePhotoBlock_{$templateId|replace:"-":"_"}.submit({ldelim}RotatePhotoBlock: {ldelim}class: '{$smarty.Gallery.image.classes.1}', id: '{$smarty.Gallery.image.ids.1}', item: {ldelim}id: {$RotatePhotoBlock.item.id}{rdelim}, image: {ldelim}id: {$RotatePhotoBlock.image.id}{rdelim}{if !empty($RotatPhotoBlock.maxSize)}, maxSize: {$RotatePhotoBlock.maxSize}{/if}{rdelim}{rdelim}, YAHOO.util.Dom.get('{"rotate90Input"|elementId}'), RotatePhotoBlock_{$templateId|replace:"-":"_"}){/capture}
	{capture assign="smarty.RotatePhotoBlock.links.2.text"}{g->text text="Rotate 90&deg;"}{/capture}
      {/if}
    {*/if*}
  {/if}
</div>

{* Ajax callback output *}
{if GalleryUtilities::isCallback()}
  {capture append="smarty.output"}
    {assign RotatePhotoBlock.id="hiddenImage"|elementId}
    {capture assign="RotatePhotoBlock.html"}{g->image params=$RotatePhotoBlock}{/capture}
    YAHOO.util.Dom.get("{"hidden"|elementId}").innerHTML = "{$RotatePhotoBlock.html|replace:"\"":"\\\""}";
    var hiddenImage = YAHOO.util.Dom.get("{"hiddenImage"|elementId}");
    YAHOO.util.Event.addListener(hiddenImage, "load", function(event, self) {ldelim}
	var image = YAHOO.util.Dom.get("{$smarty.Gallery.image.ids.2}");
	image.parentNode.replaceChild(hiddenImage, image);
	hiddenImage.id = "{$smarty.Gallery.image.ids.2}";

	GalleryUtilities.hide("{"working"|elementId}");

	{if empty($status.editMessage) && empty($status.warning) && empty($form.error)}
	  GalleryUtilities.hide("{"status"|elementId}");
	{else}
	  GalleryUtilities.show("{"status"|elementId}");
	{/if}

	{if empty($status.editMessage)}
	  GalleryUtilities.hide("{"success"|elementId}");
	{else}
	  YAHOO.util.Dom.get("{"success"|elementId}").title = "{$status.editMessage}";
	  GalleryUtilities.show("{"success"|elementId}");
	{/if}

	{if empty($status.warning)}
	  GalleryUtilities.hide("{"warning"|elementId}");
	{else}
	  YAHOO.util.Dom.get("{"warning"|elementId}").title = "{$status.warning|@implode:""}";
	  GalleryUtilities.show("{"warning"|elementId}");
	{/if}

	{if empty($form.error)}
	  GalleryUtilities.hide("{"error"|elementId}");
	{else}
	  GalleryUtilities.show("{"error"|elementId}");
	{/if}

	{* Center status over image *}
	GalleryUtilities.center("{"status"|elementId}", "{$smarty.Gallery.image.ids.2}");
      {rdelim}, RotatePhotoBlock_{$templateId|replace:"-":"_"});

    YAHOO.util.Dom.batch(
      YAHOO.util.Dom.getElementsByClassName("serialNumberInput-{$RotatePhotoBlock.item.id}"),
      function(element) {ldelim}
	  element.value = {$RotatePhotoBlock.item.serialNumber};
	{rdelim});
  {/capture}
{/if}
