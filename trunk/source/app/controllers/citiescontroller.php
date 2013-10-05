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
	function _ischild($id){
		$c1 = $this->City->query("SELECT COUNT(*) as tong FROM hopitals WHERE cities_id='$id'");
		$c2 = $this->City->query("SELECT COUNT(*) as tong FROM clinics WHERE cities_id='$id'");
		$c3 = $this->City->query("SELECT COUNT(*) as tong FROM drugstrores WHERE cities_id='$id'");
		if($c1[0][""]['tong'] >0 || $c2[0][""]['tong'] >0 || $c3[0][""]['tong'] >0 )
			return true;
		return false;
	}
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);

			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					if($this->_ischild($v) == false){
						$this->City->id = $v;
						$this->City->delete();
					}
				}
			}
		}
		$this->redirect(array('controller'=>'cities','action'=>'index'));
	}
	function admin_search($q){
		$this->_view = "cities/admin_index";
		$aq 	= explode(':',$q);
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		$this->City->where($array);
		$cities = $this->City->find();
		$this->set(compact("cities",'q'));

	}

	function afterAction() {

	}
}