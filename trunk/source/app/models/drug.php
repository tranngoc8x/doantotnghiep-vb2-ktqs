<?php

class Drug extends AppModel {
	var $hasOne = array('Manu' => 'Manu','Type'=>"Type");
	//var $hasManyAndBelongsToMany = array('Tag' => 'Tag');
}