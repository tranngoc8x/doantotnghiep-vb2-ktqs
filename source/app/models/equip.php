<?php

class Equip extends AppModel {
	var $hasMany = array('Rate_equip' => 'Rate_equip');
	var $hasOne = array('Manu' => 'Manu','Distribute'=>'Distribute');
}