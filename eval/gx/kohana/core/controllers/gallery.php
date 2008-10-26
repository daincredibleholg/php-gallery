<?php
class Gallery_Controller extends Template_Controller {
    public function __construct() {
	parent::__construct();

	// Set the default heading and footer
	$this->template->header = new View('templates/header.html');
	$this->template->header->title = 'John Doe\'s Gallery';

	$this->template->header->authenticated = Auth::instance()->logged_in();
	$this->template->footer = new View('templates/footer.html');
    }
}
?>