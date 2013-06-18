<?php
class TntController {
	protected $_controller;
	protected $_action;
	protected $_template;
	protected $_admin = false;
	protected $variables = array();
	public $doNotRenderHeader;
	public $render;
	function __construct($controller, $action) {
		global $inflect;
		global $authpath;
		$this->_controller = ucfirst($controller);
		$this->_action = $action;
		$model = ucfirst($inflect->singularize($controller));
		$this->doNotRenderHeader = 0;
		$this->render = 1;
		$this->$model = new $model;
		$this->_template = "";
		$ar_action = explode('_', $action);
		if(isset($ar_action) && $ar_action[0]== $authpath){
			$this->_admin = true;
		}
	}
	function set($name,$value = null) {
		if(!is_array($name)){
			$this->variables[$name] = $value;
		}else{
			$this->variables = array_merge($name,$this->variables);
		}
	}
	function render($doNotRenderHeader = 0) {
		$html = new HTML;
		extract($this->variables);
		if ($doNotRenderHeader == 0) {
			if (file_exists(ROOT . DS . 'app' . DS . 'views' . DS . $this->_controller . DS . $this->_template.'header.php')) {
				include (ROOT . DS . 'app' . DS . 'views' . DS . $controller . DS . $this->_template.'header.php');
			} else {
				include (ROOT . DS . 'app' . DS . 'views' . DS .'layouts'. DS . $this->_template.'header.php');
			}
		}
		if (file_exists(ROOT . DS . 'app' . DS . 'views' . DS . $this->_controller . DS . $this->_action . '.php')) {
			include (ROOT . DS . 'app' . DS . 'views' . DS . $this->_controller . DS . $this->_action . '.php');
		}
		if ($doNotRenderHeader == 0) {
			if (file_exists(ROOT . DS . 'app' . DS . 'views' . DS . $this->_controller . DS . $this->_template.'footer.php')) {
				include (ROOT . DS . 'app' . DS . 'views' . DS . $this->_controller . DS . $this->_template.'footer.php');
			} else {
				include (ROOT . DS . 'app' . DS . 'views' . DS .'layouts'. DS . $this->_template.'footer.php');
			}
		}
    }
    function __destruct() {
		if ($this->render) {
			$this->render($this->doNotRenderHeader);
		}
	}
}