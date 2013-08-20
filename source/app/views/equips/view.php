<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Thiết bị y tế :: <?php echo $equip['Equip']['ten']?></h3>
        <div class="box-ct clearfix row-fluid">
			  <div class='span12 article detail'>
	        	<div class='contentblock span7'>
	        		<?php echo $html->img('files/equips/'.$equip['Equip']['anh'],array('width'=>'220','class'=>'img-thumbnail left'));?>
					<h6> <?php echo $equip['Equip']['ten']?> </h6>
    				<p class="item"><b>Nhà phân phối :</b> <?php echo $html->link($equip['Distribute']['ten'],array('controller'=>'equips','action'=>'view/'.$equip['Manu']['id']),array('class'=>'item'));?></p>
    	    		<p class="item"><b>Nhà sản xuất :</b> <?php echo $html->link($equip['Manu']['ten'],array('controller'=>'equips','action'=>'view/'.$equip['Manu']['id']),array('class'=>'item'));?></p>
                </div>
                <div class='rateblock span5'>
                    <?php if(!empty($rates)){//if1?>
                    <?php $data = $view->rateitem($rates);?>
                    <div class='total_rate span6'>
                       <span><?php echo $data['mark'];?></span>
                       <div class='star-icon'>
                            <?php
                                $intmark = (int)$data['mark'];
                                for ($i=1; $i <=$intmark ; $i++) {
                                    echo $html->img('img/star_full.png');
                                }
                                if($intmark<5){
                                    if($data['mark'] - $intmark < 0.5){
                                        echo $html->img('img/star_none.png');
                                    }else{
                                        echo $html->img('img/star_half.png');
                                    }
                                }
                                for ($i=$intmark+1; $i < 5 ; $i++) {
                                    echo $html->img('img/star_none.png');
                                }
                            ?>
                       </div>
                       <div class='total-person'><span class='icon-total'></span><?php echo $data['total'];?> người</div>
                        <div class='clearfix'></div>
                    </div>
                    <ul class="rateitem span6">
                    <?php
                        for($i=5;$i>=1;$i--){
                        $w = ($data[$i]/$data['total']*130).'px';
                    ?>
                        <li>
                            <span class='r_number'><?php echo $i;?></span>
                            <span class="percent_rate" id="bar<?php echo $i;?>" style='width:<?php echo $w;?>'><?php echo $data[$i];?></span>
                        </li>

                    <?php }?>
                    </ul>
                    <?php }else{?>
                    <?php echo "Chưa có đánh giá nào"; ?>
                    <?php }?>
                    <hr class='clearfix'/>

                    <?php
                    if(isset($_SESSION['ssid']) && !empty($_SESSION['ssid'])){?>
                    <script>
                        $(document).ready(function(){
                            $('.write-rating').jRating({

                                phpPath : '../../commons/rating',
                                tables : 'equips',
                                members : <?php echo $_SESSION['ssid'];?>,
                                values : <?php echo $equip['Equip']['id'];?>
                            });
                        });
                    </script>
                    <?php if(!empty($your_review)){?>
                         <p class='star-icon'>Đánh giá của bạn :
                          <!--   <?php
                                for ($i=1; $i <= $your_review['Rate']['mark']; $i++) {
                                    echo $html->img('img/star_full.png');
                                }
                                for ($i=$your_review['Rate']['mark']; $i < 5 ; $i++) {
                                    echo $html->img('img/star_none.png');
                                }
                            ?> -->
                            <div class="write-rating rated" data-average="<?php echo $your_review['Rate']['mark'];?>" data-id="<?php echo $your_review['Rate']['id'];?>"></div>
                            <p></p>
                            <div class="serverResponse"><p></p></div>
                            <p></p>
                        </p>
                        <?php }else{?>
                            <!-- <a rel="leanModal" class='btn_review' href='#write_review' title='Đánh giá'>Đánh giá</a> -->
                           <span class='title_rate'> Đánh giá :</span><div class="write-rating" data-average="0" data-id="0"></div>
                            <p></p>
                            <div class="serverResponse"><p></p></div>
                            <p></p>
                        <?php }?>
                    <?php }else{?>
                    <?php echo "Hãy đăng nhập để đánh giá";?>
                    <?php }?>
                </div>
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
            		<div class="item">Nhà sản xuất: <?php echo $html->link($item['Manu']['ten'],array('controller'=>'manus','action'=>'view/'.$equip['Manu']['id']),array('class'=>'item'));?></div>
            		<div class="item">Nhà phân phối: <?php echo $html->link($item['Distribute']['ten'],array('controller'=>'distributes','action'=>'view/'.$equip['Distribute']['id']),array('class'=>'item'));?></div>
                	<div class="clearfix"></div>
                </div>
                <?php endforeach;?>
            </div>
        </div>
        <div class="boxheader boxheader-main clearfix">
            <h3>Đánh giá</h3>
            <div class="box-ct clearfix row-fluid">
                <div class='span12 article detail'>
                    Đang nâng cấp...
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"><br></div>