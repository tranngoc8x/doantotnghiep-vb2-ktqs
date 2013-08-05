<?php

class DrugstoresController extends AppController {
	function beforeAction () {
	}

	function index() {
		$this->Drugstore->orderBy('id','DESC');
		$this->Drugstore->setLimit('20');
		$this->Drugstore->showHasOne();
		$drugstores = $this->Drugstore->find();
		$this->set(compact('drugstores'));
	}
	function admin_index() {
		$this->Drugstore->showHasOne();
		$this->Drugstore->orderBy('ten','ASC');
		$this->Drugstore->setLimit('15');
		$drugstores = $this->Drugstore->find();
		$this->set(compact('drugstores'));

		//debug($this);
	}
	function admin_add(){
		if(isset($_POST['Drugstore']) && !empty($_POST['Drugstore'])){
			// /debug($_POST['Hopital']);
			if($this->Drugstore->save()){
				$this->redirect(array('controller'=>'drugstores','action'=>'index'));
			}
		}
		$cities = $this->Drugstore->lists('cities');
		$this->set(compact('cities'));
	}
	function admin_edit($id = null){
		$drugstore = $this->Drugstore->read($id);

		if(isset($_POST['Drugstore']) && !empty($_POST['Drugstore'])){
			$this->Drugstore->id = $id;
			$this->Drugstore->save();
			$this->redirect(array('controller'=>'drugstores','action'=>'index'));
		}
		$cities = $this->Drugstore->lists('cities');
		$this->set(compact('drugstore','cities'));
	}
	function admin_delete($id){
		$this->Drugstore->id = $id;
		$this->Drugstore->delete();
		$this->redirect(array('controller'=>'drugstores','action'=>'index'));
	}
	function view($id = null) {
		$this->Drugstore->id = $id;
		$this->Drugstore->showHasOne();
		$drugstore = $this->Drugstore->read($id);
		$this->set(compact('drugstore'));

	}
	function afterAction() {

	}
}