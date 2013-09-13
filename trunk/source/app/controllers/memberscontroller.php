<?php
class MembersController extends AppController {
	function login(){
		if(isset($_SESSION['ssid']) && !empty($_SESSION['ssid']))
			$this->redirect(array('controller'=>'drugs','action'=>'home'));

		$mgs_usr = "";
		$mgs_pass = "";
		$mgs ="";
		if(isset($_POST['Member']) && !empty($_POST['Member'])){
			if(empty($_POST['Member']['username'])){
				$mgs_usr = "Bạn chưa điền tài khoản !";
			}
			if(empty($_POST['Member']['password'])){
				$mgs_pass = "Bạn chưa điền mật khẩu !";
			}

			if(empty($mgs_code) && empty($mgs_pass)){
			 	if(!$this->auth($_POST['Member'],'members')){
			 		$mgs = "Tài khoản hoặc mật khẩu không chính xác !";
			 	}
			}
		}
		$this->set(compact('mgs_pass','mgs_usr','mgs'));
	}

	function register(){
		if(isset($_SESSION['ssid']) && !empty($_SESSION['ssid']))
			$this->redirect(array('controller'=>'drugs','action'=>'home'));
		$mgs_code = "";
		$mgs_pass = "";
		if(isset($_POST['Member']) && !empty($_POST['Member'])){
			//debug($_POST['Member']);
			$code =  $_SESSION['captchastr'];
			if($code != $_POST['Member']['code']){
				$mgs_code = "Mã an toàn không đúng !";
			}
			if($_POST['Member']['password'] != $_POST['Member']['repassword']){
				$mgs_pass = "Mật khẩu không trùng nhau !";
			}

			if(empty($mgs_code) && empty($mgs_pass)){
				$_POST['Member']['password'] = md5($_POST['Member']['repassword']);
				$this->data['Member']['password'] = md5($_POST['Member']['repassword']);
				if($this->Member->save($this->data)){
					$this->redirect(array('controller'=>'drugs','action'=>'index'));
				}
			}
		}
		$this->set(compact('mgs_code','mgs_pass'));
	}

	function myaccount(){
		if(!isset($_SESSION['ssid']) || !empty($_SESSION['ssid']))
			$this->redirect(array('controller'=>'drugs','action'=>'home'));
	}

	function logout(){
		unset($_SESSION['ssid']);
		unset($_SESSION['ten']);
		unset($_SESSION['username']);
		$this->redirect(array('controller'=>'members','action'=>'login'));
	}
	function getInfor($a){
		global $inflect;
		$this->doNotRenderHeader=1;
		$model = ucfirst($inflect->singularize($this->_controller));
		$infor = $this->$model->query("SELECT * FROM members where id='$a'");

		return $infor;
	}
}