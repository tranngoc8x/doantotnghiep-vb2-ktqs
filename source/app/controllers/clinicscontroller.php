<?php

class ClinicsController extends AppController {
	function beforeAction () {
	}

	function index() {
		$this->Clinic->orderBy('id','DESC');
		$this->Clinic->setLimit('20');
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$this->Clinic->where(array('trangthai'=>1));
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));
		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
	}

	function types($id) {
		$this->Clinic->orderBy('id','DESC');
		$this->Clinic->setLimit('20');
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$this->Clinic->where(array('trangthai'=>1,'departments_id'=>$id));
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));
		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
	}
	function admin_index() {
		$this->Clinic->showHasOne();
		$this->Clinic->orderBy('id','DESC');
		$this->Clinic->setLimit('15');
		$clinics = $this->Clinic->find();
		$this->set(compact('clinics'));
		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
		//debug($this);
	}
	function admin_add(){
		if(isset($_POST['Clinic']) && !empty($_POST['Clinic'])){
			//debug($_POST['Clinic']);
			if($this->Clinic->save()){
				$this->redirect(array('controller'=>'clinics','action'=>'index'));
			}
		}
		$cities = $this->Clinic->lists('cities');
		$departments = $this->Clinic->lists('departments');
		$this->set(compact('cities','departments'));
	}
	function admin_edit($id = null){
		$clinic = $this->Clinic->read($id);

		if(isset($_POST['Clinic']) && !empty($_POST['Clinic'])){
			$this->Clinic->id = $id;
			if($this->Clinic->save()){
				$this->redirect(array('controller'=>'clinics','action'=>'index'));
			}
		}
		$cities = $this->Clinic->lists('cities');
		$departments = $this->Clinic->lists('departments');
		$this->set(compact('clinic','departments','cities'));
	}
	function admin_delete($id){
		$this->Clinic->id = $id;
		$this->Clinic->delete();
		$this->redirect(array('controller'=>'clinics','action'=>'index'));
	}
	function admin_multidel($str = null){
		if($str!=null){
			$ar = explode(',', $str);
			foreach ($ar as   $v) {
				if(!empty($v) && is_numeric($v)){
					$this->Clinic->id = $v;
					$this->Clinic->delete();
				}
			}
		}
		$this->redirect(array('controller'=>'clinics','action'=>'index'));
	}
	function view($id = null) {
		$this->Clinic->id = $id;
		$this->Clinic->showHasOne();
		$this->Clinic->where(array('trangthai'=>1));
		$clinic = $this->Clinic->find();
		$rates = $this->Clinic->query("SELECT DISTINCT (mark), COUNT(mark) as numbers FROM  rate_clinics as Rate WHERE clinics_id = '$id' GROUP BY mark");
		if(isset($_SESSION["ssid"]) && !empty($_SESSION["ssid"])){
			$ssid = $_SESSION["ssid"];
			$your_review = $this->Clinic->query("SELECT id,mark FROM  rate_clinics as Rate WHERE clinics_id = '$id' AND members_id='$ssid'");
		}
		$this->set(compact('clinic','rates','your_review'));

	}
	function label($type,$text=null){
		global $inflect;
		$f = explode(':', $type);
		$f_key = lcfirst($f[0]).'s_id';// forign key
		$f_id = $f[1];//id forign
		if($f[0] == 'key'){
			$key = 'ten like';
			$this->Clinic->where(array($key=>$f_id.'%'));
		}else
		$this->Clinic->where(array($f_key=>$f_id));
		$this->Clinic->where(array('trangthai'=>1));
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$results = $this->Clinic->find();
		$this->set(compact("results"));

	}
	function admin_search($q,$q1,$q2){
		$this->_view = "clinics/admin_index";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$aq2 	= explode(':',$q2);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Clinic.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
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
		$this->Clinic->where($array);
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$clinics = $this->Clinic->find();
		$this->set(compact("clinics",'q'));
		$this->set($aq1[0], $aq1[1]);
		$this->set($aq2[0], $aq2[1]);

		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
	}
	function search($q,$q1,$q2){
		$this->_view = "clinics/label";
		$aq 	= explode(':',$q);
		$aq1 	= explode(':',$q1);
		$aq2 	= explode(':',$q2);
		$array = array();
		$q = "";
		if(!empty($aq[1]) && strtolower($aq[1]) != "all")
		{
			$array['extend'] = " MATCH(Clinic.ten) AGAINST ('+".$aq[1]."*' IN BOOLEAN MODE)";
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

		$this->Clinic->where($array);
		$this->Clinic->where(array('trangthai'=>1));
		$this->Clinic->showHasOne();
		$this->Clinic->showHasMany();
		$results = $this->Clinic->find();
		$this->set(compact("results",'q'));
		$this->set($aq1[0], $aq1[1]);
		$this->set($aq2[0], $aq2[1]);

		$list_city = $this->Clinic->query("SELECT * FROM cities where trangthai=1");
		$list_des = $this->Clinic->query("SELECT * FROM departments where trangthai=1");
		$this->set(compact('list_city','list_des'));
	}

	function admin_reader(){
			$mgs = "";
			if(isset($_POST['Clinic']) && !empty($_POST['Clinic']))
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
							$linhvuc 		= $excel->val($row,3);
							$diachi 		= $excel->val($row,4);
							$dienthoai 		= $excel->val($row,5);
							$gioithieu 		= $excel->val($row,6);
							$map 			= $excel->val($row,7);
							$departments_id = $excel->val($row,8);
							$cities_id 		= $excel->val($row,9);
							$trangthai 		= $excel->val($row,10);

							$this->data['Clinic']['ten'] = $ten;
							$this->data['Clinic']['daidien'] = $daidien;
							$this->data['Clinic']['linhvuc'] = $linhvuc;
							$this->data['Clinic']['diachi'] = $diachi;
							$this->data['Clinic']['dienthoai'] = (string)$dienthoai;
							$this->data['Clinic']['gioithieu'] = $gioithieu;
							$this->data['Clinic']['map'] = (string)$map;
							$this->data['Clinic']['departments_id'] = (string)$departments_id;
							$this->data['Clinic']['cities_id'] = (string)$cities_id;
							$this->data['Clinic']['trangthai'] = (string)$trangthai;
						}
						//debug($this->data);

						if(!$this->Clinic->save($this->data)){
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