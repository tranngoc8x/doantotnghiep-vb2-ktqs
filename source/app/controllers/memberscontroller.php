<?php
class MembersController extends AppController {
	function login(){

		if(isset($_POST['Member']) && !empty($_POST['Member'])){
		 	$this->auth($_POST['Member'],'members');
		}
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