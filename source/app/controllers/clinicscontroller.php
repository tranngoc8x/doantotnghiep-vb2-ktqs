<?php

class ClinicsController extends AppController {
	function beforeAction () {
	}

	function index() {
		$this->Clinic->orderBy('id','DESC');
		$this->Clinic->setLimit('20');
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));
	}
	function admin_index() {
		$this->Clinic->showHasOne();
		$this->Clinic->orderBy('id','DESC');
		$this->Clinic->setLimit('15');
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));

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
	function view($id = null) {
		$this->Clinic->id = $id;
		$this->Clinic->showHasOne();
		$clinic = $this->Clinic->find();
		$rates = $this->Clinic->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_clinics as Rate WHERE clinics_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Clinic->query("SELECT id,mark FROM  rate_clinics as Rate WHERE clinics_id = '$id' AND members_id='$ssid'");
		}
		$this->set(compact('clinic','rates','your_review'));

	}
	function search($type,$text=null){
		global $inflect;
		$f = explode(':', $type);
		$f_key = lcfirst($f[0]).'s_id';// forign key
		$f_id = $f[1];//id forign
		if($f[0] == 'key'){
			$key = 'ten like';
			$this->Clinic->where(array($key=>$f_id.'%'));
		}else
		$this->Clinic->where(array($f_key=>$f_id));
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$results = $this->Clinic->find();
		$this->set(compact("results"));

	}
	function afterAction() {

	}
}