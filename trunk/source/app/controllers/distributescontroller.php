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
			$c1 = $this->Distribute->query("SELECT COUNT(*) as tong FROM drugs WHERE distributes_id='$id'");
			$c2 = $this->Distribute->query("SELECT COUNT(*) as tong FROM equips WHERE distributes_id='$id'");
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

		function admin_reader(){
			$mgs = "";
			if(isset($_POST['Distribute']) && !empty($_POST['Distribute']))
			{
				$fileupload = CommonsController::upload($_FILES,'file','files/temps/');
				if($fileupload != '1' && $fileupload != '2')
				{
					$excel = new Spreadsheet_Excel_Reader(WEBROOT."/files/temps/".$fileupload);
					$sheet = 0;
					for($row=2;$row<=($excel->rowcount($sheet));$row++)
					{
						$this->data = array();
						if(!$excel->sheets[$sheet]['cellsInfo'][$row][$col]['dontprint'])
						{
							$ten = $excel->val($row,1);
							$gioithieu = $excel->val($row,2);
							$trangthai = $excel->val($row,3);

							$this->data['Distribute']['ten'] = $ten;
							$this->data['Distribute']['gioithieu'] = $gioithieu;
							$this->data['Distribute']['trangthai'] = (string)$trangthai;
						}
						if(!$this->Distribute->save($this->data)){
							$mgs = "Có lỗi trong quá trình nhập dữ liệu. Xuất hiện lỗi ở bản ghi số :".($i);
							break;
						}
					}
					@unlink(WEBROOT."/files/temps/".$fileupload);
					$mgs = "Quá trình nhập đã hoàn tất!";
				}else{
					$mgs = "File upload không đúng!";
				}

			}
			$this->set(compact('mgs'));
		}

		function afterAction () {
		}
	}
?>