<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tìm kiếm</h3>
        <div class="pagination">
            <ul>
                <li><?php echo $html->link("All",array('controller'=>'hopitals','action'=>'index'),array('class'=>'item'));?></li>
                <?php foreach ($alpa as $key => $value) {?>
                <li><?php echo $html->link($value,array('controller'=>'hopitals','action'=>'label/key:'.$key),array('class'=>'item'));?></li>
                <?php }?>
            </ul>
        </div>
        <div class="row-liquid">
            <form action="<?php echo BASE_PATH;?>/commons/find" method="POST" class="span12">
                <div class="span4">
                    <input type="hidden" name="model" value="<?php echo $this->_controller;?>" />
                    <input type="text" placeholder="Từ khóa" name= 'q' class="span12">
                </div>
                <div class="span4">
                    <select name="citie" id="citie" class="span12">
                        <option value="">Thành phố</option>
                        <?php
                            foreach ($list_city as $key => $value) {
                        ?>
                        <option value="<?php echo $value['City']['id'];?>"><?php echo $value['City']['ten'];?></option>
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
        <h3><?php echo $html->img('img/icon-home.png');?> :: Bệnh viện
            <form action="" id='frm' method='POST' class='right' style='margin:-5px 0 0;'>
                <select onchange='document.getElementById("frm").submit();' name="orderfield">
                    <option value="3" <?php if( !isset($n) || $n == 3 ){echo 'selected';}?>>Mới nhất</option>
                    <option value="4" <?php if(isset($n) && $n == 4){echo 'selected';}?>>Bệnh viện cũ</option>
                    <option value="1" <?php if(isset($n) && $n == 1){echo 'selected';}?>>Tên từ A->Z</option>
                    <option value="2" <?php if(isset($n) && $n == 2){echo 'selected';}?>>Tên từ Z->A</option>
                </select>
            </form>
        </h3>
        <div class="box-ct clearfix row-fluid">
            <ul class='ulitem row-fluid'>
                <?php foreach ($hopitals as $k=> $hopital):?>
                <li >

                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($hopital['Hopital']['ten'],array('controller'=>'hopitals','action'=>'view/'.$hopital['Hopital']['id'].'/'.$hopital['Hopital']['ten']),array('class'=>'item'));?>
            		</h6>
            		<p class="item"><b>Địa chi :</b> <?php echo $hopital['Hopital']['diachi'],' , '.$hopital['City']['ten'];?></p>
                    <p class="item"><b>Xem chỉ đường :</b> <a target="_blank" href="https://maps.google.com/?q=<?php echo $hopital['Hopital']['map'];?>">Xem</a></p>
                	<div class='item rates'>
                        <?php echo $view->rateres($hopital['Rate_hopital'],'hopital');?>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
            </ul>
            <?php echo $this->Hopital->paginate();?>
        </div>
    </div>
</div>