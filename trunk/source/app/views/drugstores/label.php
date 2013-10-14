<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tìm kiếm</h3>

        <div class="pagination">
            <ul>
                <li><?php echo $html->link("All",array('controller'=>'drugstores','action'=>'index'),array('class'=>'item'));?></li>
                <?php foreach ($alpa as $key => $value) {?>
                <li><?php echo $html->link($value,array('controller'=>'drugstores','action'=>'label/key:'.$key),array('class'=>'item'));?></li>
                <?php }?>
            </ul>
        </div>
       <div class="row-liquid">
            <form action="<?php echo BASE_PATH;?>/commons/find" method="POST" class="span12">
                <div class="span4">
                    <input type="hidden" name="model" value="<?php echo $this->_controller;?>" />
                    <input type="text" placeholder="Từ khóa" name= 'q' value="<?php echo isset($q)?$q:"";?>" class="span12">
                </div>
                <div class="span4">
                    <select name="citie" id="citie" class="span12">
                        <option value="">Thành phố</option>
                        <?php
                            foreach ($list_city as $key => $value) {
                        ?>
                        <option value="<?php echo $value['City']['id'];?>" <?php if($value['City']['id'] == $citie){echo 'selected';}?>><?php echo $value['City']['ten'];?></option>
                        <?php }?>
                    </select>
                </div>
                <div class="span4">
                    <input type="submit" name="" class="btn btn-primary" value="Tìm kiếm" />
                </div>
            </form>
        </div>
    </div>
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Kết quả tìm kiếm
            <form action="" id='frm' method='POST' class='right' style='margin:-5px 0 0;'>
                <select onchange='document.getElementById("frm").submit();' name="orderfield">
                    <option value="3" <?php if( !isset($n) || $n == 3 ){echo 'selected';}?>>Mới nhất</option>
                    <option value="4" <?php if(isset($n) && $n == 4){echo 'selected';}?>>Nhà thuốc cũ</option>
                    <option value="1" <?php if(isset($n) && $n == 1){echo 'selected';}?>>Tên từ A->Z</option>
                    <option value="2" <?php if(isset($n) && $n == 2){echo 'selected';}?>>Tên từ Z->A</option>
                </select>
            </form>
        </h3>
        <div class="box-ct clearfix row-fluid">
            <ul class='ulitem row-fluid'>
                <?php foreach ($results as $k=> $drugstore):?>
                <li >

                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($drugstore['Drugstore']['ten'],array('controller'=>'drugstores','action'=>'view/'.$drugstore['Drugstore']['id'].'/'.$drugstore['Drugstore']['ten']),array('class'=>'item'));?>
            		</h6>
            		<?php //debug( $Clinic);?>
            		<p class="item"><b>Chủ nhà thuốc :</b> <?php echo $drugstore['Drugstore']['daidien'];?></p>
            		<p class="item"><b>Số giấy phép :</b> <?php echo $drugstore['Drugstore']['giayphep'];?></p>
                    <p class="item"><b>Ngày cấp :</b> <?php echo date('d/m/Y',strtotime($drugstore['Drugstore']['ngaycap']));?></p>
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
            </ul>
            <?php echo $this->Drugstore->paginate();?>
        </div>
    </div>
</div>