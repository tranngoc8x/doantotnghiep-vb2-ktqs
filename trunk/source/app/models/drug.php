<?php

class Drug extends AppModel {
	var $hasOne = array('Manu' => 'Manu','Type'=>"Type",'Distribute'=>'Distribute');
	//var $hasManyAndBelongsToMany = array('Tag' => 'Tag');
}