<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tìm kiếm</h3>
        <p>
            <div class="pagination">
                <ul>
                    <li><?php echo $html->link("All",array('controller'=>'equips','action'=>'index'),array('class'=>'item'));?></li>
                    <?php foreach ($alpa as $key => $value) {?>
                    <li><?php echo $html->link($value,array('controller'=>'equips','action'=>'search/key:'.$key),array('class'=>'item'));?></li>
                    <?php }?>
                </ul>
            </div>
        </p>
    </div>
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Trang thiết bị y tế</h3>
        <div class="box-ct clearfix row-fluid">
            <ul class='ulitem row-fluid'>
                <?php foreach ($equips as $k=> $equip):?>
                <li class='article'>
                     <?php echo $html->link($html->img('files/equips/'.$equip['Equip']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'equips','action'=>'view/'.$equip['Equip']['id']),
                                           array('class'=>"left entry thumbnail"),false);?>
                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($equip['Equip']['ten'],array('controller'=>'equips','action'=>'view/'.$equip['Equip']['id']),array('class'=>'item'));?>
            		</h6>
            		<p class="item">Nhà phân phối: <?php echo $html->link($equip['Distribute']['ten'],array('controller'=>'equips','action'=>'search/Distribute:'.$equip['Distribute']['id']),array('class'=>'item'));?></p>
                    <p class="item">Nhà sản xuất: <?php echo $html->link($equip['Manu']['ten'],array('controller'=>'equips','action'=>'search/Manu:'.$equip['Manu']['id']),array('class'=>'item'));?></p>
                    <p class="item"><b>Chức năng :</b> <?php echo $equip['Equip']['ten'];?></p>
                    <div class='item rates'>
                        <?php echo $view->rateres($equip['Rate_equip'],'equip');?>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
                <?php echo $this->Equip->paginate();?>
            </ul>
        </div>
    </div>
</div>