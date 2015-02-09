<?php
if(isset($_GET['url']))
  $url = $_GET['url'];


if (!defined('DS')) {
	define('DS', DIRECTORY_SEPARATOR);
}

if (!defined('ROOT')) {
	define('ROOT', dirname(dirname(dirname(__FILE__))));
}
if (!defined('WEBROOT')) {
	define('WEBROOT', dirname(__FILE__));
}
if (!defined('APP')) {
	define('APP', ROOT.DS.'app');
}
require_once (ROOT . DS . 'library' . DS . 'bootstrap.php');
