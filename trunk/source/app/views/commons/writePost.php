<?php
    foreach ($result as $key => $item) {
 ?>
<div class="friends_area" id="record-<?php  echo $item['Comment']['id']?>">
    <div class="span1">
       <img src="<?php echo BASE_PATH;?>/img/surgeon.png" style="float:left;" />
    </div>
    <div class="span11">
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
    </div>
     <?php if(isset($_SESSION['user_token']) && isset($_SESSION['ssid'])){?>
    <div class="commentBox row" align="right" id="commentBox-<?php  echo $item['Comment']['id'];?>" style="display:none">
        <div class="span1">
            <img src="<?php echo BASE_PATH;?>/img/surgeon_small.png" style="float:left;" class="CommentImg" />
        </div>
         <div class="span11">
            <label id="record-<?php  echo $item['Comment']['id'];?>">
                <textarea class="span12" placeholder="Hãy viết ý kiến của bạn vào đây..." id="commentMark-<?php  echo $item['Comment']['id'];?>" name="commentMark" cols="60"></textarea>
            </label>
            <a id="SubmitComment" class="btn btn-icon btn-primary glyphicons circle_ok replyCmt">Trả lời</a>
        </div>
    </div>
    <?php }?>
</div>
<?php }?>