<?php
class View extends HTML{
	function rateitem($array=null){
		//if ($array == null) return;
		$person=0;
		$t_result = array();
		$mark = 0;
		if(isset($array['Rate'])){
			$array[0] = $array;
			unset($array['Rate']);
		}
		foreach ($array as $k => $v) {
			//$v['Rate']['mark']: điểm 1,2,3,4,5
			//$v['Rate']['numbers'] số lượng người cho điểm
			$person +=$v['Rate']['numbers'];
			$t_result[$v['Rate']['mark']] = $v['Rate']['numbers'];
			$mark+=$v['Rate']['mark']*$v['Rate']['numbers'];
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
	function rateres($array=null,$model){
		if ($array == null){
			return ;
		}else{
			$person=count($array);
			$mark = 0;
			foreach ($array as $key => $v) {
				$mark+=$v['Rate_'.$model]['mark'];
			}
			$mark = round($mark/$person,1);
			$intmark = floor($mark);
			for ($i=1; $i <=$intmark ; $i++) {
	            echo $this->img('img/star_full.png');
	        }
	        if($intmark<5){
	            if($mark - $intmark < 0.5){
	                echo $this->img('img/star_none.png');
	            }else{
	                echo $this->img('img/star_half.png');
	            }
	        }
	        for ($i=$intmark+1; $i < 5 ; $i++) {
	            echo $this->img('img/star_none.png');
	        }
	    }
	}
	function rateother($array,$model){
		if(empty($array)){
			$person = 0;
			$mark = 0;

		}else{

			$person=count($array);
			$mark = 0;
			foreach ($array as $v) {
				$mark+=@$v['mark'];
			}
			$mark = round($mark/$person,1);
		}

		$intmark = floor($mark);
		for ($i=1; $i <=$intmark ; $i++) {
            echo $this->img('img/star_full.png');
        }
        if($intmark<5){
            if($mark - $intmark < 0.5){
                echo $this->img('img/star_none.png');
            }else{
                echo $this->img('img/star_half.png');
            }
        }
        for ($i=$intmark+1; $i < 5 ; $i++) {
            echo $this->img('img/star_none.png');
        }
	}
}