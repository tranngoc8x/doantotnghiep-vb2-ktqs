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
		if($this->_ischild($v) == false){
			$this->Type->id = $id;
			$this->Type->delete();
		}
		$this->redirect(array('controller'=>'types','action'=>'index'));
	}
	function _ischild($id){
		$c1 = $this->Type->query("SELECT COUNT(*) as tong FROM drugs WHERE types_id='$id'");
		if($c1[0][""]['tong'] >0 )
			return true;
		return false;
	}
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);

			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					if($this->_ischild($v) == false){
						$this->Type->id = $v;
						$this->Type->delete();
					}
				}
			}
		}
		$this->redirect(array('controller'=>'types','action'=>'index'));
	}
	function admin_search($q){
		$this->_view = "types/admin_index";
		$aq 	= explode(':',$q);
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Type.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			//$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		$this->Type->where($array);
		$types = $this->Type->find();
		$this->set(compact("types",'q'));

	}
	function admin_reader(){
			$mgs = "";
			if(isset($_POST['Type']) && !empty($_POST['Type']))
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

							$this->data['Type']['ten'] = $ten;
							$this->data['Type']['mota'] = $gioithieu;
							$this->data['Type']['trangthai'] = (string)$trangthai;
						}
						//debug($this->data);

						if(!$this->Type->save($this->data)){
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

	function afterAction() {

	}
}