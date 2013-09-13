<?php
class EquipsController extends AppController {
	function beforeAction () {
	}
	function admin_index() {
		$this->Equip->showHasMany();
		$this->Equip->showHasOne();
		$equips = $this->Equip->find();
		$this->set('equips',$equips);
	}
	function admin_add(){
		if(isset($_POST['Equip']) && !empty($_POST['Equip'])){
			$fileupload = CommonsController::upload($_FILES,'anh','files/equips');
			if($fileupload == '1' || $fileupload == '2'){
				$this->data['Equip']['anh'] ="";
			}else{
				$this->data['Equip']['anh'] = $fileupload;
			}
			if($this->Equip->save($this->data)){
				$this->redirect(array('controller'=>'equips','action'=>'index'));
			}
		}
		$manus = $this->Equip->lists('manus');
		$distributes = $this->Equip->lists('distributes');
		$this->set(compact('manus','distributes'));
	}
	function admin_edit($id = null){
		$equip = $this->Equip->read($id);

		if(isset($_POST['Equip']) && !empty($_POST['Equip'])){

			$this->Equip->id = $id;
			$fileupload = CommonsController::upload($_FILES,'anh','files/equips');
			if($fileupload == '1' || $fileupload == '2'){
				$this->data['Equip']['anh'] ="";
			}else{
				$this->data['Equip']['anh'] = $fileupload;
			}
			if($this->Equip->save()){
				$this->redirect(array('controller'=>'equips','action'=>'index'));
			}
		}
		$manus = $this->Equip->lists('manus');
		$distributes = $this->Equip->lists('distributes');
		$this->set(compact('equip','manus','distributes'));
	}
	function admin_delete($id){
		$this->Equip->id = $id;
		$this->Equip->delete();
		$this->redirect(array('controller'=>'equips','action'=>'index'));
	}
	function index() {
		$this->Equip->orderBy('id','DESC');
		$this->Equip->setLimit('20');
		$this->Equip->showHasOne();
		$this->Equip->showHasMany();
		$equips = $this->Equip->find();
		$this->set(compact('equips'));
	}
	function view($id = null) {
		$this->Equip->id = $id;
		$this->Equip->showHasOne();
		$equip = $this->Equip->find();
		$manu_id = @$equip['Equip']['manus_id'];
		$this->Equip->id = null;
		$this->Equip->setLimit('8');
		$this->Equip->where(array('id !='=>$id,'manus_id'=>$manu_id));
		$this->Equip->showHasOne();
		$manu_equips = $this->Equip->find(array("Equip.id","Equip.ten","Equip.anh",'Manu.ten',"Distribute.ten"));
		$rates = $this->Equip->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_equips as Rate WHERE equips_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Equip->query("SELECT id,mark FROM  rate_equips as Rate WHERE equips_id = '$id' AND members_id='$ssid' limit 1");
		}
		$this->set(compact('equip','manu_equips','rates','your_review'));

	}
	function afterAction() {

	}
}