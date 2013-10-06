<?php

final class Counter{

	private $ipList;
	private $countFile;
	private $code;
	private $pathfile ;
	public function __construct(){
		$this->pathfile = dirname(__FILE__);
		$this->ipList 	= $this->pathfile . '/files/ipList.txt';
		$this->countFile= $this->pathfile . '/files/count.txt';
		$this->setCode();
		$this->insertIpInList();
	}

	private function setCode(){
		$this->code = $this->getIP() ."|". gethostbyaddr($this->getIP()) ."|". date('Ymd') ."\r\n";
		return $this;
	}

	private function getCode(){
		return $this->code;
	}


	/**
 	* Pega o Ip do Usu⳩o
 	*
 	* @return string
 	*/
	private function getIP()
	{
		if (isset($_SERVER['REMOTE_ADDR'])) {
			return $_SERVER['REMOTE_ADDR'];
		} else if(isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			return $_SERVER['HTTP_X_FORWARDED_FOR'];
		} else if(isset($_SERVER['HTTP_X_FORWARDED'])) {
			return $_SERVER['HTTP_X_FORWARDED'];
		} else if(isset($_SERVER['HTTP_FORWARDED_FOR'])) {
			return $_SERVER['HTTP_FORWARDED_FOR'];
		} else if(isset($_SERVER['HTTP_FORWARDED'])) {
			return $_SERVER['HTTP_FORWARDED'];
		} else if(isset($_SERVER['HTTP_X_COMING_FROM'])) {
			return $_SERVER['HTTP_X_COMING_FROM'];
		} else if(isset($_SERVER['HTTP_COMING_FROM'])) {
			return $_SERVER['HTTP_COMING_FROM'];
		} else if(isset($_SERVER['HTTP_CLIENT_IP'])) {
			return $_SERVER['HTTP_CLIENT_IP'];
		}
	}
	private function createListIps(){
		$fp = fopen($this->ipList, 'a+') or die("");
		return $this;
	}
	private function getIpInList(){
		if($fp = @fopen($this->ipList, 'r') === FALSE){
			$this->createListIps();//nếu kho mo dc thi tao moi
		}else{
			$fp = fopen($this->ipList, 'r');//nếu mở dc thì đọc dữ liệu
		}
		$ipsArray = array();
		if(count(file($this->ipList)) > 0){
			while (!feof ($fp) ) {
				$line = fgets($fp,100);
				array_push($ipsArray, $line);
			}
		}
		return $ipsArray;
	}

	private function findIpInList(){
		$ipsArray = $this->getIpInList();
		if(sizeof($ipsArray) > 0){
			if(array_search($this->getCode(), $ipsArray) === FALSE){
				return 0;
			}else{
				return 1;
			}
		}else{
			return 0;
		}
	}

	private function insertIpInList(){
		$ipsArray = $this->getIpInList();
		$fp 	= fopen($this->ipList, 'a+') or die("");
		if(sizeof($ipsArray) <= 0)
		{
			fwrite($fp, $this->getCode());
			$this->writeCount();
		}
		else
		{
			if($this->findIpInList() <= 0){
				fwrite($fp, $this->getCode());
				$this->writeCount();
			}
		}
		fclose($fp);
	}
	private function createCountFile(){
		$fp = fopen($this->countFile, "a+");
		fwrite($fp, 0);
		fclose($fp);
	}
	private function readCount(){
		if(!file_exists($this->countFile)){
			$this->createCountFile();
		}
		$fp  = fopen($this->countFile, "r") or die("");
		$num = fread($fp, filesize($this->countFile));
		fclose($fp);
		return $num;
	}
	private function writeCount(){
		$num = $this->readCount();
		$fp  = fopen($this->countFile, "w") or die("");
		fwrite($fp, $num + 1);
		fclose($fp);
	}
	public function getCount(){
		return $this->readCount();
	}
	public function getCountFormated(){
		return number_format($this->readCount(),null, null, '.');
	}
}
