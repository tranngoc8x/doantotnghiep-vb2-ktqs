<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Thay đổi mật khẩu</h3>

	<?php echo $form->create("User",array('controller'=>'users','action'=>'changepass'),array('class'=>'offset3'));?>
	<div class='row'>
		<p>
			<label for="password">Mật khẩu hiện tại</label>
	        <?php echo $form->input('password',array('type'=>'password','id'=>'password'));?>
			<?php if(!empty($mgs_pass)){?>
			<div class=" errormesage"><?php echo $mgs_pass;?></div>
			<?php }?>
			<?php if(!empty($mgr_oldpass)){?>
			<div class=" errormesage"><?php echo $mgr_oldpass;?></div>
			<?php }?>
		</p>
		<p>
			<label for="newpass">Mật khẩu mới</label>
	        <?php echo $form->input('newpass',array('type'=>'password','id'=>'newpass'));?>
			<?php if(!empty($mgs_newpass)){?>
			<div class=" errormesage"><?php echo $mgs_newpass;?></div>
			<?php }?>
		</p>
		<p>
			<label for="repassword">Gõ lại mật khẩu</label>
	        <?php echo $form->input('repassword',array('type'=>'password','id'=>'repassword'));?>
			<?php if(!empty($mgs_repass)){?>
			<div class="errormesage"><?php echo $mgs_repass;?></div>
			<?php }?>
		</p>

	</div>

	<div class='row'>
			<button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Thay đổi</button>
	</div>

<?php echo $form->end();?>

</div>
