<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tìm kiếm</h3>
        <p>
            <div class="pagination">
                <ul>
                    <li><?php echo $html->link("All",array('controller'=>'drugstores','action'=>'index'),array('class'=>'item'));?></li>
                    <?php foreach ($alpa as $key => $value) {?>
                    <li><?php echo $html->link($value,array('controller'=>'drugstores','action'=>'label/key:'.$key),array('class'=>'item'));?></li>
                    <?php }?>
                </ul>
            </div>
        </p>
    </div>
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Kết quả tìm kiếm</h3>
        <div class="box-ct clearfix row-fluid">
            <ul class='ulitem row-fluid'>
                <?php foreach ($results as $k=> $drugstore):?>
                <li >

                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($drugstore['Drugstore']['ten'],array('controller'=>'drugstores','action'=>'view/'.$drugstore['Drugstore']['id']),array('class'=>'item'));?>
            		</h6>
            		<?php //debug( $Clinic);?>
            		<p class="item"><b>Chủ nhà thuốc :</b> <?php echo $drugstore['Drugstore']['daidien'];?></p>
            		<p class="item"><b>Số giấy phép :</b> <?php echo $drugstore['Drugstore']['giayphep'];?></p>
                    <p class="item"><b>Ngày cấp :</b> <?php echo $drugstore['Drugstore']['ngaycap'];?></p>
            		<p class="item"><b>Địa chi :</b> <?php echo $drugstore['Drugstore']['diachi'],' , '.$drugstore['City']['ten'];?></p>
                    <p class="item"><b>Điện thoại :</b> <?php echo $drugstore['Drugstore']['dienthoai'];?></p>
            		<p class="item"><b>Xem chỉ đường :</b> <a target="_blank" href="https://maps.google.com/?q=<?php echo $drugstore['Drugstore']['map'];?>">Xem</a></p>
                	<div class='item rates'>
                        <?php echo $view->rateres($drugstore['Rate_drugstore'],'drugstore');?>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
                <?php echo $this->Drugstore->paginate();?>
            </ul>
        </div>
    </div>
</div>