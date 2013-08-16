<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
    	<h3><?php echo $html->img('img/icon-home.png');?> :: Phòng khám :: <?php echo $clinic['Clinic']['ten']?></h3>
	    <div class="box-ct clearfix row-fluid">
			<div class='span12 article detail'>
			   <div class='span4'>
	        		<h6 style="word-wrap:none;overflow: hidden;">
	                <?php echo $html->link($clinic['Clinic']['ten'],array('controller'=>'drugstores','action'=>'view/'.$clinic['Clinic']['id']),array('class'=>'item'));?>
	        		</h6>
	        		<?php //debug( $Clinic);?>
	        		<p class="item"><b>Chuyên khoa :</b> <?php echo $clinic['Clinic']['chuyenkhoa'];?></p>
	        		<p class="item"><b>Chủ phòng khám :</b> <?php echo $clinic['Clinic']['daidien'];?></p>
	        		<p class="item"><b>Địa chi :</b> <?php echo $clinic['Clinic']['diachi'],' , '.$clinic['City']['ten'];?></p>
	                <p class="item"><b>Điện thoại :</b> <?php echo $clinic['Clinic']['dienthoai'];?></p>
	        	</div>
	        	<div class="span8">
					<script type="text/javascript">
						toado = "<?php echo $clinic['Clinic']['map'];?>";
						noidung = "<h6><?php echo $clinic['Clinic']['ten'];?></h6>";
						noidung+="Đại diện : <?php echo $clinic['Clinic']['daidien'];?>";
						noidung+="<br>Địa chỉ : <?php echo $clinic['Clinic']['diachi'].' , '.$clinic['City']['ten'];?>";
					</script>
					 <div id="map-canvas" class='span12'></div>
		        	<div class="clearfix"><br></div>
		        </div>
	    	</div>
		</div>
	</div>
</div>