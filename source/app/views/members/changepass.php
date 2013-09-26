<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tài khoản người dùng</h3>
        <div class="box-ct clearfix row-fluid">
        	<div class='row-fluid'>
        		<?php if(isset($_SESSION['ssid'])){?>
	        	<div class='span12'>

	        		 <div class="boxheader boxheader-main clearfix">
						<h5>Thay đổi mật khẩu</h5>
	        		 </div>

						<?php echo $form->create("Member",array('controller'=>'members','action'=>'changepass'),array('class'=>'offset3 span4'));?>
						<div class='row'>
							<p>
								<label for="password">Mật khẩu hiện tại</label>
						        <?php echo $form->input('password',array('type'=>'password','class'=>'span12','id'=>'password'));?>
								<?php if(!empty($mgs_pass)){?>
								<div class=" span12 errormesage"><?php echo $mgs_pass;?></div>
								<?php }?>
								<?php if(!empty($mgr_oldpass)){?>
								<div class=" span12 errormesage"><?php echo $mgr_oldpass;?></div>
								<?php }?>
							</p>
							<p>
								<label for="newpass">Mật khẩu mới</label>
						        <?php echo $form->input('newpass',array('type'=>'password','class'=>'span12','id'=>'newpass'));?>
								<?php if(!empty($mgs_newpass)){?>
								<div class=" span12 errormesage"><?php echo $mgs_newpass;?></div>
								<?php }?>
							</p>
							<p>
								<label for="repassword">Gõ lại mật khẩu</label>
						        <?php echo $form->input('repassword',array('type'=>'password','class'=>'span12','id'=>'repassword'));?>
								<?php if(!empty($mgs_repass)){?>
								<div class=" span12 errormesage"><?php echo $mgs_repass;?></div>
								<?php }?>
							</p>

							<p>

								<label for="Mã an toàn">Mã an toàn</label>
								<div class="span4"><?php echo $form->input('code',array('class'=>'span12','id'=>'code'));?></div>
							    <div class="span7">
							    	<img src='<?php echo BASE_PATH;?>/commons/captcha/' id='captchaimg'>
							    	<img src="<?php echo BASE_PATH;?>/img/refresh.png" id='refreshimg' alt="Đổi">
							    </div>
							    <?php if(!empty($mgs_code)){?>
							    <div class=" span12 errormesage"><?php echo $mgs_code;?></div>
								<?php }?>
							</p>
						</div>

						<div class='row'>
 							<span class='span6'><input type='submit' class='btn btn-icon btn-primary glyphicons circle_ok' name='btnlogin' value='Đổi mật khẩu' /></span>
						</div>

					<?php echo $form->end();?>

				</div>
				<?php }else{?>
					<div class='span12'>
						<div class="boxheader boxheader-main clearfix">
							<h5>Thông báo</h5>
		        		 </div>
		        		 <p class='span12' align='center'><br>Bạn chưa đăng nhập thành công.</p>
		        		 <?php header( "refresh:3;url=".BASE_PATH.'/members/login' );?>
	        		</div>
				<?php }?>
			</div>
		</div>
	</div>
</div>