<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3>Thuốc mới</h3>
        <div class="box-ct clearfix row-fluid">
            <ul class='ulitem row-fluid'>
                <?php foreach ($drugs as $k=> $drug):?>
                <li class='article'>
                    <?php echo $html->link($html->img('files/drugs/'.$drug['Drug']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id'].'/'.$drug['Drug']['ten']),
                                           array('class'=>"left entry thumbnail"),false);?>

                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($drug['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id'].'/'.$drug['Drug']['ten']),array('class'=>'item'));?>
            		</h6>
            		<?php //debug( $drug['Manu']);?>
            		<p class="item">Nhóm dược lý : <?php echo $html->link($drug['Type']['ten'],array('controller'=>'drugs','action'=>'label/Type:'.$drug['Type']['id']),array('class'=>'item'));?></p>
            		<p class="item">Nhà phân phối: <?php echo $html->link($drug['Distribute']['ten'],array('controller'=>'drugs','action'=>'label/Distribute:'.$drug['Distribute']['id']),array('class'=>'item'));?></p>
            		<p class="item">Nhà sản xuất: <?php echo $html->link($drug['Manu']['ten'],array('controller'=>'drugs','action'=>'label/Manu:'.$drug['Manu']['id']),array('class'=>'item'));?></p>
            		<div class='item rates'>
                        <?php echo $view->rateres($drug['Rate_drug'],'drug');?>
                    </div>
                	<div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
            </ul>
        </div>
    </div>
</div>
<!-- mainbotsl -->
<div id="mainbotsl" class="clearfix">
    <div class="box column box-ct">
        <div class="boxheader boxheader-main clearfix">
            <h3>Bệnh viện</h3>
            <div class="box-ct clearfix">
                <ul class='ulitem row-fluid'>

                    <?php foreach ($hopitals as $k=> $hopital):?>
                    <li class='article'>
                    <h6 style="word-wrap:none;overflow: hidden;">
                        <?php echo $html->link($hopital['Hopital']['ten'],array('controller'=>'hopitals','action'=>'view/'.$hopital['Hopital']['id'].'/'.$hopital['Hopital']['ten']),array('class'=>'item'));?>
                    </h6>
                    <div class="item"><b>Địa chi :</b> <?php echo $hopital['Hopital']['diachi'],' , '.$hopital['City']['ten'];?></div>
                    <div class='item rates'>
                        <?php echo $view->rateother($hopital['Rate_hopital'],'hopital');?>
                    </div>
                    <div class="clearfix"></div>
                    </li>
                    <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                     <?php //debug($hopital);?>
                    <?php endforeach;?>

                </ul>
            </div>
        </div>
    </div>
    <div class="box column box-ct">
        <div class="boxheader boxheader-main clearfix">
                <h3>Nhà thuốc</h3>

            <div class="box-ct clearfix">
                <ul class='ulitem row-fluid'>
                    <?php foreach ($drugstores as $k=> $drugstore):?>
                    <li class='article'>
                    <h6 style="word-wrap:none;overflow: hidden;">
                        <?php echo $html->link($drugstore['Drugstore']['ten'],array('controller'=>'drugstores','action'=>'view/'.$drugstore['Drugstore']['id'].'/'.$drugstore['Drugstore']['ten']),array('class'=>'item'));?>
                    </h6>
                    <div class="item"><b>Địa chi :</b> <?php echo $drugstore['Drugstore']['diachi'],' , '.$drugstore['City']['ten'];?></div>
                    <div class='item rates'>
                        <?php echo $view->rateother($drugstore['Rate_drugstore'],'drugstore');?>
                    </div>
                    <div class="clearfix"></div>
                    </li>
                    <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                    <?php endforeach;?>
                </ul>
            </div>
        </div>
    </div>
    <div class="box column box-ct">
        <div class="boxheader boxheader-main clearfix">
            <h3>Phòng khám</h3>
            <div class="box-ct clearfix">
                <ul class='ulitem row-fluid'>
                    <?php foreach ($clinics as $k=> $clinic):?>
                    <li class='article'>
                    <h6 style="word-wrap:none;overflow: hidden;">
                        <?php echo $html->link($clinic['Clinic']['ten'],array('controller'=>'clinics','action'=>'view/'.$clinic['Clinic']['id'].'/'.$clinic['Clinic']['ten']),array('class'=>'item'));?>
                    </h6>
                    <div class="item">Chuyên khoa : <?php echo $html->link($clinic['Department']['ten'],array('controller'=>'clinics','action'=>'label/Department:'.$clinic['Department']['id']),array('class'=>'item'));?></div>
                    <div class="item"><b>Địa chi :</b> <?php echo $clinic['Clinic']['diachi'],' , '.$clinic['Clinic']['ten'];?></div>
                    <div class='item rates'>
                        <?php echo $view->rateother($clinic['Rate_clinic'],'clinic');?>
                    </div>
                    <div class="clearfix"></div>
                    </li>
                    <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                    <?php endforeach;?>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- //mainbotsl -->