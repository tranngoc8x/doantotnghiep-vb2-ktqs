<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tìm kiếm</h3>
        <div class="pagination">
            <ul>
                <li><?php echo $html->link("All",array('controller'=>'drugs','action'=>'index'),array('class'=>'item'));?></li>
                <?php foreach ($alpa as $key => $value) {?>
                <li><?php echo $html->link($value,array('controller'=>'drugs','action'=>'label/key:'.$key),array('class'=>'item'));?></li>
                <?php }?>
            </ul>
        </div>
        <div class="row">
            <form action="<?php echo BASE_PATH;?>/commons/find" method="POST" class="span12">
                <input type="hidden" name="model" value="<?php echo $this->_controller;?>" />
                <div class="span4">
                    <input type="text" placeholder="Từ khóa" name= 'q' value="<?php echo isset($q)?$q:"";?>" class="span12">
                    <select name="distribute" id="distribute" class="span12">
                        <option value="All" selected>Nhà phân phối</option>
                        <?php
                            if(!isset($distribute)){ $distribute="";}
                            foreach ($list_dis as $key => $value) {
                        ?>
                        <option value="<?php echo $value['Distribute']['id'];?>" <?php if($value['Distribute']['id'] == $distribute){echo 'selected';}?>><?php echo $value['Distribute']['ten'];?></option>
                        <?php }?>
                    </select>
                </div>
                <div class="span4">
                    <select name="type" id="type" class="span12">
                        <option value="All" selected>Nhóm dược lý</option>
                        <?php
                            if(!isset($type)){ $type="";}
                            foreach ($sidebar as $key => $value) {
                        ?>
                        <option value="<?php echo $value['Menu']['id'];?>" <?php if($value['Menu']['id'] == $type){echo 'selected';}?>><?php echo $value['Menu']['ten'];?></option>
                        <?php }?>
                    </select>
                    <select name="manu" id="manu" class="span12">
                        <option value="All" selected>Nhà sản xuất</option>
                        <?php
                            if(!isset($manu)){ $manu="";}
                            foreach ($list_manus as $key => $value) {
                        ?>
                        <option value="<?php echo $value['Manu']['id'];?>" <?php if($value['Manu']['id'] == $manu){echo 'selected';}?>><?php echo $value['Manu']['ten'];?></option>
                        <?php }?>
                    </select>
                </div>
                <div class="span3">
                    <input type="submit" name="" class="btn btn-primary" value="Tìm kiếm" />
                </div>
            </form>
        </div>
    </div>
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Kết quả tìm kiếm
            <form action="" id='frm' method='POST' class='right' style='margin:-5px 0 0;'>
                <select onchange='document.getElementById("frm").submit();' name="orderfield">
                    <option value="3" <?php if( !isset($n) || $n == 3 ){echo 'selected';}?>>Thuốc mới nhất</option>
                    <option value="4" <?php if(isset($n) && $n == 4){echo 'selected';}?>>Thuốc cũ</option>
                    <option value="1" <?php if(isset($n) && $n == 1){echo 'selected';}?>>Tên từ A->Z</option>
                    <option value="2" <?php if(isset($n) && $n == 2){echo 'selected';}?>>Tên từ Z->A</option>
                </select>
            </form>
        </h3>
        <div class="box-ct clearfix row-fluid">
            <ul class='ulitem row-fluid'>
                <?php foreach ($results as $k=> $item):?>
                <li class='article'>
                    <?php if(is_file('files/drugs/'.$item['Drug']['anh'])){?>
                        <?php echo $html->link($html->img('files/drugs/'.$item['Drug']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'drugs','action'=>'view/'.$item['Drug']['id'].'/'.$item['Drug']['ten']),
                                           array('class'=>"left entry thumbnail"),false);?>
                                           <?php }else{?>
                        <?php echo $html->link($html->img('img/no-image.png',array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'drugs','action'=>'view/'.$item['Drug']['id'].'/'.$item['Drug']['ten']),
                                           array('class'=>"left entry thumbnail"),false);?>
                    <?php }?>

                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($item['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$item['Drug']['id'].'/'.$item['Drug']['ten']),array('class'=>'item'));?>
            		</h6>
            		<?php //debug( $item);?>
            		<p class="item">Nhóm dược lý : <?php echo $html->link($item['Type']['ten'],array('controller'=>'drugs','action'=>'label/Type:'.$item['Type']['id']),array('class'=>'item'));?></p>
            		<p class="item">Nhà phân phối: <?php echo $html->link($item['Distribute']['ten'],array('controller'=>'drugs','action'=>'label/Distribute:'.$item['Distribute']['id']),array('class'=>'item'));?></p>
            		<p class="item">Nhà sản xuất: <?php echo $html->link($item['Manu']['ten'],array('controller'=>'drugs','action'=>'label/Manu:'.$item['Manu']['id']),array('class'=>'item'));?></p>
            			<div class='item rates'>
                        <?php echo $view->rateres($item['Rate_drug'],'drug');?>
                    </div>
                	<div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
                <?php //debug($item);?>

            </ul>
            <?php echo $this->Drug->paginate();?>
        </div>
    </div>
</div>