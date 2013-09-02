<?php

class Session{
	public $_flash;
	public $model_name;
	function __construct(){
		//@session_start();
	}
	function setFlash($model,$message = "Bạn cần nhập đủ các thông tin!"){
		//extract($_POST[$model]);
		$i=0;
		if(isset($_POST[$model])){
			foreach ($_POST[$model] as $key => $value) {
				$_POST[$model][$key] == null;
				$i++;
			}
			if(empty($_POST[$model])){
				//return  $message;
				echo 1111;
			}
		}
	}
	function writeErr($msg = "Lỗi!" , $field,$type = 'text',$err = 0){
		$typ = 'text';
		$artype = explode('(', $type);
		$int = array('tinyint','int','double','float','long');
		$char = array('text','varchar','nvarchar','shottext','mediumtext','longtext');

		if(in_array($artype, $int)){
			$typ = 'int';
		}
		if(in_array($artype, $char)){
			$typ = 'char';
		}



		if($err==0){
			switch ($typ) {
				case 'int':
					$str= "$('#".$field."').after('<div class=\' span12 errormesage\'>* Dữ liệu phải là số.</div>');";
					break;
				case 'char':
					$str= "$('#".$field."').after('<div class=\' span12 errormesage\'>* ".trim($msg)."</div>');";
					break;
				default:
					$str= "$('#".$field."').after('<div class=\' span12 errormesage\'>* ".trim($msg)."</div>');";

					break;
			}

		}else{
			if(strpos('email',$field) === true){
				if(!filter_var($msg, FILTER_VALIDATE_EMAIL)){
					$str= "$('#".$field."').after('<div class=\' span12 errormesage\'>* Email không đúng định dạng</div>');";
				}else{
					$str= "$('#".$field."').val(\"".trim($msg)."\");";
				}
			}
			else{
				$str= "$('#".$field."').val(\"".trim($msg)."\");";
			}
		}
		return $str;
	}
	
}