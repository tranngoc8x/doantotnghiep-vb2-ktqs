<?php

class CommentsController extends AppController {

	function beforeAction () {

	}

	function view() {
		$this->Comment->showHasOne();
		$this->Comment->showHasMany();
		$comments = $this->Comment->find();
		$this->set('comments',$comments);

	}