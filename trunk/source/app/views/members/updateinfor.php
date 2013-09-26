<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Tài khoản người dùng</h3>
        <div class="box-ct clearfix row-fluid">
        	<div class='row-fluid'>
        		<?php if(isset($_SESSION['ssid'])){?>
	        	<div class='span12'>

	        		 <div class="boxheader boxheader-main clearfix">
						<h5>Cập nhật thông tin</h5>
	        		 </div>

						<?php echo $form->create("Member",array('controller'=>'members','action'=>'updateinfor'),array('class'=>'offset3 span4'));?>
						<div class='row'>
							<p>
								<label for="ten">Họ tên</label>
						        <?php echo $form->input('ten',array('type'=>'text','class'=>'span12','id'=>'ten','value'=>$data['Member']['ten']));?>
							</p>
							<p>
								<label for="infor">Thông tin khác</label>
						        <?php echo $form->textarea('infor',$data['Member']['infor'],array('class'=>'span12','id'=>'infor'));?>
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