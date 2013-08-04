<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Phòng khám</h3>
        <div class="box-ct clearfix row-fluid"> 
            <ul class='ulitem row-fluid'>
                <?php foreach ($clinics as $k=> $clinic):?>
                <li > 
                    
                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($clinic['Clinic']['ten'],array('controller'=>'Clinics','action'=>'view/'.$clinic['Clinic']['id']),array('class'=>'item'));?>
            		</h6>
            		<?php //debug( $Clinic);?>
            		<p class="item"><b>Chuyên khoa :</b> <?php echo $clinic['Clinic']['chuyenkhoa'];?></p>
            		<p class="item"><b>Chủ phòng khám :</b> <?php echo $clinic['Clinic']['daidien'];?></p>
            		<p class="item"><b>Địa chi :</b> <?php echo $clinic['Clinic']['diachi'],' , '.$clinic['City']['ten'];?></p>
                    <p class="item"><b>Điện thoại :</b> <?php echo $clinic['Clinic']['dienthoai'];?></p>
            		<p class="item"><b>Xem chỉ đường :</b> <a target="_blank" href="https://maps.google.com/?q=<?php echo $clinic['Clinic']['map'];?>">Xem</a></p>
                	<div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
                <?php echo $this->Clinic->paginate();?>
            </ul>
        </div>
    </div>
</div> 