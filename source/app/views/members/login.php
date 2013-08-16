<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tài khoản người dùng</h3>
        <div class="box-ct clearfix row-fluid">
        	<div class='row-fluid'>
        		<?php if(!isset($_SESSION['ssid'])){?>
	        	<div class='span5'>

	        		 <div class="boxheader boxheader-main clearfix">
						<h5>Đăng nhập</h5>
	        		 </div>

						<?php echo $form->create("Member",array('controller'=>'members','action'=>'login'));?>
						<fieldset>
							<p>
								<label for="username">Tài khoản</label>
						        <?php echo $form->input('username',array('class'=>'span8','id'=>'username'));?>
							</p>
							<p>
								<label for="password">Mật khẩu</label>
						        <?php echo $form->input('password',array('type'=>'password','placeholder'=>'123','class'=>'span8','id'=>'password'));?>
							</p>
 							<input type='submit' class='btn btn-icon btn-primary glyphicons circle_ok' name='btnlogin' value='Đăng nhập' />
						</fieldset>
					<?php echo $form->end();?>

				</div>
				<div class='span7'>
					<div class="boxheader boxheader-main clearfix">
						<h5>Đăng ký tài khoản</h5>
	        		 </div>
					<form action="#" method="POST" id="login-form" class='span12'>
						<fieldset>
							<p>
								<label for="login-username">Tài khoản</label>
								<input type="text" id="login-username" class="round full-width-input" placeholder='user1,user2' autofocus />
							</p>
							<p>
								<label for="login-password">Mật khẩu</label>
								<input type="password" id="login-password" placeholder='123' class="round full-width-input" />
							</p>
							<p>I've <a href="#">forgotten my password</a>.</p>
							<input type='submit' class='btn btn-icon btn-primary glyphicons circle_ok' name='btnregister' value='Đăng ký' />
						</fieldset>
					</form>
				</div>
				<?php }else{?>
					<div class='span7'>
					<div class="boxheader boxheader-main clearfix">
						<h5>Thông báo</h5>
	        		 </div>
	        		 <p>Bạn đã đăng nhập thành công rồi</p>
	        		</div>
				<?php }?>
			</div>
		</div>
	</div>
</div>