<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>
      {g->text text="Redirect"}
    </title>
    {g->style}
  </head>
  <body>
      {g->text text="You are in debug mode so we are not automatically redirecting."}
      <br/>
      <a href="{$main.redirectUrl}">[continue]</a>
      <br/>
      <font size="-1"><i>{$main.redirectUrl}</i></font>

      {if isset($main.debug)}
	{include file="debug.tpl"}
      {/if}

      {if isset($main.profile)}
	{include file="profile.tpl"}
      {/if}
  </body>
</html>
