<?php

class ContactsController extends AppController {
	function beforeAction () {
	}
	function admin_index() {
		$this->Contact->showHasOne();
		$this->Contact->orderBy('ten','ASC');
		$this->Contact->setLimit('15');
		$contacts = $this->Contact->find();
		$this->set(compact('contacts'));

		//debug($this);
	}
	function index(){
		$mgs_code = "";
		if(isset($_POST['Contact']) && !empty($_POST['Contact'])){
			$code =  $_SESSION['captchastr'];
			if(strcmp ($code ,$_POST['Contact']['code'])!=0){
				$mgs_code = "Mã an toàn không đúng !";
			}
			if(empty($mgs_code)){
				if($this->Contact->save()){
					$this->redirect(array('controller'=>'contacts','action'=>'index'));
				}
			}
		}
		$this->set(compact('mgs_code'));
	}
	function admin_view($id = null){
		$contact = $this->Contact->read($id);

		if(isset($_POST['Contact']) && !empty($_POST['Contact'])){
			$this->Contact->id = $id;
			$this->Contact->save();
			$this->redirect(array('controller'=>'contacts','action'=>'index'));
		}
		$this->set(compact('contact'));
	}
	function admin_delete($id){
		$this->Contact->id = $id;
		$this->Contact->delete();
		$this->redirect(array('controller'=>'contacts','action'=>'index'));
	}
	function view($id = null) {
		$this->Contact->id = $id;
		$this->Contact->showHasOne();
		$contact = $this->Contact->find();
		//$typename = $this->Clinic->query("SELECT Type.ten FROM types as Type where Type.id='$idtype'");
		$this->set(compact('contact'));

	}
	function afterAction() {

	}
}