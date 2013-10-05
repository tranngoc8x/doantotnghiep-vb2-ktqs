<?php

class DrugstoresController extends AppController {
	function beforeAction () {

	}

	function index() {
		$this->Drugstore->orderBy('id','DESC');
		$this->Drugstore->setLimit('20');
		$this->Drugstore->showHasOne();
		$this->Drugstore->showHasMany();
		$drugstores = $this->Drugstore->find();
		$this->set(compact('drugstores'));
		$list_city = $this->Drugstore->query("SELECT * FROM cities where trangthai=1");
		$this->set(compact('list_city'));
	}
	function admin_index() {
		$this->Drugstore->showHasOne();
		$this->Drugstore->orderBy('ten','ASC');
		$this->Drugstore->setLimit('15');
		$drugstores = $this->Drugstore->find();
		$this->set(compact('drugstores'));
		$list_city = $this->Drugstore->query("SELECT * FROM cities where trangthai=1");
		$this->set(compact('list_city'));
	}
	function admin_add(){
		if(isset($_POST['Drugstore']) && !empty($_POST['Drugstore'])){
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
			if($this->Drugstore->save()){
				$this->redirect(array('controller'=>'drugstores','action'=>'index'));
			}
		}
		$cities = $this->Drugstore->lists('cities');
		$this->set(compact('drugstore','cities'));
	}
	function admin_delete($id){
		$this->Drugstore->id = $id;
		$this->Drugstore->delete();
		$this->redirect(array('controller'=>'drugstores','action'=>'index'));
	}
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);
			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					$this->Drugstore->id = $v;
					$this->Drugstore->delete();
				}
			}
		}
		$this->redirect(array('controller'=>'drugstores','action'=>'index'));
	}
	function view($id = null) {
		$this->Drugstore->id = $id;
		$this->Drugstore->showHasOne();
		$this->Drugstore->where(array('id'=>$id));
		$drugstore = $this->Drugstore->find();

		$rates = $this->Drugstore->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_drugstores as Rate WHERE drugstores_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Drugstore->query("SELECT id,mark FROM  rate_drugstores as Rate WHERE drugstores_id = '$id' AND members_id='$ssid'");
		}
		$this->set(compact('drugstore','your_review','rates'));

	}

	//search item
	function label($type){
		global $inflect;
		$f = explode(':', $type);
		$f_key = lcfirst($f[0]).'s_id';// forign key
		$f_id = $f[1];//id forign
		if($f[0] == 'key'){
			$key = 'ten like';
			$this->Drugstore->where(array($key=>$f_id.'%'));
		}else
		$this->Drugstore->where(array($f_key=>$f_id));
		$this->Drugstore->showHasOne();
		$this->Drugstore->showHasMany();
		$results = $this->Drugstore->find();
		$this->set(compact("results"));
	}
	function admin_search($q,$q1){
		$this->_view = "drugstores/admin_index";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Drugstore.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
		//	$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
		}
		$this->Drugstore->where($array);
		$this->Drugstore->showHasOne();
		$this->Drugstore->showHasMany();
		$drugstores = $this->Drugstore->find();
		$this->set(compact("drugstores",'q'));
		$this->set($aq1[0], $aq1[1]);

		$list_city = $this->Drugstore->query("SELECT * FROM cities where trangthai=1");
		$this->set(compact('list_city'));
	}
	function search($q,$q1){
		$this->_view = "drugstores/label";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Drugstore.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
		}
		$this->Drugstore->where($array);
		$this->Drugstore->showHasOne();
		$this->Drugstore->showHasMany();
		$results = $this->Drugstore->find();
		$this->set(compact("results",'q'));
		$this->set($aq1[0], $aq1[1]);

		$list_city = $this->Drugstore->query("SELECT * FROM cities where trangthai=1");
		$this->set(compact('list_city'));
	}
	function afterAction() {

	}
}