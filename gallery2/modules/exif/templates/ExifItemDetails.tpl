{*
 * $Revision$
 * If you want to customize this file, do not edit it directly since future upgrades
 * may overwrite it.  Instead, copy it into a new directory called "local" and edit that
 * version.  Gallery will look for that file first and use it if it exists.
 *}
<div id="gsExif" class="gbBlock">
  <h3> {g->text text="Photo Properties"} </h3>

  {if isset($ExifItemDetails.mode)}
  <div>
    {if ($ExifItemDetails.mode == 'summary')}
      {g->text text="summary"}
    {else}
      <a href="{g->url arg1="controller=exif:SwitchDetailMode" arg2="mode=summary"
       arg3="return=true"}">
	{g->text text="summary"}
      </a>
    {/if}

    {if ($ExifItemDetails.mode == 'detailed')}
      {g->text text="details"}
    {else}
      <a href="{g->url arg1="controller=exif:SwitchDetailMode" arg2="mode=detailed"
       arg3="return=true"}">
	{g->text text="details"}
      </a>
    {/if}
  </div>
  {/if}

  {if !empty($ExifItemDetails.exifData)}
  <table class="gbDataTable">
    {section name=outer loop=$ExifItemDetails.exifData step=2}
    <tr> <!--class="{cycle values='gbEven,gbOdd'}"-->
      {section name=inner loop=$ExifItemDetails.exifData start=$smarty.section.outer.index max=2}
      <td class="gbEven">
	{g->text text=$ExifItemDetails.exifData[inner].title}
      </td>
      <td class="gbOdd">
	{$ExifItemDetails.exifData[inner].value}
      </td>
      {/section}
    </tr>
    {/section}
  </table>
  {/if}
</div>
