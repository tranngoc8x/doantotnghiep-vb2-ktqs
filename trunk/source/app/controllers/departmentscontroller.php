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
		if($this->_ischild($v) == false){
			$this->Department->id = $id;
			$this->Department->delete();
		}
		$this->redirect(array('controller'=>'departments','action'=>'index'));
	}
	function _ischild($id){
		$c1 = $this->Department->query("SELECT COUNT(*) as tong FROM clinics WHERE departments_id='$id'");
		if($c1[0][""]['tong'] >0 )
			return true;
		return false;
	}
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);

			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					if($this->_ischild($v) == false){
						$this->Department->id = $v;
						$this->Department->delete();
					}
				}
			}
		}
		$this->redirect(array('controller'=>'types','action'=>'index'));
	}
	function admin_search($q){
		$this->_view = "departments/admin_index";
		$aq 	= explode(':',$q);
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Department.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			//$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		$this->Department->where($array);
		$departments = $this->Department->find();
		$this->set(compact("departments",'q'));

	}

	function afterAction() {

	}
}