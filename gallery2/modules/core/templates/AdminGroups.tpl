<div id="gsAdminContents">
  <div class="gbTopFlag">
    <div class="gbTitle">
      <div class="giTitle">
	{g->text text="Group Management"}
      </div>
    </div>
    
    <div class="spacer">
      &nbsp;
    </div>
  </div>

  {if isset($status)}
  <div class="gsStatus">
    <div class="giStatus">
      {if isset($status.deletedGroup)}
	{g->text text="Removed group '%s'" arg1=$status.deletedGroup}
      {/if}
      {if isset($status.createdGroup)}
	{g->text text="Created group '%s'" arg1=$status.createdGroup}
      {/if}
      {if isset($status.modifiedGroup)}
	{g->text text="Modified group '%s'" arg1=$status.modifiedGroup}
      {/if}
    </div>
  </div>
  {/if}

  <div class="gbAdmin">
    <div class="giDescription">
      {g->text one="There is %d group in the system." 
               many="There are %d total groups in the system." 
               count=$AdminGroups.totalGroupCount
               arg1=$AdminGroups.totalGroupCount}
    </div>
  </div>

  <div class="gbAdmin">
    <div class="giTitle">
      {g->text text="Edit Group"}
    </div>

    <input type="text" name="{g->formVar var="form[text][groupName]"}" size="20" value="{$form.text.groupName}"/>

    <br />

    {if isset($form.error.text.noSuchGroup)}
    <div class="giError">
      {g->text text="Group '%s' does not exist." arg1=$form.text.groupName}
    </div>
    {/if}

    {if isset($form.error.text.noGroupSpecified)}
    <div class="giError">
      {g->text text="You must enter a group name"}
    </div>
    {/if}

    {if isset($form.error.text.cantDeleteGroup)}
    <div class="giError">
      {g->text text="You cannot delete that group"}
    </div>
    {/if}

    {if isset($form.error.text.cantEditGroupUsers)}
    <div class="giError">
      {g->text text="You cannot edit that group's users"}
    </div>
    {/if}

    <input type="submit" name="{g->formVar var="form[action][editFromText]"}" value="{g->text text="Edit"}"/>
    <input type="submit" name="{g->formVar var="form[action][deleteFromText]"}" value="{g->text text="Delete"}"/>
    <input type="submit" name="{g->formVar var="form[action][addRemoveUsersFromText]"}" value="{g->text text="Add/Remove Users"}"/>
  </div>

  <div class="gbAdmin">
    <div class="giTitle">
      {g->text text="Edit Group (by list)"}
    </div>

    <table class="gbDataTable">
      {if ($form.list.maxPages > 1)}
      <tr>
	<th colspan="2">
	  <table>
	    <tr>
	      <th align="left">
		<input type="hidden" name="{g->formVar var="form[list][page]"}" value="{$form.list.page}"/>
		<input type="hidden" name="{g->formVar var="form[list][maxPages]"}" value="{$form.list.maxPages}"/>
		  
		{if ($form.list.page > 1)}
		<a href="{g->url arg1="view=core:SiteAdmin" arg2="subView=core:AdminGroups" arg3="form[list][page]=1"}">{g->text text="&laquo; first"}</a>
		&nbsp;
		<a href="{g->url arg1="view=core:SiteAdmin" arg2="subView=core:AdminGroups" arg3="form[list][page]=`$form.list.backPage`"}">{g->text text="&laquo; back"}</a>
		{/if}
	      </th>

	      <th align="center">
		{g->text text="Viewing page %d of %d"
		         arg1=$form.list.page
		         arg2=$form.list.maxPages}
	      </th>

	      <th align="right">
		{if ($form.list.page < $form.list.maxPages)}
		<a href="{g->url arg1="view=core:SiteAdmin" arg2="subView=core:AdminGroups" arg3="form[list][page]=`$form.list.nextPage`"}">{g->text text="next &raquo;"}</a>
		&nbsp;
		<a href="{g->url arg1="view=core:SiteAdmin" arg2="subView=core:AdminGroups" arg3="form[list][page]=`$form.list.maxPages`"}">{g->text text="last &raquo;"}</a>
		{/if}
	      </th>
	    </tr>
	  </table>
	</th>
      </tr>
      {/if}
	  
      <tr>
	<th>
	  {g->text text="Group Name"}
	</th>
	<th>
	  {g->text text="Action"}
	</th>
      </tr>

      {foreach from=$form.list.groupNames key=groupId item=group}
      <tr class="{cycle values="gbEven,gbOdd"}">
	<td>
	  {$group.groupName}
	</td>

	<td>
	  <div class="giHorizontalLinks">
	    <span>
	      <a href="{g->url arg1="view=core:SiteAdmin" arg2="subView=core:AdminEditGroup" arg3="groupId=$groupId"}">{g->text text="edit"}</a>
	    </span>

	    {if ($group.can.delete)}
	    <span>
	      <a href="{g->url arg1="view=core:SiteAdmin" arg2="subView=core:AdminDeleteGroup" arg3="groupId=$groupId"}">{g->text text="delete"}</a>
	    </span>
	    {/if}

	    {if ($group.can.editUsers)}
	    <span>
	      <a href="{g->url arg1="view=core:SiteAdmin" arg2="subView=core:AdminEditGroupUsers" arg3="groupId=$groupId"}">{g->text text="edit users"}</a>
	    </span>
	    {/if}
	  </div>
	</td>
      </tr>
      {/foreach}
    </table>

    {if !empty($form.list.filter) || ($form.list.maxPages > 1)}
    <input type="text" name="{g->formVar var="form[list][filter]"}" value="{$form.list.filter}"/>
    <input type="submit" name="{g->formVar var="form[action][filterBySubstring]"}" value="{g->text text="Filter:"}"/>
    <input type="submit" name="{g->formVar var="form[action][filterClear]"}" value="{g->text text="Clear"}"/>
    {/if}
      
    {if (!empty($form.list.filter))}
    <span>
      {g->text one="%d group matches your filter"
               many="%d groups match your filter"
               count=$form.list.count
               arg1=$form.list.count}
    </span>
    {/if}
  </div>

  <div class="gbAdmin">
    <div class="gbDataEntry">
      <div class="giTitle">
	{g->text text="Create Group"}
      </div>

      <input type="submit" name="{g->formVar var="form[action][create]"}" value="{g->text text="Create"}"/>
    </div>
  </div>
</div>
