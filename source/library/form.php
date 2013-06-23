<?php

class Form{
	protected $_modelname;
	function create($model,$arr,$dis=null)
	{
		$this->_modelname = $model;
		$qr =  $_SERVER['QUERY_STRING'];
		$arqr = explode('/', $qr);
		if(isset($arqr[0]) && $arqr[0] == 'url=admin'){
			$d_path = BASE_PATH.'/admin';
		}else{
			$d_path = BASE_PATH;
		}
		extract($arr);
		$_dis = "";
		if(!empty($dis)){
			foreach ($dis as $key => $value) {
				$_dis .= $key.'="'.$value.'" ';
			}
		}
		if(!isset($dis['method'])) $_dis = 'method ="POST"';
		$str = "<form name=".$model.$arr['action']." action='".$d_path.DS.$controller.DS.$action."' ".$_dis.">";
		$str.="<input id='".$this->_modelname."id' type='hidden' name='".$this->_modelname."[id]' >";
		return $str;
	}
	function input($name,$opt=null){
		if(!isset($opt['type'])) $opt['type'] = 'text';
		$_opt = "";
		if(!empty($opt)){
			foreach ($opt as $key => $value) {
				$_opt .= $key.'="'.$value.'" ';
			}
		}
		return "<input id='".$this->_modelname.$name."' name='".$this->_modelname."[".$name."]' ".$_opt."/>" ;
	}
	function textarea($name,$val = null,$opt=null){
		$_opt = "";
		if(!empty($opt)){
			foreach ($opt as $key => $value) {
				$_opt .= $key.'="'.$value.'" ';
			}
		}
		return "<textarea id='".$this->_modelname.$name."' name='".$this->_modelname."[".$name."]' ".$_opt.">".$val."</textarea>" ;
	}
	function select($name,$opt=null,$dis=null,$element = false){
		$_opt = "";
		$selected = "";
		$_element="";
		if(!isset($dis['empty']) ||  isset($dis['empty']) && $dis['empty'] == true)
			$_opt .= "<option value='' selected>Chọn một mục</option>";
		if(!empty($opt)){
			foreach ($opt as $key => $value) {
				if(isset($dis['selected']) && $dis['selected'] == $key) $selected = "selected";
				else $selected = "";
				$_opt .= "<option value=".$key." ".$selected.">".$value."</option>";
				//$_opt.='\n\r';
			}
		}
		if(!empty($element)){
			foreach ($element as $key => $value) {
				$_element.= $key.'="'.$value.'" ';
			}
		}
		$str  = "<select id='".$this->_modelname.$name."' name='".$this->_modelname."[".$name."]' ".$_element.">";
		$str .=$_opt;
		$str .="</select>";

		return $str ;
	}

}