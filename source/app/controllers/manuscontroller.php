<?php
	class ManusController extends AppController{
		function beforeAction () {
		}
		function admin_index(){
			// $this->Drug->showHasOne();
			// $this->Drug->orderBy('ten','ASC');
			// $this->Drug->setLimit('15');
			$manus = $this->Manu->find();
			$this->set('manus',$manus);
		}
		function admin_add(){
			if(isset($_POST['Manu']) && !empty($_POST['Manu'])){
				if($this->Manu->save()){
					$this->redirect(array('controller'=>'manus','action'=>'index'));
				}
			}
		}
		function admin_edit($id = null){
			$manu = $this->Manu->read($id);

			if(isset($_POST['Manu']) && !empty($_POST['Manu'])){
				$this->Manu->id = $id;
				if($this->Manu->save()){
					$this->redirect(array('controller'=>'manus','action'=>'index'));
				}
			}
			$this->set(compact('manu','manus'));
		}
		function admin_delete($id){
			$this->Manu->id = $id;
			$this->Manu->delete();
			$this->redirect(array('controller'=>'manus','action'=>'index'));
		}
		function afterAction () {
		}
	}
?>