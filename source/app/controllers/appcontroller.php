<?php
class AppController extends TntController {
	var $helper = array('Counter');
	//var $component =array("Spreadsheet_Excel_Reader");
	function __construct($controller, $action) {
		parent:: __construct($controller, $action);
		if($this->_admin){
			$this->_template = 'admin';
			//echo $this->_action;
			if((!isset($_SESSION['admin']) || empty($_SESSION['admin'])) && $this->_action != 'admin_login')
			{
				$this->redirect(array('controller'=>'users','action'=>'login'));
			}
		}
		$this->_common();
	}
	function beforeAction () {
	}
	function _common(){
		global $inflect;
		$alpa = array("a"=>"A","b"=>"B","c"=>"C","d"=>"D","e"=>"E","f"=>"F","g"=>"G","h"=>"H","i"=>"I","j"=>"J","k"=>"K","l"=>"L","m"=>"M","n"=>"N","o"=>"O","p"=>"P","q"=>"Q","r"=>"R","s"=>"S","t"=>"T","u"=>"U","v"=>"V","x"=>"X","y"=>"Y","z"=>"Z");
		$model = ucfirst($inflect->singularize($this->_controller));
		if($model !='Clinic'){
			$title_bar = "Nhóm thuốc";
			$sidebar = $this->{$model}->query("select id,ten,'drugs' as controller from types as Menu where trangthai = 1");
		}else{
			$title_bar = "Chuyên khoa";
			$sidebar = $this->{$model}->query("select id,ten,'clinics' as controller from departments as Menu where trangthai = 1");
		}
		$footer = $this->{$model}->query("select content from infors where id = 1 and trangthai = 1 limit 1");
		$contact = $this->{$model}->query("select content from infors where id = 2 and trangthai = 1 limit 1");
		$this->set(compact("sidebar","footer","contact","title_bar","alpa"));
		// debug($footer);
	}

	function afterAction() {
	}
}

?>