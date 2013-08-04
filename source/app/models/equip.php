<?php

class Equip extends AppModel {
	//var $hasMany = array('Drug' => 'Drug');
	var $hasOne = array('Manu' => 'Manu','Distribute'=>'Distribute');
}