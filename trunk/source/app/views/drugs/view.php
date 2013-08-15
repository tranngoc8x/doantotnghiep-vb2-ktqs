<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: <?php echo ($drug['Type']['ten']);?> :: <?php echo $drug['Drug']['ten']?></h3>
        <div class="box-ct clearfix row-fluid">
        	<div class='span12 article detail'>
	        	<div class=''>
	        		<?php echo $html->img('files/drugs/'.$drug['Drug']['anh'],array('width'=>'220','class'=>'img-thumbnail left'));?>
	        	</div>
				<h6> <?php echo $drug['Drug']['ten']?> </h6>
				<p class="item"><b>Nhóm dược lý :</b> <?php echo $html->link($drug['Type']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
	    		<p class="item"><b>Nhà phân phối :</b> <?php echo $html->link($drug['Distribute']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
	    		<p class="item"><b>Nhà sản xuất :</b> <?php echo $html->link($drug['Manu']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
	    		<p class="item"><b>Số đăng ký : </b><?php echo $drug['Drug']['sodk'];?></p>
	    		<p class="item"><b>Dạng bào chế : </b><?php echo $drug['Drug']['dangbaoche'];?></p>
	    		<p class="item"><b>Giá kê khai : </b><?php echo $drug['Drug']['giakekhai'];?></p>
	    		
	        	<div class="clearfix"><br></div>

	        	<p class="item"><b>Thành phần : </b><?php echo $drug['Drug']['thanhphan'];?></p>
	        	<p class="item"><b>Hàm lượng : </b><?php echo $drug['Drug']['hamluong'];?></p>
	        	<p class="item"><b>Chỉ định : </b><?php echo $drug['Drug']['chidinh'];?></p>
	        	<p class="item"><b>Liều dùng : </b><?php echo $drug['Drug']['lieudung'];?></p>
	        	<p class="item"><b>Bảo quản : </b><?php echo $drug['Drug']['baoquan'];?></p>
        	</div>
		</div>
	</div>
</div>
<!-- mainbotsl -->
<div id="mainbotsl" class="clearfix">
    <div class="left" style="width: 49%;">
        <div class="boxheader boxheader-main">
            <h3>Thuốc cùng nhóm dược lý</h3>
            <div class="box-ct clearfix">
            	<?php foreach ($type_drugs as $item):?>
                <div class="innerdiv article clearfix">
                    <?php echo $html->link($html->img('files/drugs/'.$item['Drug']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'drugs','action'=>'view/'.$item['Drug']['id']),
                                           array('class'=>"left entry thumbnail img-head"),false);?>
               
                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($item['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),array('class'=>'item'));?>
            		</h6>
            		<div class="item">Nhà sản xuất: <?php echo $html->link($item['Manu']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></div>
            		<div class="item">Nhà phân phối: <?php echo $html->link($item['Distribute']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></div>
            		<div class="item">Số đăng ký : <?php echo $item['Drug']['sodk'];?></div>
                	<div class="clearfix"></div>
                </div>
                <?php endforeach;?>
            </div>
        </div>
    </div>
      <div class="right" style="width: 49%;">
        <div class="boxheader boxheader-main">
            <h3>Thuốc cùng nhà sản xuất</h3>
            <div class="box-ct clearfix">
            	<?php foreach ($manu_drugs as $item):?>
                <div class="innerdiv article clearfix">
                    <?php echo $html->link($html->img('files/drugs/'.$item['Drug']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'drugs','action'=>'view/'.$item['Drug']['id']),
                                           array('class'=>"left entry thumbnail img-head"),false);?>
               
                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($item['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),array('class'=>'item'));?>
            		</h6>
            		<div class="item">Nhóm dược lý: <?php echo $html->link($item['Type']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></div>
            		<div class="item">Nhà phân phối: <?php echo $html->link($item['Distribute']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></div>
            		<div class="item">Số đăng ký : <?php echo $item['Drug']['sodk'];?></div>
                	<div class="clearfix"></div>
                </div>
                <?php endforeach;?>
            </div>
        </div>
        </div>
    </div>

<div class="clearfix"><br></div>