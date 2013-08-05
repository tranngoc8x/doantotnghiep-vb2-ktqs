<?php
class AppController extends TntController {

	function __construct($controller, $action) {
		parent:: __construct($controller, $action);
		if($this->_admin){
			$this->_template = 'admin';
		}
		$this->common();
	}
	function beforeAction () {

	}
	function common(){
		global $inflect;
		$model = ucfirst($inflect->singularize($this->_controller));
		$sidebar = $this->{$model}->query("select id,ten from types where trangthai = 1");
		$footer = $this->{$model}->query("select content from infors where id = 1 and trangthai = 1 limit 1");
		$this->set(compact("sidebar","footer"));
		// debug($footer);

	}
	function afterAction() {
	}
}

?>