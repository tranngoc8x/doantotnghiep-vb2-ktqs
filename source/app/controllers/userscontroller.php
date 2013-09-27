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
			 		$mgs = "Thông tin đăng nhập không chính xác hoặc tài khoản chưa được kích hoạt!";
			 	}else{
			 		$this->redirect(array('controller'=>'users','action'=>'index'));
			 	}
			}
		}
		$this->set(compact('mgs_pass','mgs_usr','mgs'));
	}

	function admin_logout(){
		$this->doNotRenderHeader = 1;
		unset($_SESSION['admin']);
		unset($_SESSION['name']);
		unset($_SESSION['user']);
		$this->redirect(array('controller'=>'users','action'=>'login'));
	}

	function admin_add(){
		if($_SESSION['admin'] !=1)
			$this->redirect(array('controller'=>'users','action'=>'index'));

		$err = "";
		$err_user = "";
		$err_email = "";
		$error =0;
		if(isset($_POST['User']) && !empty($_POST['User'])){
			if($_POST['User']['password'] != $_POST['User']['repass']){
				$err = "Mật khẩu không trùng nhau !";
				$error = 1;
			}
			$this->User->where(array('username'=>$_POST['User']['username']));
			$u = $this->User->find();
			if(!empty($u) || count($u)>0){
				$err_user = "Tên đăng nhập đã có trong hệ thống";
				$error = 1;
			}
			$this->User->where(array('email'=>$_POST['User']['email']));
			$u1 = $this->User->find();
			if(!empty($u1) || count($u1)>0){
				$err_email = "Email đã có trong hệ thống";
				$error = 1;
			}
			if($error == 0){
				$this->data['User']['password'] = md5($_POST['User']['password']);
				if($this->User->save($this->data)){
					$this->redirect(array('controller'=>'types','action'=>'index'));
				}
			}
		}
		$this->set(compact("arr",'err_email','err_user'));
	}
	function admin_index() {
		$users = $this->User->find();
		$this->set('users',$users);
	}
	function admin_edit($id = null){
		if($_SESSION['admin']==1) $id = $id;
		else $id = $_SESSION['admin'];
		$user = $this->User->read($id);
		if(isset($_POST['User']) && !empty($_POST['User'])){
			$this->User->id = $id;
			if($this->User->save()){
				$this->redirect(array('controller'=>'users','action'=>'index'));
			}
		}
		$this->set(compact('user'));
	}
	function admin_changepass(){
		$mgs_pass = "";
		$mgs_newpass = "";
		$mgs_repass = "";
		$mgs ="";
		$err = 0;
		if(isset($_POST['User']) && !empty($_POST['User'])){
			if(empty($_POST['User']['password'])){
				$mgs_pass = "Bạn chưa nhập mật khẩu!";
				$err=1;
			}
			if(empty($_POST['User']['newpass'])){
				$mgs_newpass = "Bạn chưa điền mật khẩu mới!";
				$err=1;
			}
			if($_POST['User']['newpass'] != $_POST['User']['repassword']){
				$mgs_repass = "Mật khẩu không giống nhau!";
				$err=1;
			}
			$this->User->where(array('id'=>$_SESSION['admin'],'password'=>md5($_POST['User']['password'])));
			$user = $this->User->find();

			if(empty($user) || count($user)<=0){
				$mgr_oldpass = "Mật khẩu hiện tại không chính xác!";
				$err=1;
			}
			if($err==0){
			 	$pass = md5($_POST['User']['newpass']);
			 	$this->User->query("UPDATE users set password='".$pass."' WHERE id='".$_SESSION['admin']."'");
			 	$this->redirect(array('controller'=>'users','action'=>'index'));
			}
		}
		$this->set(compact('mgs_pass','mgs_newpass','mgs_repass','mgr_oldpass'));
	}
	function afterAction() {

	}
}