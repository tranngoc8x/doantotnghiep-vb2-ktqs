<?php

class ClinicsController extends AppController {
	function beforeAction () {
	}

	function index() {
		$this->Clinic->orderBy('id','DESC');
		$this->Clinic->setLimit('20');
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$this->Clinic->where(array('trangthai'=>1));
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));
		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
	}
	function admin_index() {
		$this->Clinic->showHasOne();
		$this->Clinic->orderBy('id','DESC');
		$this->Clinic->setLimit('15');
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));
		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
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
		$departments = $this->Clinic->lists('departments');
		$this->set(compact('cities','departments'));
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
		$departments = $this->Clinic->lists('departments');
		$this->set(compact('clinic','departments','cities'));
	}
	function admin_delete($id){
		$this->Clinic->id = $id;
		$this->Clinic->delete();
		$this->redirect(array('controller'=>'clinics','action'=>'index'));
	}
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);
			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					$this->Clinic->id = $v;
					$this->Clinic->delete();
				}
			}
		}
		$this->redirect(array('controller'=>'clinics','action'=>'index'));
	}
	function view($id = null) {
		$this->Clinic->id = $id;
		$this->Clinic->showHasOne();
		$this->Clinic->where(array('trangthai'=>1));
		$clinic = $this->Clinic->find();
		$rates = $this->Clinic->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_clinics as Rate WHERE clinics_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Clinic->query("SELECT id,mark FROM  rate_clinics as Rate WHERE clinics_id = '$id' AND members_id='$ssid'");
		}
		$this->set(compact('clinic','rates','your_review'));

	}
	function label($type,$text=null){
		global $inflect;
		$f = explode(':', $type);
		$f_key = lcfirst($f[0]).'s_id';// forign key
		$f_id = $f[1];//id forign
		if($f[0] == 'key'){
			$key = 'ten like';
			$this->Clinic->where(array($key=>$f_id.'%'));
		}else
		$this->Clinic->where(array($f_key=>$f_id));
		$this->Clinic->where(array('trangthai'=>1));
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$results = $this->Clinic->find();
		$this->set(compact("results"));

	}
	function admin_search($q,$q1,$q2){
		$this->_view = "clinics/admin_index";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$aq2 	= explode(':',$q2);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Clinic.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			//$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
			// $$aq1[0] = $aq1[1];
			// $q1 = $$aq1[0];
		}
		if(!empty($aq2[1]) && strtolower($aq2[1]) != "all")
		{
			$array[$aq2[0].'s_id'] = $aq2[1];
		}
		//debug($array);
		$this->Clinic->where($array);
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$clinics = $this->Clinic->find();
		$this->set(compact("clinics",'q'));
		$this->set($aq1[0], $aq1[1]);
		$this->set($aq2[0], $aq2[1]);

		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
	}
	function search($q,$q1,$q2){
		$this->_view = "clinics/label";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$aq2 	= explode(':',$q2);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Clinic.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			//$array['ten LIKE'] = '%'.$aq[1].'%';

			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
			// $$aq1[0] = $aq1[1];
			// $q1 = $$aq1[0];
		}
		if(!empty($aq2[1]) && strtolower($aq2[1]) != "all")
		{
			$array[$aq2[0].'s_id'] = $aq2[1];
		}
		//debug($array);

		$this->Clinic->where($array);
		$this->Clinic->where(array('trangthai'=>1));
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$results = $this->Clinic->find();
		$this->set(compact("results",'q'));
		$this->set($aq1[0], $aq1[1]);
		$this->set($aq2[0], $aq2[1]);

		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
	}
	function afterAction() {

	}
}