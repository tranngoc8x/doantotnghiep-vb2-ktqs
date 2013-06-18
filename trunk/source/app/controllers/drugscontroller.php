<?php

class DrugsController extends AppController {
	function beforeAction () {
	}
	function index() {
		$this->Drug->orderBy('ten','ASC');
		$this->Drug->setLimit('10');
		$this->Drug->setPage('1');
		//$this->Drug->showHasOne();
		//$this->Drug->showHasMany();
		//$this->Drug->where('parent_id','0');
		$drugs = $this->Drug->find(array("id","ten","anh"));
		$this->set(compact('drugs'));
		//echo
		//debug($drugs);
	}
	function admin_index() {
		$this->Drug->orderBy('ten','ASC');
		$this->Drug->setLimit('15');
		$drugs = $this->Drug->find(array("id","ten","anh"));
		$this->set(compact('drugs'));

		//debug($this);
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