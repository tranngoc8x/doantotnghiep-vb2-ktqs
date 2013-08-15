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
			if($this->Equip->save()){
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
		$this->set(compact('equip','manu_equips'));

	}
	function afterAction() {

	}
}