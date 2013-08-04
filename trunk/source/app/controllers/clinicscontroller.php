<?php

class ClinicsController extends AppController {
	function beforeAction () {
	}

	function index() {
		$this->Clinic->orderBy('id','DESC');
		$this->Clinic->setLimit('20');
		$this->Clinic->showHasOne();
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));
	}
	function admin_index() {
		$this->Clinic->showHasOne();
		$this->Clinic->orderBy('ten','ASC');
		$this->Clinic->setLimit('15');
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));

		//debug($this);
	}
	function admin_add(){
		if(isset($_POST['Clinic']) && !empty($_POST['Clinic'])){
			//debug($_POST['Clinic']);
			if($this->Clinic->save()){
				$this->redirect(array('controller'=>'clinics','action'=>'index'));
			}
		}
		$cities = $this->Clinic->lists('cities');
		$this->set(compact('cities'));
	}
	function admin_edit($id = null){
		$clinic = $this->Clinic->read($id);

		if(isset($_POST['Clinic']) && !empty($_POST['Clinic'])){
			$this->Clinic->id = $id;
			if($this->Clinic->save()){
				$this->redirect(array('controller'=>'clinics','action'=>'index'));
			}
		}
		$cities = $this->Clinic->lists('cities');
		$this->set(compact('clinic','cities'));
	}
	function admin_delete($id){
		$this->Clinic->id = $id;
		$this->Clinic->delete();
		$this->redirect(array('controller'=>'clinics','action'=>'index'));
	}
	function view($id = null) {
		$this->Clinic->id = $id;
		$this->Clinic->showHasOne();
		$clinic = $this->Clinic->find();
		//$typename = $this->Clinic->query("SELECT Type.ten FROM types as Type where Type.id='$idtype'");
		$this->set(compact('clinic'));

	}
	function afterAction() {

	}
}