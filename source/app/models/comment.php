<?php

class Comment extends AppModel {
	var $hasOne = array('Drug' => 'Drug');
}