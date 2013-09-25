<?php

class City extends AppModel {
	//var $hasOne = array('Category' => 'Category');
	//var $hasManyAndBelongsToMany = array('Tag' => 'Tag');
	var $hasMany = array('Clinic' => 'Clinic','Drugstore'=>'Drugstore','Hopital'=>'Hopital');
}