<?php

class Drug extends AppModel {
	var $hasOne = array('Manufacture' => 'Manufacture','Type'=>"Type");
	//var $hasManyAndBelongsToMany = array('Tag' => 'Tag');
}