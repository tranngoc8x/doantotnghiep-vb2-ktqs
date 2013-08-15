<!DOCTYPE html>
<html>
<head>
	<title>Quản trị websitte</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<!-- Bootstrap -->
	<?php echo $html->css(array('bootstrap.min','bootstrap-responsive.min','admin/glyphicons','admin/template'));?>
	<!-- Theme -->
	<link rel="stylesheet/less" href="<?php echo BASE_PATH;?>/css/admin/style.less" />
	<?php
		echo $html->script(array('jquery-1.9.1','jquery-1.8.2.min','bootstrap.min','less-1.3.3.min','script','ckeditor/ckeditor'));
	?>
	<script>
		CKEDITOR.replace( 'ckeditor' ,
		{
		enterMode	 : Number(2)
		});
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<!-- Start Content -->
	<div class="container-fluid fixed">
		<div class="navbar main">
			<a href="index" class="appbrand"><span>Admin <span>Quản trị hệ thống</span></span></a>
			<button type="button" class="btn btn-navbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<ul class="topnav pull-right">
				 
				<li class="dropdown visible-desktop">
					<a href="" data-toggle="dropdown" class="glyphicons cogwheel"><i></i>Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu pull-right">
						<li><a href="">Some option</a></li>
						<li><a href="">Some other option</a></li>
						<li><a href="">Other option</a></li>
					</ul>
				</li>
				 
				 
				<li class="account">
					<a href="#" class="glyphicons logout lock"><span class="hidden-phone text">tranngoc8x</span><i></i></a>
					 
				</li>
			</ul>
		</div>

		<div id="wrapper">
			<div id="menu" class="hidden-phone">
				<div id="menuInner">
					<ul>
						<li class="heading"><span>Danh mục</span></li>
						<li class="glyphicons edit <?php if($this->_controller == "Manus") echo "active";?>">
							<?php echo $html->link('<i></i><span>Nhà sản xuất</span>',array('controller'=>'manus','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Distributes") echo "active";?>">
							<?php echo $html->link('<i></i><span>Nhà phân phối</span>',array('controller'=>'distributes','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Types") echo "active";?>">
							<?php echo $html->link('<i></i><span>Nhóm dược lý</span>',array('controller'=>'types','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Drugs") echo "active";?>">
							<?php echo $html->link('<i></i><span>Thuốc</span>',array('controller'=>'drugs','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Clinics") echo "active";?>">
							<?php echo $html->link('<i></i><span>Phòng khám</span>',array('controller'=>'clinics','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Hopitals") echo "active";?>">
							<?php echo $html->link('<i></i><span>Bệnh viện</span>',array('controller'=>'hopitals','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Drugstores") echo "active";?>">
							<?php echo $html->link('<i></i><span>Nhà thuốc</span>',array('controller'=>'drugstores','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Departments") echo "active";?>">
							<?php echo $html->link('<i></i><span>Chuyên khoa</span>',array('controller'=>'departments','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Cities") echo "active";?>">
							<?php echo $html->link('<i></i><span>Thành phố</span>',array('controller'=>'cities','action'=>'index'));?>
						</li>
						<li class="glyphicons edit <?php if($this->_controller == "Equips") echo "active";?>">
							<?php echo $html->link('<i></i><span>Thiết bị y tế</span>',array('controller'=>'equips','action'=>'index'));?>
						</li>
					</ul>
					<ul>
						<li class="heading"><span>Hệ thống</span></li>
						<li class="glyphicons user"><a href="logout"><i></i><span>Logout</span></a></li>
						<li class="glyphicons edit <?php if($this->_controller == "Infors") echo "active";?>">
							<?php echo $html->link('<i></i><span>Nội dung chung</span>',array('controller'=>'infors','action'=>'index'));?>
						</li>
					</ul>
				</div>
			</div>
			<div id="content">
				<ul class="breadcrumb">
					<li><a href="index" class="glyphicons home"><i></i> Quản trị</a></li>
					<li class="divider"></li>
					<li>
						<?php echo $html->link($this->_controller,array('controller'=>strtolower($this->_controller),'action'=>'index'));?>
					</li>

				</ul>
				<div class="separator"></div>
				<div class='well'>