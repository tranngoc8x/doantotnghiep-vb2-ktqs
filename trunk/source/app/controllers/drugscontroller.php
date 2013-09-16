<?php

class DrugsController extends AppController {
	function beforeAction () {
	}
	function home() {
		$this->Drug->orderBy('id','DESC');
		$this->Drug->setLimit('6');
		$this->Drug->showHasOne();
		$this->Drug->showHasMany();
		$this->Drug->unBindModel(array('hasMany' => array('Comment')));
		//$this->Drug->BindModel(array('hasMany' => array('Comment')));
		$drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.id","Distribute.ten",'Type.id','Type.ten'));

		//bệnh viện,phòng khám, nhà thuốc
		$hopitals = $this->Drug->query("select * from hopitals right join cities on hopitals.cities_id=cities.id where hopitals.trangthai = 1 order by hopitals.id DESC limit 6",array("Hopital"=>"Rate_hopital"));
		$clinics = $this->Drug->query("select * from clinics right join cities on clinics.cities_id=cities.id right join departments on clinics.departments_id=departments.id where clinics.trangthai = 1 order by clinics.id DESC limit 6",array("Clinic"=>"Rate_clinic"));
		$drugstores = $this->Drug->query("select * from drugstores right join cities on drugstores.cities_id=cities.id where drugstores.trangthai = 1 order by drugstores.id DESC limit 6",array("Drugstore"=>"Rate_drugstore"));



		$this->set(compact('drugs','hopitals','drugstores','clinics'));
	}
	function index() {
		$this->Drug->orderBy('id','DESC');
		$this->Drug->setLimit('20');
		$this->Drug->showHasOne();
		$this->Drug->showHasMany();
		$this->Drug->unBindModel(array('hasMany' => array('Comment')));
		$drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.id",'Type.id',"Distribute.ten",'Type.ten'));
		$this->set(compact('drugs','idtype'));
	}
	function types($idtype=null) {
		$this->Drug->orderBy('id','DESC');
		$this->Drug->setLimit('20');
		$this->Drug->showHasOne();
		$this->Drug->showHasMany();
		$this->Drug->unBindModel(array('hasMany' => array('Comment')));
		if(!empty($idtype)){
			$this->Drug->where(array('types_id'=>$idtype));
		}
		$drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.id",'Type.id',"Distribute.ten",'Type.ten'));
		$typename = $this->Drug->query("SELECT Type.ten FROM types as Type where Type.id='$idtype'");
		$this->set(compact('drugs','idtype','typename'));
	}
	function admin_index() {
		$this->Drug->showHasOne();
		$this->Drug->showHasMany();
		$this->Drug->orderBy('ten','ASC');
		$this->Drug->setLimit('15');
		$drugs = $this->Drug->find();
		$this->set(compact('drugs'));

		//debug($this);
	}
	function admin_add(){
		if(isset($_POST['Drug']) && !empty($_POST['Drug'])){
		$fileupload = CommonsController::upload($_FILES,'anh','files/drugs');
			if($fileupload == '1' || $fileupload == '2'){
				$this->data['Drug']['anh'] ="";
			}else{
				$this->data['Drug']['anh'] = $fileupload;
			}
			if($this->Drug->save($this->data)){
				$this->redirect(array('controller'=>'drugs','action'=>'index'));
			}
		}
		$manus = $this->Drug->lists('manus');
		$types = $this->Drug->lists('types');
		$distributes = $this->Drug->lists('distributes');
		$this->set(compact('manus','types','distributes'));
	}
	function admin_edit($id = null){
		$drug = $this->Drug->read($id);
		if(isset($_POST['Drug']) && !empty($_POST['Drug'])){
			$this->Drug->id = $id;
			$fileupload = CommonsController::upload($_FILES,'anh','files/drugs');
			if($fileupload == '1' || $fileupload == '2'){
				$this->data['Drug']['anh'] ="";
			}else{
				$this->data['Drug']['anh'] = $fileupload;
			}
			if($this->Drug->save($this->data)){
				$this->redirect(array('controller'=>'drugs','action'=>'index'));
			}
		}
		$manus = $this->Drug->lists('manus');
		$types = $this->Drug->lists('types');
		$distributes = $this->Drug->lists('distributes');
		$this->set(compact('drug','manus','types','distributes'));
	}
	function admin_delete($id){
		$this->Drug->id = $id;
		$this->Drug->delete();
		$this->redirect(array('controller'=>'drugs','action'=>'index'));
	}
	function view($id = null) {
		$this->Drug->id = $id;
		$this->Drug->showHasOne();
		$this->Drug->unBindModel(array('hasMany'=>array('Comment')));
		$drug = $this->Drug->find();
		$type_id = @$drug['Drug']['types_id'];
		$manu_id = @$drug['Drug']['manus_id'];
		$this->Drug->id = null;

		//thuốc cùng nhóm dược lý
		$this->Drug->setLimit('5');
		$this->Drug->where(array('id !='=>$id,'types_id'=>$type_id));
		$this->Drug->showHasOne();
		$this->Drug->unBindModel(array('hasMany'=>array('Comment')));
		$type_drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.ten"));
		//rate
		$rates = $this->Drug->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_drugs as Rate WHERE drugs_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Drug->query("SELECT id,mark FROM  rate_drugs as Rate WHERE drugs_id = '$id' AND members_id='$ssid'");
		}

		//comment
		$comments = $this->Drug->query("SELECT * FROM  comments WHERE drugs_id = '$id'");
		$this->set(compact('drug','type_drugs','manu_drugs','rates','your_review','comments'));

	}
	function mark(){}
	//search item
	function search($type){
		global $inflect;
		$f = explode(':', $type);
		$f_key = lcfirst($f[0]).'s_id';// forign key
		$f_id = $f[1];//id forign
		if($f[0] == 'key'){
			$key = 'ten like';
			$this->Drug->where(array($key=>$f_id.'%'));
		}else
		$this->Drug->where(array($f_key=>$f_id));
		$this->Drug->showHasOne();
		$this->Drug->showHasMany();
		$results = $this->Drug->find();
		$this->set(compact("results"));

	}
	function afterAction() {

	}
}