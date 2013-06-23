<?php

class HTML{
	function link($text,$path,$dis = null,$confirmMessage = NULL) {
		$path = str_replace(' ','-',$path);
		$_path = implode("/", $path);
		$_dis = " ";
		if(!empty($dis)){
			foreach ($dis as $key => $value) {
				$_dis .= $key.'="'.$value.'" ';
			}
		}
		$qr =  $_SERVER['QUERY_STRING'];
		$arqr = explode('/', $qr);
		if(isset($arqr[0]) && $arqr[0] == 'url=admin'){
			$d_path = BASE_PATH.'/admin';
		}else{
			$d_path = BASE_PATH;
		}
		if ($confirmMessage != NULL) {
			$data = '<a href="javascript:void(0);" '.$_dis.' onclick="javascript:jumpTo(\''.$d_path.'/'.$_path.'\',\'Bạn có chắc muốn xóa bản ghi này không ?\')">'.$text.'</a>';
		} else {
			$data = '<a href="'.$d_path.'/'.$_path.'" '.$_dis.'>'.$text.'</a>';
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
	function stt($idstt){
		if($idstt ==0) echo "Ẩn";
		else echo "Hiển thị";
	}
}