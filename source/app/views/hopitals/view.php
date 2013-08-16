<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Bệnh viện :: <?php echo $hopital['Hopital']['ten']?></h3>
        <div class="box-ct clearfix row-fluid">
			   <div class="box-ct clearfix row-fluid">
			<div class='span12 article detail'>
			   <div class='span4'>
	        		<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($hopital['Hopital']['ten'],array('controller'=>'hopitals','action'=>'view/'.$hopital['Hopital']['id']),array('class'=>'item'));?>
            		</h6>
            		<p class="item"><b>Địa chi :</b> <?php echo $hopital['Hopital']['diachi'],' , '.$hopital['City']['ten'];?></p>
                    
                </div>
	        	<div class="span8">
					<script type="text/javascript">
						toado = "<?php echo $hopital['Hopital']['map'];?>";
						noidung = "<h6><?php echo $hopital['Hopital']['ten'];?></h6><?php echo $hopital['Hopital']['diachi'];?>";
					</script>
					 <div id="map-canvas" class='span12'></div>
		        	<div class="clearfix"><br></div>
		        </div>
	    	</div>
		</div>
		</div>
	</div>
</div>