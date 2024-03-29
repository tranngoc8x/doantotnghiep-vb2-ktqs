<?php
class EquipsController extends AppController {
	function beforeAction () {
	}
	function admin_index() {
		$this->Equip->showHasMany();
		$this->Equip->showHasOne();
		$this->Equip->orderBy('id','DESC');
		$equips = $this->Equip->find();
		$this->set('equips',$equips);
		$list_dis = $this->Equip->query("SELECT * FROM distributes where trangthai=1 order by ten asc");
		$list_manus = $this->Equip->query("SELECT * FROM manus where trangthai=1  order by ten asc");
		$this->set(compact('list_dis','list_manus'));
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
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);
			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					$this->Equip->id = $v;
					$this->Equip->delete();
				}
			}
		}
		$this->redirect(array('controller'=>'equips','action'=>'index'));
	}
	function index() {
		$this->Equip->orderBy('id','DESC');
		if(isset($_POST['orderfield'])){
			$_POST['orderfield'];
			$a = CommonsController::orderData($_POST['orderfield']);
			$n = @$_POST['orderfield'];
		}
		if(isset($_SESSION['orKey']) && isset($_SESSION['orVal'])){
			$this->Equip->orderBy($_SESSION['orKey'],$_SESSION['orVal']);
		}
		$this->Equip->setLimit('20');
		$this->Equip->showHasOne();
		$this->Equip->showHasMany();
		$this->Equip->where(array('trangthai'=>1));
		$equips = $this->Equip->find();
		$this->set(compact('equips'));
		$list_dis = $this->Equip->query("SELECT * FROM distributes where trangthai=1  order by ten asc");
		$list_manus = $this->Equip->query("SELECT * FROM manus where trangthai=1  order by ten asc");
		$this->set(compact('list_dis','list_manus','n'));
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
		$this->Equip->showHasMany();
		$manu_equips = $this->Equip->find(array("Equip.id","Equip.ten","Equip.anh",'Manu.ten',"Distribute.id","Distribute.ten"));
		$rates = $this->Equip->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_equips as Rate WHERE equips_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Equip->query("SELECT id,mark FROM  rate_equips as Rate WHERE equips_id = '$id' AND members_id='$ssid' limit 1");
		}
		$this->set(compact('equip','manu_equips','rates','your_review'));

	}
	function label($type,$text=null){
		$this->doNotRenderHeader = 0;
		global $inflect;
		$f = explode(':', $type);
		$f_key = lcfirst($f[0]).'s_id';// forign key
		$f_id = $f[1];//id forign
		if($f[0] == 'key'){
			$key = 'ten like';
			$this->Equip->where(array($key=>$f_id.'%'));
		}else
		$this->Equip->where(array($f_key=>$f_id));
		$this->Equip->where(array('trangthai'=>1));
		$this->Equip->orderBy('id','DESC');
		if(isset($_POST['orderfield'])){
			$_POST['orderfield'];
			$a = CommonsController::orderData($_POST['orderfield']);
			$n = @$_POST['orderfield'];
		}
		if(isset($_SESSION['orKey']) && isset($_SESSION['orVal'])){
			$this->Equip->orderBy($_SESSION['orKey'],$_SESSION['orVal']);
		}
		$this->Equip->showHasOne();
		$this->Equip->showHasMany();
		$results = $this->Equip->find();
		$this->set(compact("results",'n'));

	}
	function search($q,$q1,$q2){
		$this->_view = "equips/label";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$aq2 	= explode(':',$q2);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Equip.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			//$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
			// $$aq1[0] = $aq1[1];
			// $q1 = $$aq1[0];
		}
		if(!empty($aq2[1]) && strtolower($aq2[1]) != "all")
		{
			$array[$aq2[0].'s_id'] = $aq2[1];
		}
		//debug($array);
		$this->Equip->where($array);
		$this->Equip->where(array('trangthai'=>1));
		$this->Equip->showHasOne();
		$this->Equip->showHasMany();
		$this->Equip->orderBy('id','DESC');
		if(isset($_POST['orderfield'])){
			$_POST['orderfield'];
			$a = CommonsController::orderData($_POST['orderfield']);
			$n = @$_POST['orderfield'];
		}
		if(isset($_SESSION['orKey']) && isset($_SESSION['orVal'])){
			$this->Equip->orderBy($_SESSION['orKey'],$_SESSION['orVal']);
		}
		$results = $this->Equip->find();
		$this->set(compact("results",'q'));
		$this->set($aq1[0], $aq1[1]);
		$this->set($aq2[0], $aq2[1]);
		$list_dis = $this->Equip->query("SELECT * FROM distributes where trangthai=1   order by ten asc");
		$list_manus = $this->Equip->query("SELECT * FROM manus where trangthai=1  order by ten asc");
		$this->set(compact('list_dis','list_manus','n'));
	}
	function admin_search($q,$q1,$q2){
		$this->_view = "equips/admin_index";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$aq2 	= explode(':',$q2);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Equip.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			//$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
			// $$aq1[0] = $aq1[1];
			// $q1 = $$aq1[0];
		}
		if(!empty($aq2[1]) && strtolower($aq2[1]) != "all")
		{
			$array[$aq2[0].'s_id'] = $aq2[1];
		}
		//debug($array);
		$this->Equip->where($array);
		$this->Equip->showHasOne();
		$this->Equip->showHasMany();
		$this->Equip->orderBy('id','DESC');
		$equips = $this->Equip->find();
		$this->set(compact("equips",'q'));
		$this->set($aq1[0], $aq1[1]);
		$this->set($aq2[0], $aq2[1]);
		$list_dis = $this->Equip->query("SELECT * FROM distributes where trangthai=1  order by ten asc");
		$list_manus = $this->Equip->query("SELECT * FROM manus where trangthai=1  order by ten asc");
		$this->set(compact('list_dis','list_manus'));
	}
	function admin_reader(){
			$mgs = "";
			if(isset($_POST['Equip']) && !empty($_POST['Equip']))
			{
				$fileupload = CommonsController::upload($_FILES,'file','files/temps/');
				if($fileupload != '1' && $fileupload != '2')
				{
					$excel = new Spreadsheet_Excel_Reader(WEBROOT."/files/temps/".$fileupload);
					$sheet = 0;
					$i=1;
					for($row=2;$row<=($excel->rowcount($sheet));$row++)
					{
						$this->data = array();
						if(!$excel->sheets[$sheet]['cellsInfo'][$row][$col]['dontprint'])
						{
							$ten 				= $excel->val($row,1);
							$anh 				= $excel->val($row,2);
							$chucnang 			= $excel->val($row,3);
							$gioithieu 			= $excel->val($row,4);
							$manus_id 			= $excel->val($row,5);
							$distributes_id 	= $excel->val($row,6);
							$trangthai 			= $excel->val($row,7);

							$this->data['Equip']['ten'] = $ten;
							$this->data['Equip']['anh'] = $anh;
							$this->data['Equip']['chucnang'] = $chucnang;
							$this->data['Equip']['gioithieu'] = $gioithieu;
							$this->data['Equip']['manus_id'] = (string)$manus_id;
							$this->data['Equip']['distributes_id'] = (string)$distributes_id;
							$this->data['Equip']['trangthai'] = (string)$trangthai;
						}
						//debug($this->data);

						if(!$this->Equip->save($this->data)){
							$mgs = "Có lỗi trong quá trình nhập dữ liệu. Xuất hiện lỗi ở bản ghi số :".($i);
							break;
						}
						$i++;
					}
					@unlink(WEBROOT."/files/temps/".$fileupload);
					if($i==$excel->rowcount($sheet)){$mgs = "Quá trình nhập đã hoàn tất!";}
				}else{
					$mgs = "File upload không đúng!";
				}

			}
			$this->set(compact('mgs'));
		}
	function afterAction() {

	}
}