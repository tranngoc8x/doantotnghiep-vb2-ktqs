<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tìm kiếm</h3>
        <p>
            <div class="pagination">
                <ul>
                    <li><?php echo $html->link("All",array('controller'=>'drugs','action'=>'index'),array('class'=>'item'));?></li>
                    <?php foreach ($alpa as $key => $value) {?>
                    <li><?php echo $html->link($value,array('controller'=>'drugs','action'=>'search/key:'.$key),array('class'=>'item'));?></li>
                    <?php }?>
                </ul>
            </div>
        </p>
    </div>
    <div class="boxheader boxheader-main clearfix">
        <h3>
		<?php echo $html->img('img/icon-home.png');?> :: <?php echo ($typename[0]['Type']['ten']);?>
        </h3>
        <div class="box-ct clearfix row-fluid"> 
            <ul class='ulitem row-fluid'>
                <?php foreach ($drugs as $k=> $drug):?>
                <li class='article'>
                    <?php echo $html->link($html->img('files/drugs/'.$drug['Drug']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),
                                           array('class'=>"left entry thumbnail"),false);?>
               
                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($drug['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),array('class'=>'item'));?>
            		</h6>
            		<?php //debug( $drug);?>
            		<p class="item">Nhóm dược lý : <?php echo $html->link($drug['Type']['ten'],array('controller'=>'drugs','action'=>'search/Type:'.$drug['Type']['id']),array('class'=>'item'));?></p>
                    <p class="item">Nhà phân phối: <?php echo $html->link($drug['Distribute']['ten'],array('controller'=>'drugs','action'=>'search/Distribute:'.$drug['Distribute']['id']),array('class'=>'item'));?></p>
                    <p class="item">Nhà sản xuất: <?php echo $html->link($drug['Manu']['ten'],array('controller'=>'drugs','action'=>'search/Manu:'.$drug['Manu']['id']),array('class'=>'item'));?></p>
                    <div class='item rates'>
                        <?php echo $view->rateres($drug['Rate_drug'],'drug');?>
                    </div>
                	<div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
                <?php echo $this->Drug->paginate();?>
            </ul>
        </div>
    </div>
</div> 