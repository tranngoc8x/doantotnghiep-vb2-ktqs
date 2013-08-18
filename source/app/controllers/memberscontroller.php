<?php
class MembersController extends AppController {
	function login(){

		if(isset($_POST['Member']) && !empty($_POST['Member'])){
		 	$this->auth($_POST['Member'],'members');
		}
	}
	function logout(){
		session_destroy();
		$this->redirect(array('controller'=>'members','action'=>'login'));
	}
}