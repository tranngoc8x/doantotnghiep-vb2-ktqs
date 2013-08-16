<?php

class DrugsController extends AppController {
	function beforeAction () {
	}
	function home() {
		$this->Drug->orderBy('id','DESC');
		$this->Drug->setLimit('6');
		$this->Drug->showHasOne();
		$drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.ten",'Type.ten'));

		//bệnh viện,phòng khám, nhà thuốc
		$hopitals = $this->Drug->query("select * from hopitals right join cities on hopitals.cities_id=cities.id where hopitals.trangthai = 1 order by hopitals.id DESC limit 6");
		$clinics = $this->Drug->query("select * from clinics right join cities on clinics.cities_id=cities.id right join departments on clinics.departments_id=departments.id where clinics.trangthai = 1 order by clinics.id DESC limit 6");
		$drugstores = $this->Drug->query("select * from drugstores right join cities on drugstores.cities_id=cities.id where drugstores.trangthai = 1 order by drugstores.id DESC limit 6");



		$this->set(compact('drugs','hopitals','drugstores','clinics'));
	}
	function index() {
		$this->Drug->orderBy('id','DESC');
		$this->Drug->setLimit('20');
		$this->Drug->showHasOne();
		$drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.ten",'Type.ten'));
		$this->set(compact('drugs','idtype'));
	}
	function types($idtype=null) {
		$this->Drug->orderBy('id','DESC');
		$this->Drug->setLimit('20');
		$this->Drug->showHasOne();

		if(!empty($idtype)){
			$this->Drug->where(array('types_id'=>$idtype));
		}
		$drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.ten",'Type.ten'));
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
			if($this->Drug->save()){
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
			if($this->Drug->save()){
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
		$drug = $this->Drug->find();
		$type_id = @$drug['Drug']['types_id'];
		$manu_id = @$drug['Drug']['manus_id'];
		$this->Drug->id = null;

		//thuốc cùng nhóm dược lý
		$this->Drug->setLimit('5');
		$this->Drug->where(array('id !='=>$id,'types_id'=>$type_id));
		$this->Drug->showHasOne();
		$type_drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id','Manu.ten',"Distribute.ten"));

		//rate
		$rates = $this->Drug->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_drugs as Rate WHERE drugs_id = '$id' GROUP BY mark");
		$ssid = $_SESSION["ssid"];
		$your_review = $this->Drug->query("SELECT mark FROM  rate_drugs as Rate WHERE drugs_id = '$id' AND members_id='$ssid'");

		//echo "SELECT DISTINCT (mark), COUNT(mark) as counts FROM  rate_drugs WHERE drugs_id = '$id' GROUP BY mark";
		//thuốc cùng nhà sx
		//$this->Drug->setLimit('5');
		//$this->Drug->where(array('id !='=>$id,'manus_id'=>$manu_id));
		$this->Drug->showHasOne();
		////$manu_drugs = $this->Drug->find(array("Drug.id","Drug.ten","Drug.anh","Drug.sodk",'Manu.id',"Distribute.ten",'Type.ten'));

		$this->set(compact('drug','type_drugs','manu_drugs','rates','your_review'));

	}
	function mark(){}
	function afterAction() {

	}
}