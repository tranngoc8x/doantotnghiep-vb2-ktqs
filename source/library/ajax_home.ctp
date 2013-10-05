<?php
echo $this->Form->select('status',array(1=>'Không hiển thị',2=>'Hiển thị'),array('selected'=>$sttid),array('empty'=>false,'id'=>'changestt','onchange'=>'change('.$cid.',"'.$model.'",this.value)'));
?>