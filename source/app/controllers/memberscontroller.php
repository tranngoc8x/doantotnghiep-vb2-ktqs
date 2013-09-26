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
		$mgs_email = "";
		if(isset($_POST['Member']) && !empty($_POST['Member'])){
			//debug($_POST['Member']);
			$code =  $_SESSION['captchastr'];
			if($code != $_POST['Member']['code']){
				$mgs_code = "Mã an toàn không đúng !";
			}
			if($_POST['Member']['password'] != $_POST['Member']['repassword']){
				$mgs_pass = "Mật khẩu không trùng nhau !";
			}
			$count = $this->Member->query("SELECT COUNT(id) as count FROM members where email='".$_POST['Member']['email']."'");
			$count = $count[0]['']['count'];
			if($count>0){
				$mgs_email = "Email đã tồn tại trong hệ thống. Hãy nhập địa chỉ email khác !";
			}
			if(empty($mgs_code) && empty($mgs_pass) && $count <=0){
				$_POST['Member']['password'] = md5($_POST['Member']['repassword']);
				$this->data['Member']['password'] = md5($_POST['Member']['repassword']);
				if($this->Member->save($this->data)){
					$this->redirect(array('controller'=>'drugs','action'=>'index'));
				}
			}
		}
		$this->set(compact('mgs_code','mgs_pass','mgs_email'));
	}

	function myaccount(){
		if(!isset($_SESSION['ssid']) || empty($_SESSION['ssid'])){
			$this->redirect(array('controller'=>'drugs','action'=>'home'));
		}
		$this->Member->where(array('id'=>$_SESSION['ssid']));
		$member = $this->Member->find();
		$this->set(compact('member'));
	}
	function changepass(){
		if(!isset($_SESSION['ssid']) || empty($_SESSION['ssid']))
			$this->redirect(array('controller'=>'drugs','action'=>'home'));

		$mgs_pass = "";
		$mgs_newpass = "";
		$mgs_repass = "";
		$mgs_code = "";
		$mgs ="";
		$err = 0;
		if(isset($_POST['Member']) && !empty($_POST['Member'])){
			if(empty($_POST['Member']['password'])){
				$mgs_pass = "Bạn chưa nhập mật khẩu!";
				$err=1;
			}
			if(empty($_POST['Member']['newpass'])){
				$mgs_newpass = "Bạn chưa điền mật khẩu mới!";
				$err=1;
			}
			if($_POST['Member']['newpass'] != $_POST['Member']['repassword']){
				$mgs_repass = "Mật khẩu không giống nhau!";
				$err=1;
			}
			$code =  $_SESSION['captchastr'];
			if($code != $_POST['Member']['code']){
				$mgs_code = "Mã an toàn không đúng !";
				$err=1;
			}

			$this->Member->where(array('id'=>$_SESSION['ssid'],'password'=>md5($_POST['Member']['password'])));
			$member = $this->Member->find();
			if(empty($member) || count($member)<=0){
				$mgr_oldpass = "Mật khẩu hiện tại không chính xác!";
				$err=1;
			}
			if($err==0){
			 	$pass = md5($_POST['Member']['newpass']);
			 	$this->Member->query("UPDATE members set password='".$pass."' WHERE id='".$_SESSION['ssid']."'");
			 	$this->redirect(array('controller'=>'members','action'=>'myaccount'));
			}
		}
		$this->set(compact('mgs_pass','mgs_newpass','mgs_repass','mgs_code','mgr_oldpass'));
	}
	function updateinfor(){
		if(!isset($_SESSION['ssid']) || empty($_SESSION['ssid']))
			$this->redirect(array('controller'=>'drugs','action'=>'home'));
		$data = $this->Member->read($_SESSION['ssid']);
		if(isset($_POST['Member']) && !empty($_POST['Member'])){
		 	$this->Member->query("UPDATE members set ten='".$_POST['Member']['ten']."',infor='".$_POST['Member']['infor']."' WHERE id='".$_SESSION['ssid']."'");
		 	$this->redirect(array('controller'=>'members','action'=>'myaccount'));
		}
		$this->set(compact('data'));
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