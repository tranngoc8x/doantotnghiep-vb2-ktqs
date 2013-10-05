<?php
class InforsController extends AppController {
	function beforeAction () {
	}
	function admin_index() {
		$infors = $this->Infor->find();
		$this->set('infors',$infors);
	}
	function admin_add(){
		if(isset($_POST['Infor']) && !empty($_POST['Infor'])){
			if($this->Infor->save()){
				$this->redirect(array('controller'=>'infors','action'=>'index'));
			}
		}
	}
	function index($id=null){
		$infor = $this->Infor->read($id);
		$this->set(compact('infor'));
	}
	function admin_edit($id = null){
		$infor = $this->Infor->read($id);

		if(isset($_POST['Infor']) && !empty($_POST['Infor'])){
			$this->Infor->id = $id;
			if($this->Infor->save()){
				$this->redirect(array('controller'=>'infors','action'=>'index'));
			}
		}
		$this->set(compact('infor'));
	}
	function admin_delete($id){
		$this->Infor->id = $id;
		$this->Infor->delete();
		$this->redirect(array('controller'=>'infors','action'=>'index'));
	}
	function afterAction() {

	}
}