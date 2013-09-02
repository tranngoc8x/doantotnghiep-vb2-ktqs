<?php
	foreach($result as $item){
?>
<div class='commentPanel row' id='record-<?php echo $item["ReplyComment"]["id"];?>' align='left'>
	<div class='span1'>
		<img src="<?php echo BASE_PATH;?>/img/surgeon_small.png" style='float:left;'/>
	</div>
	<div class='span11'>
		<label class='postedComments'>
			<b><?php echo $item["Member"]["ten"];?></b>&nbsp;
		<?php echo $item["ReplyComment"]["content"];?>
		</label>
		<span style=' color:#666666; font-size:11px'>
		<?php
            $arts = explode(':', $item['ReplyComment']['TimeSpent']);
            $ts = $arts[0]*3600+ $arts[1]*60+$arts[2];
            if($ts>172800) echo $item['ReplyComment']['ngayviet'];
            elseif($ts>86400) echo  'hôm qua';
            else if($ts>3600) echo $arts[0].' giờ trước.';
            else if($ts>60) echo $arts[1].' phút trước.';
            else echo 'vài giây trước.';
        ?>
		</span>
		&nbsp;&nbsp;<a href='#' id='CID-<?php echo $item["ReplyComment"]["id"];?>' class='c_delete'>Xóa</a>
	</div>
</div>
<?php }
?>