<?php
class TypesController extends AppController {
	function beforeAction () {
	}
	function admin_index() {
		$this->Type->showHasMany();
		$types = $this->Type->find();
		$this->set('types',$types);
	}
	function admin_add(){
		if(isset($_POST['Type']) && !empty($_POST['Type'])){
			if($this->Type->save()){
				$this->redirect(array('controller'=>'types','action'=>'index'));
			}
		}
	}
	function admin_edit($id = null){
		$type = $this->Type->read($id);

		if(isset($_POST['Type']) && !empty($_POST['Type'])){
			$this->Type->id = $id;
			if($this->Type->save()){
				$this->redirect(array('controller'=>'types','action'=>'index'));
			}
		}
		$this->set(compact('type','types'));
	}
	function admin_delete($id){
		$this->Type->id = $id;
		$this->Type->delete();
		$this->redirect(array('controller'=>'types','action'=>'index'));
	}
	function admin_search($q){
		$this->_view = "types/admin_index";
		$aq 	= explode(':',$q);
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		$this->Type->where($array);
		$types = $this->Type->find();
		$this->set(compact("types",'q'));

	}

	function afterAction() {

	}
}