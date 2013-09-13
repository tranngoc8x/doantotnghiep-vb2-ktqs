<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tài khoản người dùng</h3>
        <div class="box-ct clearfix row-fluid">
        	<div class='row-fluid'>
        		<?php if(!isset($_SESSION['ssid'])){?>
	        	<div class='span12'>

	        		 <div class="boxheader boxheader-main clearfix">
						<h5>Đăng nhập</h5>
	        		 </div>

						<?php echo $form->create("Member",array('controller'=>'members','action'=>'login'),array('class'=>'offset3 span3'));?>

						<div class='row'>

							<?php if(!empty($mgs)){?>
					    	<p><div class="span12 errormesage"><?php echo $mgs;?></div></p>
					    	<?php }?>

							<p>
								<label for="username">Tài khoản</label>
								<div class="input-prepend">
							        <span class="add-on"><i class="icon-user"></i></span>
							        <?php echo $form->input('username',array('class'=>'span12','placeholder'=>'tài khoản','id'=>'username'));?>
							    	<?php if(!empty($mgs_usr)){?>
							    	<div class="span12 errormesage"><?php echo $mgs_usr;?></div>
							    	<?php }?>
							    </div>
							</p>
							<p>
								<label for="password">Mật khẩu</label>
								<div class="input-prepend">
							        <span class="add-on"><i class="icon-lock"></i></span>
						        	<?php echo $form->input('password',array('type'=>'password','placeholder'=>'mật khẩu','class'=>'span12','id'=>'password'));?>
									<?php if(!empty($mgs_pass)){?>
							    	<div class="span12 errormesage"><?php echo $mgs_pass;?></div>
							    	<?php }?>
								</div>
							</p>
						</div>
						<div class='row'>
 							<span class='span6'><input type='submit' class='btn btn-icon btn-primary glyphicons circle_ok' name='btnlogin' value='Đăng nhập' /></span>
 							<span class='span6'>
 								<div><?php echo $html->link('Quên mật khẩu ?',array('controller'=>'members','action'=>'forget'));?></div>
 								<div><?php echo $html->link('Đăng ký tài khoản !',array('controller'=>'members','action'=>'register'));?></div>
 							</span>
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