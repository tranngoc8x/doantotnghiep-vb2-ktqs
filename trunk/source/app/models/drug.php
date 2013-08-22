<?php

class Drug extends AppModel {
	var $hasOne = array('Manu' => 'Manu','Type'=>"Type",'Distribute'=>'Distribute');
	var $hasMany = array('Rate_drug'=>'Rate_drug','Comment'=>'Comment');
	//var $hasManyAndBelongsToMany = array('Tag' => 'Tag');
}