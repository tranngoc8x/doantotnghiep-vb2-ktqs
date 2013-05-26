<?php

class Product extends AppModel {
	var $hasOne = array('Category' => 'Category');
	var $hasManyAndBelongsToMany = array('Tag' => 'Tag');
}