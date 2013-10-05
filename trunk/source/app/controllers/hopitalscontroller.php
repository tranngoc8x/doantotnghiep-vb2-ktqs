<?php

class HopitalsController extends AppController {
	function beforeAction () {
	}

	function index() {
		$this->Hopital->orderBy('id','DESC');
		$this->Hopital->setLimit('20');
		$this->Hopital->showHasOne();
		$this->Hopital->showHasMany();
		$hopitals = $this->Hopital->find();
		$this->set(compact('hopitals'));
		$list_city = $this->Hopital->query("SELECT * FROM cities where trangthai=1");
		$this->set(compact('list_city'));
	}
	function admin_index() {
		$this->Hopital->showHasOne();
		$this->Hopital->orderBy('ten','ASC');
		$this->Hopital->setLimit('15');
		$hopitals = $this->Hopital->find();
		$this->set(compact('hopitals'));
		$list_city = $this->Hopital->query("SELECT * FROM cities where trangthai=1");
		$this->set(compact('list_city'));
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
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);
			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					$this->Hopital->id = $v;
					$this->Hopital->delete();
				}
			}
		}
		$this->redirect(array('controller'=>'hopitals','action'=>'index'));
	}
	function view($id = null) {
		$this->Hopital->id = $id;
		$this->Hopital->showHasOne();
		$hopital = $this->Hopital->find();
		$rates = $this->Hopital->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_hopitals as Rate WHERE hopitals_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Hopital->query("SELECT id,mark FROM  rate_hopitals as Rate WHERE hopitals_id = '$id' AND members_id='$ssid'");
		}
		$this->set(compact('hopital','rates','your_review'));

	}

	//search item
	function label($type){
		global $inflect;
		$f = explode(':', $type);
		$f_key = lcfirst($f[0]).'s_id';// forign key
		$f_id = $f[1];//id forign
		if($f[0] == 'key'){
			$key = 'ten like';
			$this->Hopital->where(array($key=>$f_id.'%'));
		}else
		$this->Hopital->where(array($f_key=>$f_id));
		$this->Hopital->showHasOne();
		$this->Hopital->showHasMany();
		$results = $this->Hopital->find();
		$this->set(compact("results"));

	}
	function admin_search($q,$q1){
		$this->_view = "hopitals/admin_index";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Hopital.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			//$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
			// $$aq1[0] = $aq1[1];
			// $q1 = $$aq1[0];
		}
		//debug($array);
		$this->Hopital->where($array);
		$this->Hopital->showHasOne();
		$this->Hopital->showHasMany();
		$hopitals = $this->Hopital->find();
		$this->set(compact("hopitals",'q'));
		$this->set($aq1[0], $aq1[1]);

		$list_city = $this->Hopital->query("SELECT * FROM cities where trangthai=1");
		$this->set(compact('list_city'));
	}
	function search($q,$q1){
		$this->_view = "hopitals/label";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Hopital.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			//$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
			// $$aq1[0] = $aq1[1];
			// $q1 = $$aq1[0];
		}
		//debug($array);
		$this->Hopital->where($array);
		$this->Hopital->showHasOne();
		$this->Hopital->showHasMany();
		$results = $this->Hopital->find();
		$this->set(compact("results",'q'));
		$this->set($aq1[0], $aq1[1]);

		$list_city = $this->Hopital->query("SELECT * FROM cities where trangthai=1");
		$this->set(compact('list_city'));
	}
	function afterAction() {

	}
}