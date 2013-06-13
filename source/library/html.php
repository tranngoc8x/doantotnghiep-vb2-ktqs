<?php

class HTML {
	function link($text,$path,$dis = null,$alert = false,$confirmMessage = "Bạn có chắc muốn thực hiện hành động này ?") {
		$path = str_replace(' ','-',$path);
		$_path = implode("/", $path);
		$_dis = " ";
		if(!empty($dis)){
			foreach ($dis as $key => $value) {
				$_dis .= $key.'="'.$value.'" ';
			}
		}


		if ($alert == TRUE) {
			$data = '<a href="javascript:void(0);" '.$_dis.' onclick="javascript:jumpTo(\''.BASE_PATH.'/'.$_path.'\',\''.$confirmMessage.'\')">'.$text.'</a>';
		} else {
			$data = '<a href="'.BASE_PATH.'/'.$_path.'" '.$_dis.'>'.$text.'</a>';
		}
		return $data;
	}
	function img($src=null,$array = null){
		$tt = "";
		if(is_array($array)){
			foreach ($array as $key => $value) {
				$tt .= $key."='".$value."' ";
			}
		}
		return "<img src='".BASE_PATH."/".$src."' ".$tt."/>";
	}
	function script($fileName) {
		$data = "";
		if(!is_array($fileName)){
			$data = '<script src="'.BASE_PATH.'/js/'.$fileName.'.js"></script>';
		}else{
			foreach ($fileName as $value) {
				$data .= "\n\r".'<script src="'.BASE_PATH.'/js/'.$value.'.js"></script>';
			}
		}
		return $data;
	}

	function css($fileName) {
		$data = "";
		if(!is_array($fileName)){
			$data = '<link href="'.BASE_PATH.'/css/'.$fileName.'.css" rel="stylesheet" type="text/css" />';
		}else{
			foreach ($fileName as $value) {
				$data .= "\n\r".'<link href="'.BASE_PATH.'/css/'.$value.'.css"  rel="stylesheet" type="text/css" />';
			}
		}
		return $data;
	}
	function element($fileName = null) {
		include(APP.'/views/element/'.$fileName.'.php');
	}
}