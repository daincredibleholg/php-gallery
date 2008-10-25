<?php
class Comment_Controller extends Gallery_Controller {
  // Set the name of the template to use
  public $template = 'templates/base';

  public function Delete($commentId) {
    $comment = ORM::factory('comment', $commentId);
    $comment->delete();
    url::redirect('data/index');
  }

  public function Add() {
    Kohana::log('info', 'Adding new comment');

    $author = $this->input->post('author');
    $email = $this->input->post('email');
    $text = $this->input->post('text');
    $item_id = $this->input->post('item_id');

    $comment = ORM::factory('comment');
    $comment->author = $author;
    $comment->email = $email;
    $comment->text = $text;
    $comment->datetime = time();
    $comment->item_id = $item_id;
    $comment->save();
  }
}
?>