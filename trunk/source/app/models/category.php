<?php

class Category extends AppModel {
		var $hasMany = array('Product' => 'Product');
		var $hasOne = array('Parent' => 'Category');

}