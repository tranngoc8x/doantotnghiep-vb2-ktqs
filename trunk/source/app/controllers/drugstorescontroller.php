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
	}
	function admin_index() {
		$this->Drugstore->showHasOne();
		$this->Drugstore->orderBy('ten','ASC');
		$this->Drugstore->setLimit('15');
		$drugstores = $this->Drugstore->find();
		$this->set(compact('drugstores'));
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
	function search($type){
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
	function afterAction() {

	}
}