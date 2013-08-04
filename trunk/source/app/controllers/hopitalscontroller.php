<?php

class HopitalsController extends AppController {
	function beforeAction () {
	}

	function index() {
		$this->Hopital->orderBy('id','DESC');
		$this->Hopital->setLimit('20');
		$this->Hopital->showHasOne();
		$hopitals = $this->Hopital->find();
		$this->set(compact('clinics'));
	}
	function admin_index() {
		$this->Hopital->showHasOne();
		$this->Hopital->orderBy('ten','ASC');
		$this->Hopital->setLimit('15');
		$hopitals = $this->Hopital->find();
		$this->set(compact('hopitals'));

		//debug($this);
	}
	function admin_add(){
		if(isset($_POST['Hopital']) && !empty($_POST['Hopital'])){
			// /debug($_POST['Hopital']);
			if($this->Hopital->save()){
				$this->redirect(array('controller'=>'hopitals','action'=>'index'));
			}
		}
		$cities = $this->Hopital->lists('cities');
		$this->set(compact('cities'));
	}
	function admin_edit($id = null){
		$hopital = $this->Hopital->read($id);

		if(isset($_POST['Hopital']) && !empty($_POST['Hopital'])){
			$this->Hopital->id = $id;
			$this->Hopital->save();
			$this->redirect(array('controller'=>'hopitals','action'=>'index'));
		}
		$cities = $this->Hopital->lists('cities');
		$this->set(compact('hopital','cities'));
	}
	function admin_delete($id){
		$this->Hopital->id = $id;
		$this->Hopital->delete();
		$this->redirect(array('controller'=>'hopitals','action'=>'index'));
	}
	function view($id = null) {
		$this->Hopital->id = $id;
		$this->Hopital->showHasOne();
		$hopital = $this->Hopital->find();
		//$typename = $this->Clinic->query("SELECT Type.ten FROM types as Type where Type.id='$idtype'");
		$this->set(compact('hopital'));

	}
	function afterAction() {

	}
}