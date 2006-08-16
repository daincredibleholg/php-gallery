{*
 * $Revision$
 * If you want to customize this file, do not edit it directly since future upgrades
 * may overwrite it.  Instead, copy it into a new directory called "local" and edit that
 * version.  Gallery will look for that file first and use it if it exists.
 *}

{if !empty($head.javascript['lib/javascript/ItemEdit.js'])}
  <script type="text/javascript">
    // <![CDATA[

    var ItemEdit_{$templateId|replace:"-":"_"} = new ItemEdit();
    {if !empty($templateId)}
      ItemEdit_{$templateId|replace:"-":"_"}.templateId = "{$templateId}";
    {/if}

    {* Register template's request handler with custom request event *}
    GalleryUtilities.requestEvent.subscribe(
      ItemEdit_{$templateId|replace:"-":"_"}.handleRequest,
      ItemEdit_{$templateId|replace:"-":"_"});

    {* Register template's response handler with custom response event *}
    GalleryUtilities.responseEvent.subscribe(
      ItemEdit_{$templateId|replace:"-":"_"}.handleResponse,
      ItemEdit_{$templateId|replace:"-":"_"});

    // ]]>
  </script>
{/if}

<div class="gbBlock gcBackground1">
  <h2> {g->text text="Edit %s" arg1=$ItemEdit.itemTypeNames.0} </h2>
</div>

<input name="{"editPlugin"|formVar}" type="hidden" value="{$ItemEdit.editPlugin}"/>
<input class="serialNumberInput-{$theme.item.id}" name="{"form[serialNumber]"|formVar}" type="hidden" value="{$form.serialNumber}"/>

<div class="gbBlock" id="{"status"|elementId}"{if empty($status.editMessage) && empty($status.warning) && empty($form.error)} style="display: none"{/if}>
  <h2 class="giWorking" id="{"working"|elementId}" style="display: none"> {g->text text="Saving changes..."} </h2>

  <h2 class="giSuccess" id="{"success"|elementId}"{if empty($status.editMessage)} style="display: none"{/if}> {$status.editMessage} </h2>

  <div class="giWarning" id="{"warning"|elementId}"{if empty($status.warning)} style="display: none"{/if}>
    {foreach from=$status.warning item=warning}
      {$warning}
    {/foreach}
  </div>

  <h2 class="giError" id="{"error"|elementId}"{if empty($form.error)} style="display: none"{/if}> {g->text text="There was a problem processing your request"} </h2>
</div>

<div class="gbTabBar">
  {foreach from=$ItemEdit.plugins item=plugin}
    {if $plugin.isSelected}
      <span class="giSelected o"><span> {$plugin.title} </span></span>
    {else}
      <span class="o"><span><a href="{g->url arg1="view=core.ItemAdmin" arg2="subView=core.ItemEdit" arg3="itemId=`$theme.item.id`" arg4="editPlugin=`$plugin.id`"}"> {$plugin.title} </a></span></span>
    {/if}
  {/foreach}
</div>

{include file="gallery:`$ItemEdit.pluginFile`" l10Domain=$ItemEdit.pluginL10Domain}

{* Ajax callback output *}
{if GalleryUtilities::isCallback()}
  {capture append="smarty.output"}
    {if empty($status.editMessage) && empty($status.warning) && empty($form.error)}
      GalleryUtilities.hide("{"status"|elementId}");
    {else}
      GalleryUtilities.show("{"status"|elementId}");
    {/if}

    GalleryUtilities.hide("{"working"|elementId}");

    {if empty($status.editMessage)}
      GalleryUtilities.hide("{"success"|elementId}");
    {else}
      YAHOO.util.Dom.get("{"success"|elementId}").innerHTML = "{$status.editMessage}";
      GalleryUtilities.show("{"success"|elementId}");
    {/if}

    {if empty($status.warning)}
      GalleryUtilities.hide("{"warning"|elementId}");
    {else}
      YAHOO.util.Dom.get("{"warning"|elementId}").innerHTML = "{$status.warning|@implode:""}";
      GalleryUtilities.show("{"warning"|elementId}");
    {/if}

    {if empty($form.error)}
      GalleryUtilities.hide("{"error"|elementId}");
    {else}
      GalleryUtilities.show("{"error"|elementId}");
    {/if}

    YAHOO.util.Dom.batch(
      YAHOO.util.Dom.getElementsByClassName("serialNumberInput-{$theme.item.id}"),
        function(element) {ldelim}
	    element.value = {$form.serialNumber};
	  {rdelim});

  {/capture}
{/if}
