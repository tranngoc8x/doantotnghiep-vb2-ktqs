<?php

$routing = array(
	'/admin\/(.*?)\/(.*?)\/(.*)/' => 'admin/\1/\2/\3'
);
$authpath = "admin";
$default['controller'] = 'drugs';
$default['action'] = 'index';