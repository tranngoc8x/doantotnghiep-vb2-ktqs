<?php
class TntController{
	protected $_controller;
	protected $_action;
	protected $_template;
	protected $_admin = false;
	protected $data = array();
	protected $_view;
	protected $helper = array();
	protected $component = array();
	protected $variables = array();
	public $doNotRenderHeader;
	protected $session;
	public $render;
	function __construct($controller, $action) {
		global $inflect;
		global $authpath;
		$this->session = new Session();
		if(!empty($this->component) && is_array($this->component)){
			foreach ($this->component as $v) {
				$vv  = strtolower($v);
				$$vv = new $v();
			}
		}
		$this->_controller = ucfirst($controller);
		$this->_action = $action;
		$model = ucfirst($inflect->singularize($controller));
		//$this->doNotRenderHeader = 0;
		$this->render = 1;
		$this->$model = new $model;
		$this->_template = "";
		$ar_action = explode('_', $action);
		if(isset($ar_action) && $ar_action[0]== $authpath){
			$this->_admin = true;
		}
		if(isset($_POST)){
			$this->data = array_merge($this->data,$_POST);
		}
		if(isset($_GET)){
			$this->data = array_merge($this->data,$_GET);
		}
		if(isset($_REQUEST)){
			$this->data = array_merge($this->data,$_REQUEST);
		}
	}
	function set($name,$value = null) {
		if(!is_array($name)){
			$this->variables[$name] = $value;
		}else{
			$this->variables = array_merge($name,$this->variables);
		}
	}
	function auth($array,$table='users',$usr = 'username',$pas = 'password'){
		global $inflect;

		$model = ucfirst($inflect->singularize($table));
		$this->{$model}->where(array($usr=>$array['username']));
		$temp = $this->{$model}->find();
		if(!empty($temp)){
			if(md5($array['password']) == $temp[0][$model][$pas] && $temp[0][$model]['trangthai']==1){
				if($this->_admin == true){
					$_SESSION['admin'] = $temp[0][$model]['id'];
					$_SESSION['user'] = $temp[0][$model][$usr];
					$_SESSION['name'] = $temp[0][$model]['ten'];
				}else{
					$_SESSION['ssid'] = $temp[0][$model]['id'];
					$_SESSION['username'] = $temp[0][$model][$usr];
					$_SESSION['ten'] = $temp[0][$model]['ten'];

				}
				return true;
			}
			return false;
		}else{
			return false;
		}

	}
	function render($doNotRenderHeader = 0) {
		$html = new HTML;
		$view = new view;
		$form = new Form;
		$session = new Session;//view
		if(!empty($this->helper) && is_array($this->helper)){
			foreach ($this->helper as $v) {
				$vv  = strtolower($v);
				$$vv = new $v();
			}
		}
		extract($this->variables);
		if(!file_exists(ROOT . DS . 'app' . DS . 'views' . DS . lcfirst($this->_controller) . DS . $this->_action . '.php') && !file_exists(ROOT . DS . 'app' . DS . 'views' . DS . $this->_view . '.php'))
		{
			include(ROOT . DS . 'app' . DS . 'views/layouts/error404.php');
		}else
		{
			if ($doNotRenderHeader == 0) {
				if (file_exists(ROOT . DS . 'app' . DS . 'views' . DS . lcfirst($this->_controller) . DS . $this->_template.'header.php')) {
					include (ROOT . DS . 'app' . DS . 'views' . DS . $controller . DS . $this->_template.'header.php');
				} else {
					include (ROOT . DS . 'app' . DS . 'views' . DS .'layouts'. DS . $this->_template.'header.php');
				}
			}
			if(empty($this->_view)){
				if (file_exists(ROOT . DS . 'app' . DS . 'views' . DS . lcfirst($this->_controller) . DS . $this->_action . '.php')) {
					include (ROOT . DS . 'app' . DS . 'views' . DS . lcfirst($this->_controller) . DS . $this->_action . '.php');

				}
			}else{
				if (file_exists(ROOT . DS . 'app' . DS . 'views' . DS . $this->_view . '.php')) {
					include (ROOT . DS . 'app' . DS . 'views' . DS . $this->_view. '.php');
				}
			}
			if ($doNotRenderHeader == 0) {
				if (file_exists(ROOT . DS . 'app' . DS . 'views' . DS . lcfirst($this->_controller) . DS . $this->_template.'footer.php')) {
					include (ROOT . DS . 'app' . DS . 'views' . DS .lcfirst( $this->_controller) . DS . $this->_template.'footer.php');
				} else {
					include (ROOT . DS . 'app' . DS . 'views' . DS .'layouts'. DS . $this->_template.'footer.php');
				}
			}
		}
    }
    function redirect($opt){
    	extract($opt);
    	$qr =  $_SERVER['QUERY_STRING'];
		$arqr = explode('/', $qr);
		if(isset($arqr[0]) && $arqr[0] == 'url=admin'){
			$d_path = BASE_PATH.'/admin';
		}else{
			$d_path = BASE_PATH;
		}
		header("Location:".$d_path.DS.$controller.DS.$action);
    }
    function element($name,$path = 'elements'){
    	if(empty($name)) return;
    	if($path== 'elements'){
    		include(BASE_PATH.'/views/elements/'.$name);
    	}else{
    		include(BASE_PATH.'/'.$path.'/'.$name);
    	}
    }
    function __destruct() {
		if ($this->render) {
			$this->render($this->doNotRenderHeader);
		}

	}
}