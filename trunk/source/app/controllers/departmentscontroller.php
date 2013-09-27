<?php
class DepartmentsController extends AppController {
	function beforeAction () {
	}
	function admin_index() {
		//$this->Department->showHasMany();
		$departments = $this->Department->find();
		$this->set('departments',$departments);
	}
	function admin_add(){
		if(isset($_POST['Department']) && !empty($_POST['Department'])){
			if($this->Department->save()){
				$this->redirect(array('controller'=>'departments','action'=>'index'));
			}
		}
	}
	function admin_edit($id = null){
		$department = $this->Department->read($id);

		if(isset($_POST['Department']) && !empty($_POST['Department'])){
			$this->Department->id = $id;
			if($this->Department->save()){
				$this->redirect(array('controller'=>'departments','action'=>'index'));
			}
		}
		$this->set(compact('department','departments'));
	}
	function admin_delete($id){
		$this->Department->id = $id;
		$this->Department->delete();
		$this->redirect(array('controller'=>'departments','action'=>'index'));
	}
	function admin_search($q){
		$this->_view = "departments/admin_index";
		$aq 	= explode(':',$q);
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		$this->Department->where($array);
		$departments = $this->Department->find();
		$this->set(compact("departments",'q'));

	}

	function afterAction() {

	}
}