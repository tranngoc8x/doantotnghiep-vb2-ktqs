
<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Nhà thuốc :: <?php echo $drugstore['Drugstore']['ten'];?></h3>
        <div class="box-ct clearfix row-fluid">
        	<div class='span12 article detail'>
	        	<div class='span4'>
	        		<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($drugstore['Drugstore']['ten'],array('controller'=>'drugstores','action'=>'view/'.$drugstore['Drugstore']['id']),array('class'=>'item'));?>
            		</h6>
            		<?php //debug( $Clinic);?>
            		<p class="item"><b>Chủ nhà thuốc :</b> <?php echo $drugstore['Drugstore']['daidien'];?></p>
            		<p class="item"><b>Số giấy phép :</b> <?php echo $drugstore['Drugstore']['giayphep'];?></p>
                    <p class="item"><b>Ngày cấp :</b> <?php echo $drugstore['Drugstore']['ngaycap'];?></p>
            		<p class="item"><b>Địa chi :</b> <?php echo $drugstore['Drugstore']['diachi'],' , '.$drugstore['City']['ten'];?></p>
                    <p class="item"><b>Điện thoại :</b> <?php echo $drugstore['Drugstore']['dienthoai'];?></p>
	        	</div>
	        	<div class="span8">
					<script type="text/javascript">
						var toado = "<?php echo $drugstore['Drugstore']['map'];?>";
						var noidung = "<h6><?php echo $drugstore['Drugstore']['ten'];?></h6>";
						noidung+="Chủ nhà thuốc : <?php echo $drugstore['Drugstore']['diachi'];?>";
						noidung+="<br>Địa chỉ : <?php echo $drugstore['Drugstore']['diachi'];?>";
					</script>
					 <div id="map-canvas" class='span12'></div>
		        	<div class="clearfix"><br></div>
		        </div>
        	</div>
		</div>
	</div>
</div>