<?php
class View extends HTML{
	function rateitem($array=null){
		$person=0;
		$t_result = array();
		$mark = 0;
		if(isset($array['Rate'])){
			$array[0] = $array;
			unset($array['Rate']);
			unset($array['']);
		}
		foreach ($array as $k => $v) {
			//$v['Rate']['mark']: điểm 1,2,3,4,5
			//$v['']['numbers'] số lượng người cho điểm
			$person +=$v['']['numbers'];
			$t_result[$v['Rate']['mark']] = $v['']['numbers'];
			$mark+=$v['Rate']['mark']*$v['']['numbers'];
		}
		$t_result['total'] = $person;
		$mark = round($mark/$person,1);
		$t_result['mark'] = $mark;
		for ($i=1; $i <=5 ; $i++) {
			if(!isset($t_result[$i])){
				$t_result[$i] =0;
			}
		}
		return $t_result;
	}
}