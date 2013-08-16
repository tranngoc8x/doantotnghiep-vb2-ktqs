<?php
class View extends HTML{
	function rateitem($array=null){
		$total=0;
		$t_result = array();
		$mark = 0;
		foreach ($array as $k => $v) {
			$total +=$v['']['numbers'];
			$t_result[$v['Rate']['mark']] = $v['']['numbers'];
			if($v['Rate']['mark']==3){
				$mark+=$v['Rate']['mark']/2;
			}
			if($v['Rate']['mark']>3){
				$mark+=$v['']['numbers'];
			}
		}
		$t_result['total'] = $total;
		$mark = round($mark/$total*5,1);
		$t_result['mark'] = $mark;
		for ($i=1; $i <=5 ; $i++) {
			if(!isset($t_result[$i])){
				$t_result[$i] =0;
			}
		}
		return $t_result;
	}
}