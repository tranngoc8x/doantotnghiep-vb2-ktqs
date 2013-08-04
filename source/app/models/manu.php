<?php
class Manu extends AppModel{
	var $hasMany = array('Drug'=>'Drug','Equip'=>'Equip');
	var $validate = array(
			'ten'=>array(
				'empty'=>false,
				'message'=>'Tên không được để trống',
				'rule' => array('numeric')
			)
		);
}