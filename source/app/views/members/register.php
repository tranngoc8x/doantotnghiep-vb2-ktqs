<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tài khoản người dùng</h3>
        <div class="box-ct clearfix row-fluid">
        	<div class='row-fluid'>
        		<?php if(!isset($_SESSION['ssid'])){?>
	        	<div class='span12'>

	        		 <div class="boxheader boxheader-main clearfix">
						<h5>Đăng ký</h5>
	        		 </div>

						<?php echo $form->create("Member",array('controller'=>'members','action'=>'register'),array('class'=>'offset3 span4'));?>
						<div class='row'>
							<p>
								<label for="username">Họ tên</label>
							    <?php echo $form->input('ten',array('class'=>'span12','placeholder'=>'Tên của bạn','id'=>'ten'));?>
							</p>
							<p>
								<label for="username">Tài khoản</label>
							    <?php echo $form->input('username',array('class'=>'span12','placeholder'=>'tài khoản','id'=>'username'));?>
							</p>
							<p>
								<label for="password">Mật khẩu</label>
						        <?php echo $form->input('password',array('type'=>'password','class'=>'span12','id'=>'password'));?>
							</p>
							<p>
								<label for="password">Gõ lại mật khẩu</label>
						        <?php echo $form->input('repassword',array('type'=>'password','class'=>'span12','id'=>'repassword'));?>
								<?php if(!empty($mgs_pass)){?>
								<div class=" span12 errormesage"><?php echo $mgs_pass;?></div>
								<?php }?>
							</p>
							<p>
								<label for="username">Email</label>
							    <?php echo $form->input('email',array('class'=>'span12','placeholder'=>'email','id'=>'email'));?>
							</p>
							<p>
								<label for="username">Thông tin</label>
							    <?php echo $form->textarea('infor',null,array('class'=>'span12','placeholder'=>'thông tin cá nhân khác','id'=>'infor'));?>
							</p>
							<p>

								<label for="username">Mã an toàn</label>
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
 							<span class='span6'><input type='submit' class='btn btn-icon btn-primary glyphicons circle_ok' name='btnlogin' value='Đăng ký' /></span>
						</div>

					<?php echo $form->end();?>

				</div>
				<?php }else{?>
					<div class='span12'>
						<div class="boxheader boxheader-main clearfix">
							<h5>Thông báo</h5>
		        		 </div>
		        		 <p class='span12' align='center'><br>Bạn đã đăng nhập thành công.</p>
		        		 <p class='span12' align='center'>Chuyển về trang chủ sau 3 giây nữa...</p>
		        		 <?php header( "refresh:3;url=".BASE_PATH );?>
	        		</div>
				<?php }?>
			</div>
		</div>
	</div>
</div>