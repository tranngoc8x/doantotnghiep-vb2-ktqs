<!DOCTYPE html>
<html>
	<head>
		<title>Đăng nhập hệ thống</title>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<?php echo $html->css(array('bootstrap.min','bootstrap-responsive.min','admin/glyphicons','admin/template',"admin/uniform.default"));?>
		<link rel="stylesheet/less" href="<?php echo BASE_PATH;?>/css/admin/style.less?1361270115" />
		<?php echo $html->script(array('jquery-1.8.2.min','modernizr.custom.76094','less-1.3.3.min'));?>
	</head>
	<body>
		<div class="container-fluid fixed login">
			<div id="login">
				<?php echo $form->create("User",array('controller'=>'users','action'=>'login'),array('class'=>'form-signin'));?>
					<div class="widget widget-4">
						<div class="widget-head">
							<h4 class="heading">Quản trị hệ thống</h4>
						</div>
					</div>
					<h2 class="glyphicons unlock form-signin-heading"><i></i>Đăng nhập</h2>
					<div class="uniformjs">
						<?php if(!empty($mgs)){?>
				    		<div class="errormesage"><?php echo $mgs;?></div>
				    	<?php }?>
						<?php if(!empty($mgs_usr)){?>
				    		<div class="errormesage"><?php echo $mgs_usr;?></div>
				    	<?php }?>
						<?php echo $form->input('username',array('class'=>'input-block-level','placeholder'=>'Tài khoản','id'=>'username'));?>
						<?php if(!empty($mgs_pass)){?>
				    	<div class="errormesage"><?php echo $mgs_pass;?></div>
				    	<?php }?>

						<?php echo $form->input('password',array('type'=>'password','placeholder'=>'Mật khẩu','class'=>'input-block-level','id'=>'password'));?>
					<button class="btn btn-large btn-primary" type="submit">Đăng nhập</button>
				<?php echo $form->end();?>
			</div>
		</div>
	</body>
</html>