<?php

class UsersController extends AppController {
	function beforeAction () {
	}
	function admin_login(){
		$this->doNotRenderHeader = 1;
		if(isset($_SESSION['admin']) && !empty($_SESSION['admin']))
			$this->redirect(array('controller'=>'users','action'=>'index'));

		$mgs_usr = "";
		$mgs_pass = "";
		$mgs ="";
		if(isset($_POST['User']) && !empty($_POST['User'])){
			if(empty($_POST['User']['username'])){
				$mgs_usr = "Bạn chưa điền tài khoản !";
			}
			if(empty($_POST['User']['password'])){
				$mgs_pass = "Bạn chưa điền mật khẩu !";
			}

			if(empty($mgs_code) && empty($mgs_pass)){
			 	if(!$this->auth($_POST['User'],'users')){
			 		$mgs = "Tài khoản hoặc mật khẩu không chính xác !";
			 	}else{
			 		$this->redirect(array('controller'=>'drugs','action'=>'index'));
			 	}
			}
		}
		$this->set(compact('mgs_pass','mgs_usr','mgs'));
	}

	function myaccount(){
		if(!isset($_SESSION['admin']) || !empty($_SESSION['admin']))
			$this->redirect(array('controller'=>'drugs','action'=>'home'));
	}

	function admin_logout(){
		$this->doNotRenderHeader = 1;
		unset($_SESSION['admin']);
		unset($_SESSION['name']);
		unset($_SESSION['user']);
		$this->redirect(array('controller'=>'users','action'=>'login'));
	}
	function afterAction() {

	}
}