<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tài khoản người dùng</h3>
        <div class="box-ct clearfix row-liquid">
        		<?php if(isset($_SESSION['ssid'])){?>
					<div class='span12 clearfix'>
						<p></p>
						<p><strong>Họ tên</strong> : <?php echo  $member[0]['Member']['ten'];?></p>
						<p><strong>Tài khoản</strong> : <?php echo  $member[0]['Member']['username'];?></p>
						<p><strong>Email</strong> : <?php echo  $member[0]['Member']['email'];?></p>
						<p><strong>Thông tin khác</strong> : <br><?php echo  $member[0]['Member']['infor'];?></p>
					</div>
					<div class="form-actions clearfix">
						<?php echo $html->link('Đổi mật khẩu',array('controller'=>'members','action'=>'changepass'),array('class'=>'btn btn-icon btn-primary glyphicons circle_ok'));?>
						<?php echo $html->link('Cập nhật thông tin',array('controller'=>'members','action'=>'updateinfor'),array('class'=>'btn btn-icon btn-primary glyphicons circle_ok'));?>
					</div>
				<?php }else{?>
					<div class='span12 clearfix'>
						<div class="boxheader boxheader-main clearfix">
							<h5>Thông báo</h5>
		        		</div>
		        		<p class='span12' align='center'><br>Bạn chưa đăng nhập.</p>
		        		<?php header( "refresh:0;url=".BASE_PATH.'/members/login' );?>
	        		</div>
				<?php }?>
			</div>
	</div>
</div>