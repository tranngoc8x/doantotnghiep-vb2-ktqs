<?php
class AppController extends TntController {

	function __construct($controller, $action) {
		parent:: __construct($controller, $action);
		if($this->_admin){
			$this->_template = 'admin';
		}
		$this->_common();
	}
	function beforeAction () {
	}
	function _common(){
		global $inflect;
		$model = ucfirst($inflect->singularize($this->_controller));
		if($model !='Clinic'){
			$sidebar = $this->{$model}->query("select id,ten,'drugs' as controller from types as Menu where trangthai = 1");
		}else{
			$sidebar = $this->{$model}->query("select id,ten,'clinics' as controller from departments as Menu where trangthai = 1");
		}
		$footer = $this->{$model}->query("select content from infors where id = 1 and trangthai = 1 limit 1");
		$contact = $this->{$model}->query("select content from infors where id = 2 and trangthai = 1 limit 1");
		$this->set(compact("sidebar","footer","contact"));
		// debug($footer);
	}
	function auth($array,$table='users',$usr = 'username',$pas = 'password'){
		global $inflect;
		$model = ucfirst($inflect->singularize($table));
		$this->{$model}->where(array($usr=>$array['username']));
		$temp = $this->{$model}->find();
		if(!empty($temp)){
			if(md5($array['password']) == $temp[0][$model][$pas]){

				$_SESSION['ssid'] = $temp[0][$model]['id'];
				$_SESSION['username'] = $temp[0][$model][$usr];
				$_SESSION['ten'] = $temp[0][$model]['ten'];
				return 1;
			}
			return 0;
		}else{
			return 0;
		}

	}

	function afterAction() {
	}

}

?>