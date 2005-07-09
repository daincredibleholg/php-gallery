{*
 * $Revision$
 * If you want to customize this file, do not edit it directly since future upgrades
 * may overwrite it.  Instead, copy it into a new directory called "local" and edit that
 * version.  Gallery will look for that file first and use it if it exists.
 *}
{g->callback type="members.LoadMembers"}

<div class="{$class}">
  <h3> {g->text text="Members"} </h3>
  <p>
    {g->text one="%s member" many="%s members"
	     count=$block.members.LoadMembers.count
	     arg1=$block.members.LoadMembers.count}
  </p>

  {if ($block.members.LoadMembers.canViewList)}
  <a class="{g->linkId view="members.MembersList"}"
     href="{g->url arg1="view=members.MembersList"}">{g->text text="Members List"}</a>
  {/if}
</div>

