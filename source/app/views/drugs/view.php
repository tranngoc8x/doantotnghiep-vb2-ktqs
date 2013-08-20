<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: <?php echo ($drug['Type']['ten']);?> :: <?php echo $drug['Drug']['ten']?></h3>
        <div class="box-ct clearfix row-fluid">
        	<div class='span12 article detail'>
	        	<div class='contentblock span7'>
	        		<?php echo $html->img('files/drugs/'.$drug['Drug']['anh'],array('width'=>'220','class'=>'img-thumbnail left'));?>
    				<h6> <?php echo $drug['Drug']['ten']?> </h6>
    				<p class="item"><b>Nhóm dược lý :</b> <?php echo $html->link($drug['Type']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
    	    		<p class="item"><b>Nhà phân phối :</b> <?php echo $html->link($drug['Distribute']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
    	    		<p class="item"><b>Nhà sản xuất :</b> <?php echo $html->link($drug['Manu']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
    	    		<p class="item"><b>Số đăng ký : </b><?php echo $drug['Drug']['sodk'];?></p>
    	    		<p class="item"><b>Dạng bào chế : </b><?php echo $drug['Drug']['dangbaoche'];?></p>
    	    		<p class="item"><b>Giá kê khai : </b><?php echo $drug['Drug']['giakekhai'];?></p>
                    <div class='clearfix'><p></p></div>
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
                                tables : 'drugs',
                                members : <?php echo $_SESSION['ssid'];?>,
                                values : <?php echo $drug['Drug']['id'];?>
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
    <div class="boxheader boxheader-main">
        <h3>Thuốc cùng nhóm dược lý</h3>
        <div class="box-ct clearfix">
             <ul class='ulitem row-fluid'>
            	<?php foreach ($type_drugs as $k => $item):?>
                <li class='article'>
                    <?php echo $html->link($html->img('files/drugs/'.$item['Drug']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'drugs','action'=>'view/'.$item['Drug']['id']),
                                           array('class'=>"left entry thumbnail img-head"),false);?>

                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($item['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$item['Drug']['id']),array('class'=>'item'));?>
            		</h6>
            		<div class="item">Nhà sản xuất: <?php echo $html->link($item['Manu']['ten'],array('controller'=>'drugs','action'=>'view/'.$item['Manu']['id']),array('class'=>'item'));?></div>
            		<div class="item">Nhà phân phối: <?php echo $html->link($item['Distribute']['ten'],array('controller'=>'drugs','action'=>'view/'.$item['Manu']['id']),array('class'=>'item'));?></div>
            		<div class='item rates'>
                        <?php echo $html->img('img/star_full.png');?>
                        <?php echo $html->img('img/star_full.png');?>
                        <?php echo $html->img('img/star_full.png');?>
                        <?php echo $html->img('img/star_full.png');?>
                        <?php echo $html->img('img/star_half.png');?>
                    </div>
                	<div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach;?>
            </ul>
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
<div id="write_review">
    <div id="write_review-ct">
        <div id="write_review-header">
            <h2>Viết đánh giá của bạn</h2>
            <a class="modal_close" href="#"></a>
        </div>

        <form action="">

          <div class="txt-fld">
            <label for="">Tiêu đề</label>
            <input id="" name="title" type="text">

          </div>
          <div class="txt-fld">
            <label for="">Nhận xét</label>
            <textarea id="" name="nhanxet" type="textarea"></textarea>
          </div>
          <div class="btn-fld">
          <button type="submit">Gửi »</button>
          </div>
         </form>
    </div>
</div>