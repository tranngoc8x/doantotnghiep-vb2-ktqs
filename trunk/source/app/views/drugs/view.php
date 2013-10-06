
<div class="mass mass-top clearfix">
    <?php if(!empty($drug)){?>
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

                                phpPath : '../../../commons/rating',
                                tables : 'drugs',
                                members : <?php echo $_SESSION['ssid'];?>,
                                values : <?php echo $drug['Drug']['id'];?>
                            });
                        });
                    </script>
                    <?php if(!empty($your_review)){?>
                         <p class='star-icon'>Đánh giá của bạn :
                            <div class="write-rating rated" data-average="<?php echo $your_review[0]['Rate']['mark'];?>" data-id="<?php echo $your_review[0]['Rate']['id'];?>"></div>
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
    <div class="boxheader boxheader-main  clearfix">
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
    </div>
    <div class="boxheader boxheader-main clearfix">
        <h3>Đánh giá</h3>
        <div class="box-ct clearfix row-fluid">
            <?php
                if(isset($_SESSION['user_token'])) unset($_SESSION['user_token']);
                $formtoken = uniqid();
                $_SESSION['user_token'] = $formtoken;
            ?>

            <?php $comments = CommonsController::showpost($drug['Drug']['id']);?>
            <div class='span12 article detail'>
                <?php
                    $show_more_button = count($comments);
                ?>
                <input type='hidden' name='itemid' id='itemid' value="t1_<?php echo $drug['Drug']['id'];?>" />
                <?php if(isset($_SESSION['user_token']) && !empty($_SESSION['ssid'])){?>
                <input type='hidden' name='token' id='token' value='<?php echo $formtoken;?>' />
                <form action="" method="post" class='commentForm' name="postsForm">
                    <textarea class="span12" id="watermark" placeholder='Hãy viết đánh giá của bạn về sản phẩm này ...' name="watermark" cols="60"></textarea>
                    <button id="shareButton" type='button' class="btn btn-icon btn-primary glyphicons circle_ok">Bình luận</button>
                </form>
                <?php }else{?>
                <p style='color:#f00'>Hãy đăng nhập để thực hiện đánh giá của bạn !<p>
                <?php }?>
                <hr class='clearfix'/>
                <div id="posting" align="center">
                    <?php
                        foreach ($comments as $key => $item) {

                     ?>
                           <div class="friends_area" id="record-<?php  echo $item['Comment']['id']?>">
                                <div class='span1'>
                                    <?php echo $html->img('img/surgeon.png',array('style'=>"float:left;"));?>
                                </div>
                                <div class='span11'>
                                   <label class="name">
                                   <b><?php echo $item['Member']['ten'];?></b>
                                   <em><?php  echo $item['Comment']['content'];?></em>
                                   <br />
                                   <span>
                                   <?php
                                        $arts = explode(':', $item['Comment']['TimeSpent']);
                                        $ts = $arts[0]*3600+ $arts[1]*60+$arts[2];
                                        if($ts>172800) echo $item['Comment']['ngayviet'];
                                        elseif($ts>86400) echo  'hôm qua';
                                        else if($ts>3600) echo $arts[0].' giờ trước.';
                                        else if($ts>60) echo $arts[1].' phút trước.';
                                        else echo 'vài giây trước.';
                                    ?>
                                   </span>
                                    <?php if(isset($_SESSION['user_token']) && isset($_SESSION['ssid'])){?>
                                   <a href="javascript: void(0)" id="post_id<?php  echo $item['Comment']['id']?>" class="showCommentBox">Trả lời</a>
                                   <?php }?>
                                   <?php
                                    if(isset($_SESSION['ssid']) &&  $item['Comment']['members_id'] == $_SESSION['ssid']){?>
                                    <a href="#" class="delete"> Xóa</a>
                                   <?php }?>
                                   </label>

                                </div>
                                <div class="clearfix"></div>
                                <div id="CommentPosted<?php  echo $item['Comment']['id']?>">
                                    <?php
                                    $comment_num_row = count($item['Ykien_drug_child']);
                                    if($comment_num_row > 0)
                                    {
                                        foreach ($item['Ykien_drug_child'] as $value)
                                        {
                                        ?>
                                        <div class="commentPanel row" id="record-<?php  echo $value['id'];?>" align="left">
                                            <div class='span1'>
                                            <?php echo $html->img('img/surgeon_small.png',array('class'=>"CommentImg",'style'=>"float:left; clear: right"));?>
                                            </div>
                                            <div class='span11'>
                                                <label class="postedComments">
                                                    <b><?php
                                                        $member =  MembersController::getInfor($value['members_id']);
                                                        echo $member[0]['Member']['ten'];
                                                    ?></b>
                                                    <?php  echo $value['content'];?>
                                                </label>
                                                <span style="color:#666666; font-size:11px">
                                               <?php
                                                    $diffdate = (strtotime(date('Y-m-d H:i:s')) - strtotime($value['ngayviet']));
                                                    if($diffdate>172800) echo date('d/m/Y',strtotime($value['ngayviet']));
                                                    elseif($diffdate>86400) echo  'hôm qua';
                                                    else if($diffdate>3600) echo floor($diffdate/3600).' giờ trước.';
                                                    else if($diffdate>60) echo floor($diffdate/60).' phút trước.';
                                                    else echo 'vài giây trước.';
                                                ?>
                                                </span>
                                                <?php
                                                    if(isset($_SESSION['ssid']) &&  $value['members_id'] == $_SESSION['ssid']){?>
                                                    &nbsp;&nbsp;<a href="#" id="CID-<?php  echo $value['id'];?>" class="c_delete">Xóa</a>
                                                <?php }?>
                                            </div>
                                        </div>
                                        <?php
                                        }?>
                                        <?php
                                    }?>
                                </div>
                                 <?php if(isset($_SESSION['user_token']) && isset($_SESSION['ssid'])){?>
                                <div class="commentBox row" align="right" id="commentBox-<?php  echo $item['Comment']['id'];?>" <?php echo (($comment_num_row) ? '' :'style="display:none"')?>>
                                    <div class='span1'>
                                        <?php echo $html->img('img/surgeon_small.png',array('class'=>"CommentImg",'style'=>"float:left;"));?>
                                    </div>
                                     <div class='span11'>
                                        <label id="record-<?php  echo $item['Comment']['id'];?>">
                                            <textarea class="span12" placeholder='Hãy viết ý kiến của bạn vào đây...' id="commentMark-<?php  echo $item['Comment']['id'];?>" name="commentMark" cols="60"></textarea>
                                        </label>
                                        <a id="SubmitComment" class="btn btn-icon btn-primary glyphicons circle_ok replyCmt">Trả lời</a>
                                    </div>
                                </div>
                                <?php }?>
                           </div>
                        <?php
                        }?>
                        <div id="bottomMoreButton">
                        <a id="more_10" class="more_records" href="javascript: void(0)">Xem các đánh giá cũ hơn</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php }else{?>
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Thông báo</h3>
        <div class="box-ct clearfix row-fluid">
            <div class='span12 article detail'>
                <p>Không thể hiển thị bản ghi này. Bạn không có quền xem hoặc bản ghi không tồn tại .</p>
            </div>
        </div>
    </div>
<?php }?>
</div>
<div class="clearfix"><br></div>