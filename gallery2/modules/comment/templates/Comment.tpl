{capture name="date"}{g->date timestamp=$comment.date format="%e-%b-%Y %H:%M"}{/capture}
{g->box style="comment"}
  {g->title}
    {$comment.subject}
  {/g->title}
  {if isset($can.edit) || isset($can.delete)}
    {g->subtitle}
      {g->linkset}
	{if $can.edit}
	  {g->item}
	    {g->title}
	      {g->link url_return="true" url_view="core:ItemAdmin" url_subView="comment:EditComment" url_itemId=$item.id url_commentId=$comment.id}
		{g->text text="edit"}
	      {/g->link}
	    {/g->title}
	  {/g->item}
	{/if}
	{if $can.delete}
	  {g->item}
	    {g->title}
	      {g->link url_return="true" url_view="core:ItemAdmin" url_subView="comment:DeleteComment" url_itemId=$item.id url_commentId=$comment.id}
		{g->text text="delete"}
	      {/g->link}
	    {/g->title}
	  {/g->item}
	{/if}
      {/g->linkset}

    {/g->subtitle}
  {/if}

  {g->description}
    {if isset($can.edit)}
      {g->text text="Posted by %s on %s (%s)" 
      arg1=$user.fullName|default:$user.userName
      arg2=$smarty.capture.date
      arg3=$comment.host}
    {else}
      {g->text text="Posted by %s on %s" 
      arg1=$user.fullName|default:$user.userName
      arg2=$smarty.capture.date}
    {/if}

  {/g->description}

  {g->element}
    {if isset($truncate)}
      {$comment.comment|truncate:$truncate}
    {else}
      {$comment.comment}
    {/if}
  {/g->element}
{/g->box}
