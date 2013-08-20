<?php

class Clinic extends AppModel {
	//var $hasOne = array('Manu' => 'Manu','Type'=>"Type",'Distribute'=>'Distribute');
	//var $hasManyAndBelongsToMany = array('Tag' => 'Tag');
	var $hasOne = array('City' => 'City','Department'=>'Department');
	var $hasMany = array('Rate_clinic'=>'Rate_clinic');
}