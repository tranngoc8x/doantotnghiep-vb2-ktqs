<?php

class CitiesController extends AppController {
	function beforeAction () {
	}
	function admin_index() {
		//$this->City->showHasMany();
		$cities = $this->City->find();
		$this->set('cities',$cities);
	}
	function admin_add(){
			if(isset($_POST['City']) && !empty($_POST['City'])){
				if($this->City->save()){
					$this->redirect(array('controller'=>'cities','action'=>'index'));
				}
			}
		}
		function admin_edit($id = null){
			$city = $this->City->read($id);

			if(isset($_POST['City']) && !empty($_POST['City'])){
				$this->City->id = $id;
				if($this->City->save()){
					$this->redirect(array('controller'=>'cities','action'=>'index'));
				}
			}
			$this->set(compact('city','cities'));
		}
		function admin_delete($id){
			$this->City->id = $id;
			$this->City->delete();
			$this->redirect(array('controller'=>'cities','action'=>'index'));
		}
	function afterAction() {

	}
}