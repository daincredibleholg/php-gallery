{gallery->mainbody1}
  {gallery->form action_controller="$controller"}
    {gallery->input type="hidden" name="form.formName"}AdminEditUser{/gallery->input}
    {gallery->input type="hidden" name="userId"}{$user.id}{/gallery->input}
    
    {gallery->maintitle1}
      {gallery->text text="Edit a user"}
    {/gallery->maintitle1}
    
    {gallery->detailedbox}
      {gallery->detailedboxbody}
	{gallery->widget2set}
	  {gallery->widget2}
	    {gallery->widget2title}
	      {gallery->text text="Username"}
	    {/gallery->widget2title}
	    {gallery->widget2body}
	      {gallery->input type="hidden" name="form.userName"}{$form.userName}{/gallery->input}
	      {$form.userName}
	    {/gallery->widget2body}
	  {/gallery->widget2}

	  {gallery->widget2}
	    {gallery->widget2title}
	      {gallery->text text="Full Name"}
	    {/gallery->widget2title}
	    {gallery->widget2body}
	      {gallery->input size="32" type="text" name="form.fullName"}{$form.fullName}{/gallery->input}
	    {/gallery->widget2body}
	  {/gallery->widget2}

	  {if $show.email}
	    {gallery->widget2}
	      {gallery->widget2title}
		{gallery->text text="Email Address"}
		{gallery->textmodifier1}
		  {gallery->text text="required"}
		{/gallery->textmodifier1}
	      {/gallery->widget2title}
	      {gallery->widget2body}
		{gallery->input size="32" type="text" name="form.email"}{$form.email}{/gallery->input}
		
		{if isset($form.error.email.missing)}
		  <br/>
		  {gallery->error}
		    {gallery->text text="You must enter an email address"}
		  {/gallery->error}
		{/if}
		
	      {/gallery->widget2body}
	    {/gallery->widget2}
	  {/if}

	  {if $show.language}
	    {gallery->widget2}
	      {gallery->widget2title}
		{gallery->text text="Language"}
	      {/gallery->widget2title}
	      {gallery->widget2body}
		{gallery->select name="form.language"}
		  {html_options options=$languageList selected=$form.language}
		{/gallery->select}
	      {/gallery->widget2body}
	    {/gallery->widget2}

	    {gallery->widget2}
	      {gallery->widget2title}
		{gallery->text text="Password"}
		{gallery->textmodifier1}
		  {gallery->text text="required"}
		{/gallery->textmodifier1}
	      {/gallery->widget2title}
	      {gallery->widget2body}
		{gallery->input size="32" type="password" name="form.password1"}{/gallery->input}

		{if isset($form.error.password1.missing)}
		  <br/>
		  {gallery->error}
		    {gallery->text text="You must enter a password"}
		  {/gallery->error}
		{/if}
		
	      {/gallery->widget2body}
	    {/gallery->widget2}
	  {/if}

	  {if $show.password}
	    {gallery->widget2}
	      {gallery->widget2title}
		{gallery->text text="Verify Password"}
		{gallery->textmodifier1}
		  {gallery->text text="required"}
		{/gallery->textmodifier1}
	      {/gallery->widget2title}
	      {gallery->widget2body}
		{gallery->input size="32" type="password" name="form.password2"}{/gallery->input}

		{if isset($form.error.password2.missing)}
		  <br/>
		  {gallery->error}
		    {gallery->text text="You must enter the password a second time"}
		  {/gallery->error}
		{/if}
		
		{if isset($form.error.password2.mismatch)}
		  <br/>
		  {gallery->error}
		    {gallery->text text="The passwords you entered did not match"}
		  {/gallery->error}
		{/if}
	      {/gallery->widget2body}
	    {/gallery->widget2}
	  {/if}
	{/gallery->widget2set}

	{gallery->widget2}
	  {gallery->widget2body}
	    {gallery->input type="submit" name="form.action.save"}{gallery->text text="edit user"}{/gallery->input}
	    {gallery->input type="submit" name="form.action.undo"}{gallery->text text="undo"}{/gallery->input}
	    {gallery->input type="submit" name="form.action.cancel"}{gallery->text text="cancel"}{/gallery->input}
	  {/gallery->widget2body}
	{/gallery->widget2}
      {/gallery->detailedboxbody}
    {/gallery->detailedbox}
  {/gallery->form}
{/gallery->mainbody1}
