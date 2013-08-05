<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Bệnh viện</h3>
        <div class="box-ct clearfix row-fluid"> 
            <ul class='ulitem row-fluid'>
                <?php foreach ($hopitals as $k=> $hopital):?>
                <li > 
                    
                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($hopital['Hopital']['ten'],array('controller'=>'hopitals','action'=>'view/'.$hopital['Hopital']['id']),array('class'=>'item'));?>
            		</h6>
            		<p class="item"><b>Địa chi :</b> <?php echo $hopital['Hopital']['diachi'],' , '.$hopital['City']['ten'];?></p>
                    <p class="item"><b>Xem chỉ đường :</b> <a target="_blank" href="https://maps.google.com/?q=<?php echo $hopital['Hopital']['map'];?>">Xem</a></p>
                	<div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
                <?php echo $this->Hopital->paginate();?>
            </ul>
        </div>
    </div>
</div> 