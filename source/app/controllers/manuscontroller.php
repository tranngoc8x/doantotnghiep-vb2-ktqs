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
		function admin_search($q){
			$this->_view = "manus/admin_index";
			$aq 	= explode(':',$q);
			$q = "";
			if(!empty($aq[1]) && strtolower($aq[1]) != "all")
			{
				$array['extend'] = " MATCH(Manu.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
				//$array['ten LIKE'] = '%'.$aq[1].'%';
				$q = $aq[1];
			}
			$this->Manu->where($array);
			$manus = $this->Manu->find();
			$this->set(compact("manus",'q'));

		}
		function afterAction () {
		}
	}
?>