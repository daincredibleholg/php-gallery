<?php
class Show_Controller extends Gallery_Controller {
    // Set the name of the template to use
    public $template = 'templates/jacob';

    public function Album($id=1) {
	// In Kohana, all views are loaded and treated as objects.
	$this->template->header->active = "Browse Photos";
	$this->template->content = new View('show_album');

	try {
	    $item = ORM::factory('Item', $id);
	} catch (Kohana_Exception $e) {
	    url::redirect('data/reset');
	}

	print '4---------';
	$this->template->content->item = $item;
	$this->template->content->maxRows = 3;
	$this->template->content->maxColumns = 3;
	$this->template->content->children = $item->children;
    }

    public function Item($parentId, $id) {
	// In Kohana, all views are loaded and treated as objects.
	$this->template->header->active = "Browse Photos";
	$this->template->content = new View('show_item');

	$item = ORM::factory('Item', $id);

	$this->template->content->path = $item->parent->Path . '/' . $item->Path;
	$this->template->content->item = $item;
    }

    public function __call($method, $arguments) {
	// Disable auto-rendering
	$this->auto_render = FALSE;

	// By defining a __call method, all pages routed to this controller
	// that result in 404 errors will be handled by this method, instead of
	// being displayed as "Page Not Found" errors.
	echo 'This text is generated by __call. If you expected the index page, you need to use: welcome/index/' . Router::$current_uri;
    }
}
?>