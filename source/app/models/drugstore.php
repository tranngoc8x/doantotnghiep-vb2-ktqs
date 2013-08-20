<?php

class Drugstore extends AppModel {
	//var $hasOne = array('Manu' => 'Manu','Type'=>"Type",'Distribute'=>'Distribute');
	//var $hasManyAndBelongsToMany = array('Tag' => 'Tag');
	var $hasOne = array('City' => 'City');
	var $hasMany = array('Rate_drugstore'=>'Rate_drugstore');
}