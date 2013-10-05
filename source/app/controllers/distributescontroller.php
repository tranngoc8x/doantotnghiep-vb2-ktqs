<?php
	class DistributesController extends AppController{
		function beforeAction () {
		}
		function admin_index(){
			// $this->Drug->showHasOne();
			// $this->Drug->orderBy('ten','ASC');
			// $this->Drug->setLimit('15');
			$distributes = $this->Distribute->find();
			$this->set('distributes',$distributes);
		}
		function admin_add(){
			if(isset($_POST['Distribute']) && !empty($_POST['Distribute'])){
				if($this->Distribute->save()){
					$this->redirect(array('controller'=>'distributes','action'=>'index'));
				}
			}
		}
		
		function admin_edit($id = null){
			$distribute = $this->Distribute->read($id);
			if(isset($_POST['Distribute']) && !empty($_POST['Distribute'])){
				$this->Distribute->id = $id;
				if($this->Distribute->save()){
					$this->redirect(array('controller'=>'distributes','action'=>'index'));
				}
			}
			$this->set(compact('distribute','distribute'));
		}
		function admin_delete($id){
			if($this->_ischild($v) == false){
				$this->Distribute->id = $id;
				$this->Distribute->delete();
			}
			$this->redirect(array('controller'=>'distributes','action'=>'index'));
		}
		function _ischild($id){
			$c1 = $this->Distribute->query("SELECT COUNT(*) as tong FROM drugs WHERE manus_id='$id'");
			$c2 = $this->Distribute->query("SELECT COUNT(*) as tong FROM equips WHERE manus_id='$id'");
			if($c1[0][""]['tong'] >0 || $c2[0][""]['tong']>0)
				return true;
			return false;
		}
		function admin_multidel($str = null){
			if($str!=null){
				$ar = explode(',', $str);

				foreach ($ar as   $v) {
					if(!empty($v) && is_numeric($v)){
						if($this->_ischild($v) == false){
							$this->Distribute->id = $v;
							$this->Distribute->delete();
						}
					}
				}
			}
			$this->redirect(array('controller'=>'distributes','action'=>'index'));
		}
		function admin_search($q){
			$this->_view = "distributes/admin_index";
			$aq 	= explode(':',$q);
			$q = "";
			if(!empty($aq[1]) && strtolower($aq[1]) != "all")
			{
				$array['extend'] = " MATCH(Distribute.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
				//$array['ten LIKE'] = '%'.$aq[1].'%';
				$q = $aq[1];
			}
			$this->Distribute->where($array);
			$distributes = $this->Distribute->find();
			$this->set(compact("distributes",'q'));

		}

		function afterAction () {
		}
	}
?>