<?php

$routing = array(
	'/admin\/(.*?)\/(.*?)\/(.*)/' => 'admin/\1_\2/\3'
);
$authpath = "admin";
$default['controller'] = 'drugs';
$default['action'] = 'index';