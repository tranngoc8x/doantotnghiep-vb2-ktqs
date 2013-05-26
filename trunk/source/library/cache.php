<?php
class Cache {

	function get($fileName) {
		$fileName = APP.DS.'tmp'.DS.'cache'.DS.$fileName;
		if (file_exists($fileName)) {
			$handle = fopen($fileName, 'rb');
			$variable = fread($handle, filesize($fileName));
			fclose($handle);
			return unserialize($variable);
		} else {
			return null;
		}
	}
	
	function set($fileName,$variable) {
		$fileName = APP.DS.'tmp'.DS.'cache'.DS.$fileName;
		$handle = fopen($fileName, 'a');
		fwrite($handle, serialize($variable));
		fclose($handle);
	}

}
