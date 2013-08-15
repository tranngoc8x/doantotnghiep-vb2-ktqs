<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Thiết bị y tế :: <?php echo $equip['Equip']['ten']?></h3>
        <div class="box-ct clearfix row-fluid">
			  <div class='span12 article detail'>
	        	<div class=''>
	        		<?php echo $html->img('files/equips/'.$equip['Equip']['anh'],array('width'=>'220','class'=>'img-thumbnail left'));?>
	        	</div>
				<h6> <?php echo $equip['Equip']['ten']?> </h6>
				<p class="item"><b>Nhà phân phối :</b> <?php echo $html->link($equip['Distribute']['ten'],array('controller'=>'equips','action'=>'view/'.$equip['Manu']['id']),array('class'=>'item'));?></p>
	    		<p class="item"><b>Nhà sản xuất :</b> <?php echo $html->link($equip['Manu']['ten'],array('controller'=>'equips','action'=>'view/'.$equip['Manu']['id']),array('class'=>'item'));?></p>
	        	<div class="clearfix"><br></div>
	        	<p class="item"><b>Chức năng : </b><?php echo $equip['Equip']['chucnang'];?></p>
	        	<p class="item"><b>Giới thiệu : </b><?php echo $equip['Equip']['gioithieu'];?></p>
        	</div>
		</div>
	</div>
</div>
<!-- mainbotsl -->
<div id="mainbotsl" class="clearfix">
    <div class="left span12" >
        <div class="boxheader boxheader-main">
            <h3>Các thiết bị y tế khác</h3>
            <div class="box-ct clearfix">
            	<?php foreach ($manu_equips as $item):?>
                <div class="innerdiv article clearfix span6">
                    <?php echo $html->link($html->img('files/equips/'.$item['Equip']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'equips','action'=>'view/'.$item['Equip']['id']),
                                           array('class'=>"left entry thumbnail img-head"),false);?>
               
                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($item['Equip']['ten'],array('controller'=>'equips','action'=>'view/'.$equip['Equip']['id']),array('class'=>'item'));?>
            		</h6>
            		<div class="item">Nhà sản xuất: <?php echo $html->link($item['Manu']['ten'],array('controller'=>'drugs','action'=>'view/'.$equip['Manu']['id']),array('class'=>'item'));?></div>
            		<div class="item">Nhà phân phối: <?php echo $html->link($item['Distribute']['ten'],array('controller'=>'drugs','action'=>'view/'.$equip['Manu']['id']),array('class'=>'item'));?></div>
                	<div class="clearfix"></div>
                </div>
                <?php endforeach;?>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"><br></div>