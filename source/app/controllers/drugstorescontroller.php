<?php

class DrugstoresController extends AppController {
	function beforeAction () {

	}

	function index() {
		$this->Drugstore->orderBy('id','DESC');
		if(isset($_POST['orderfield'])){
			$_POST['orderfield'];
			$a = CommonsController::orderData($_POST['orderfield']);
			$n = @$_POST['orderfield'];
		}
		if(isset($_SESSION['orKey']) && isset($_SESSION['orVal'])){
			$this->Drugstore->orderBy($_SESSION['orKey'],$_SESSION['orVal']);
		}
		$this->Drugstore->setLimit('20');
		$this->Drugstore->showHasOne();
		$this->Drugstore->showHasMany();
		$this->Drugstore->where(array('trangthai'=>1));
		$drugstores = $this->Drugstore->find();
		$this->set(compact('drugstores'));
		$list_city = $this->Drugstore->query("SELECT * FROM cities where trangthai=1  order by ten asc");
		$this->set(compact('list_city','n'));
	}
	function admin_index() {
		$this->Drugstore->showHasOne();
		$this->Drugstore->orderBy('id','DESC');
		$this->Drugstore->setLimit('15');
		$drugstores = $this->Drugstore->find();
		$this->set(compact('drugstores'));
		$list_city = $this->Drugstore->query("SELECT * FROM cities where trangthai=1  order by ten asc");
		$this->set(compact('list_city'));
	}
	function admin_add(){
		if(isset($_POST['Drugstore']) && !empty($_POST['Drugstore'])){
			if($this->Drugstore->save()){
				$this->redirect(array('controller'=>'drugstores','action'=>'index'));
			}
		}
		$cities = $this->Drugstore->lists('cities');
		$this->set(compact('cities'));
	}
	function admin_edit($id = null){
		$drugstore = $this->Drugstore->read($id);

		if(isset($_POST['Drugstore']) && !empty($_POST['Drugstore'])){
			$this->Drugstore->id = $id;
			//debug($_POST);
			if($this->Drugstore->save()){
				$this->redirect(array('controller'=>'drugstores','action'=>'index'));
			}
		}
		$cities = $this->Drugstore->lists('cities');
		$this->set(compact('drugstore','cities'));
	}
	function admin_delete($id){
		$this->Drugstore->id = $id;
		$this->Drugstore->delete();
		$this->redirect(array('controller'=>'drugstores','action'=>'index'));
	}
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);
			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					$this->Drugstore->id = $v;
					$this->Drugstore->delete();
				}
			}
		}
		$this->redirect(array('controller'=>'drugstores','action'=>'index'));
	}
	function view($id = null) {
		$this->Drugstore->id = $id;
		$this->Drugstore->showHasOne();
		$this->Drugstore->where(array('trangthai'=>1));
		$drugstore = $this->Drugstore->find();

		$rates = $this->Drugstore->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_drugstores as Rate WHERE drugstores_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Drugstore->query("SELECT id,mark FROM  rate_drugstores as Rate WHERE drugstores_id = '$id' AND members_id='$ssid'");
		}
		$this->set(compact('drugstore','your_review','rates'));

	}

	//search item
	function label($type){
		global $inflect;
		$f = explode(':', $type);
		$f_key = lcfirst($f[0]).'s_id';// forign key
		$f_id = $f[1];//id forign
		if($f[0] == 'key'){
			$key = 'ten like';
			$this->Drugstore->where(array($key=>$f_id.'%'));
		}else
		$this->Drugstore->where(array($f_key=>$f_id));
		$this->Drugstore->where(array('trangthai'=>1));
		$this->Drugstore->showHasOne();
		$this->Drugstore->orderBy('id','DESC');
		if(isset($_POST['orderfield'])){
			$_POST['orderfield'];
			$a = CommonsController::orderData($_POST['orderfield']);
			$n = @$_POST['orderfield'];
		}
		if(isset($_SESSION['orKey']) && isset($_SESSION['orVal'])){
			$this->Drugstore->orderBy($_SESSION['orKey'],$_SESSION['orVal']);
		}
		$this->Drugstore->showHasMany();
		$results = $this->Drugstore->find();
		$this->set(compact("results",'n'));
	}
	function admin_search($q,$q1){
		$this->_view = "drugstores/admin_index";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Drugstore.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
		//	$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
		}
		$this->Drugstore->where($array);
		$this->Drugstore->showHasOne();
		$this->Drugstore->showHasMany();
		$this->Drugstore->orderBy('id','DESC');
		$drugstores = $this->Drugstore->find();
		$this->set(compact("drugstores",'q'));
		$this->set($aq1[0], $aq1[1]);

		$list_city = $this->Drugstore->query("SELECT * FROM cities where trangthai=1  order by ten asc");
		$this->set(compact('list_city'));
	}
	function search($q,$q1){
		$this->_view = "drugstores/label";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Drugstore.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
			$array['ten LIKE'] = '%'.$aq[1].'%';
			$q = $aq[1];
		}
		if(!empty($aq1[1]) && strtolower($aq1[1]) != "all")
		{
			$array[$aq1[0].'s_id'] = $aq1[1];
		}
		$this->Drugstore->where($array);
		$this->Drugstore->where(array('trangthai'=>1));
		$this->Drugstore->showHasOne();
		$this->Drugstore->orderBy('id','DESC');
		if(isset($_POST['orderfield'])){
			$_POST['orderfield'];
			$a = CommonsController::orderData($_POST['orderfield']);
			$n = @$_POST['orderfield'];
		}
		if(isset($_SESSION['orKey']) && isset($_SESSION['orVal'])){
			$this->Drugstore->orderBy($_SESSION['orKey'],$_SESSION['orVal']);
		}
		$this->Drugstore->showHasMany();
		$results = $this->Drugstore->find();
		$this->set(compact("results",'q','n'));
		$this->set($aq1[0], $aq1[1]);

		$list_city = $this->Drugstore->query("SELECT * FROM cities where trangthai=1  order by ten asc");
		$this->set(compact('list_city'));
	}
	function admin_reader(){
			$mgs = "";
			if(isset($_POST['Drugstore']) && !empty($_POST['Drugstore']))
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
							$ten 			= $excel->val($row,1);
							$daidien 		= $excel->val($row,2);
							$giayphep 		= $excel->val($row,3);
							$ngaycap 		= $excel->val($row,4);
							$ngaycap 		= date("Y-m-d",strtotime($ngaycap));
							$diachi 		= $excel->val($row,5);
							$dienthoai 		= $excel->val($row,6);
							$gioithieu 		= $excel->val($row,7);
							$map 			= $excel->val($row,8);
							$cities_id 		= $excel->val($row,9);
							$trangthai 		= $excel->val($row,10);

							$this->data['Drugstore']['ten'] = $ten;
							$this->data['Drugstore']['daidien'] = $daidien;
							$this->data['Drugstore']['giayphep'] =(string) $giayphep;
							$this->data['Drugstore']['ngaycap'] = $ngaycap;
							$this->data['Drugstore']['diachi'] = $diachi;
							$this->data['Drugstore']['dienthoai'] = (string)$dienthoai;
							$this->data['Drugstore']['map'] = (string)$map;
							$this->data['Drugstore']['gioithieu'] = $gioithieu;
							$this->data['Drugstore']['cities_id'] = (string)$cities_id;
							$this->data['Drugstore']['trangthai'] = (string)$trangthai;
						}
						//debug($this->data);

						if(!$this->Drugstore->save($this->data)){
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