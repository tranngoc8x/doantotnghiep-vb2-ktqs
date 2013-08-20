<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
    	<h3><?php echo $html->img('img/icon-home.png');?> :: Phòng khám :: <?php echo $clinic['Clinic']['ten']?></h3>
	    <div class="box-ct clearfix row-fluid">
			<div class='span12 article detail'>
				<div class='row-fluid'>
				    <div class='span4'>
		        		<h6 style="word-wrap:none;overflow: hidden;">
		                <?php echo $html->link($clinic['Clinic']['ten'],array('controller'=>'drugstores','action'=>'view/'.$clinic['Clinic']['id']),array('class'=>'item'));?>
		        		</h6>
		        		<?php //debug( $Clinic);?>
		        		<p class="item"><b>Chuyên khoa :</b> <?php echo $clinic['Department']['ten'];?></p>
		        		<p class="item"><b>Chủ phòng khám :</b> <?php echo $clinic['Clinic']['daidien'];?></p>
		        		<p class="item"><b>Địa chi :</b> <?php echo $clinic['Clinic']['diachi'],' , '.$clinic['City']['ten'];?></p>
		                <p class="item"><b>Điện thoại :</b> <?php echo $clinic['Clinic']['dienthoai'];?></p>
		        	</div>
		        	<div class="span8">
						<script type="text/javascript">
							toado = "<?php echo $clinic['Clinic']['map'];?>";
							noidung = "<h6><?php echo $clinic['Clinic']['ten'];?></h6>";
							noidung+="Đại diện : <?php echo $clinic['Clinic']['daidien'];?>";
							noidung+="<br>Địa chỉ : <?php echo $clinic['Clinic']['diachi'].' , '.$clinic['City']['ten'];?>";
						</script>
						 <div id="map-canvas" class='span12'></div>
			        	<div class="clearfix"><br></div>
			        </div>
			    </div>
			    <hr class='clearfix'></div>
			    <div class='row-fluid'>
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
	                                tables : 'clinics',
	                                members : <?php echo $_SESSION['ssid'];?>,
	                                values : <?php echo $clinic['Clinic']['id'];?>
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
	                <p class="item span7"><b>Thông tin :</b> <?php echo $clinic['Clinic']['gioithieu'];?></p>
			    </div>
	    	</div>
		</div>
	</div>
</div>