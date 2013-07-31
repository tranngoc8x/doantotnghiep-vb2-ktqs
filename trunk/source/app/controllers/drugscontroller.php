<?php

class DrugsController extends AppController {
	function beforeAction () {
	}
	function home() {
		$this->Drug->orderBy('id','DESC');
		$this->Drug->setLimit('6');
	//	$this->Drug->setPage('1');
		$this->Drug->showHasOne();
		//$this->Drug->showHasOne();
		//$this->Drug->showHasMany();
		//$this->Drug->where('parent_id','0');
		$drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.ten",'Type.ten'));
		$this->set(compact('drugs'));
		//echo
		//debug($drugs);
	}
	function index($idtype=null) {
		$this->Drug->orderBy('id','DESC');
		$this->Drug->setLimit('20');
	 	$this->Drug->setPage('1');
		$this->Drug->showHasOne();
		//$this->Drug->showHasOne();
		//$this->Drug->showHasMany();
		if(!empty($idtype)){
			$this->Drug->where(array('types_id'=>$idtype));
		}
		$drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.ten",'Type.ten'));
		$this->set(compact('drugs','idtype'));
		//echo
		//debug($drugs);
	}
	function admin_index() {
		$this->Drug->showHasOne();
		$this->Drug->showHasMany();
		$this->Drug->orderBy('ten','ASC');
		$this->Drug->setLimit('15');
		$drugs = $this->Drug->find();
		$this->set(compact('drugs'));

		//debug($this);
	}
	function admin_add(){
		if(isset($_POST['Drug']) && !empty($_POST['Drug'])){
			$this->Drug->save();
			$this->redirect(array('controller'=>'drugs','action'=>'index'));
		}
		$manus = $this->Drug->lists('manus');
		$types = $this->Drug->lists('types');
		$distributes = $this->Drug->lists('distributes');
		$this->set(compact('manus','types','distributes'));
	}
	function admin_edit($id = null){
		$drug = $this->Drug->read($id);

		if(isset($_POST['Drug']) && !empty($_POST['Drug'])){
			$this->Drug->id = $id;
			$this->Drug->save();
			$this->redirect(array('controller'=>'drugs','action'=>'index'));
		}
		$manus = $this->Drug->lists('manus');
		$types = $this->Drug->lists('types');
		$distributes = $this->Drug->lists('distributes');
		$this->set(compact('drug','manus','types','distributes'));
	}
	function admin_delete($id){
		$this->Drug->id = $id;
		$this->Drug->delete();
		$this->redirect(array('controller'=>'drugs','action'=>'index'));
	}
	function view($id = null) {
		$this->Drug->id = $id;
		$this->Drug->showHasOne();
		//$this->Drug->showHMABTM();
		//$this->Drug->where('id',$id);
		$drug = $this->Drug->find();
		$this->set('drug',$drug);

	}
	function afterAction() {

	}
}