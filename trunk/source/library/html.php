<?php

class HTML {
	private $js = array();
	function link($text,$path,$prompt = null,$confirmMessage = "Bạn có chắc muốn thực hiện hành động này ?") {
		$path = str_replace(' ','-',$path);
		if ($prompt) {
			$data = '<a href="javascript:void(0);" onclick="javascript:jumpTo(\''.BASE_PATH.'/'.$path.'\',\''.$confirmMessage.'\')">'.$text.'</a>';
		} else {
			$data = '<a href="'.BASE_PATH.'/'.$path.'">'.$text.'</a>';
		}
		return $data;
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