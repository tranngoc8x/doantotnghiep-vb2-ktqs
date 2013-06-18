<!DOCTYPE html>
<html>
<head>
	<title>Quản trị websitte</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<!-- Bootstrap -->
	<?php echo $html->css(array('bootstrap.min','bootstrap-responsive.min','admin/glyphicons'));?>
	<!-- Theme -->
	<link rel="stylesheet/less" href="<?php echo BASE_PATH;?>/css/admin/style.less" />
	<?php
		echo $html->script(array('jquery-1.9.1','jquery-1.8.2.min','bootstrap.min','less-1.3.3.min'));
	?>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<!-- Start Content -->
	<div class="container-fluid fixed">
		<div class="navbar main">
			<a href="index.php" class="appbrand"><span>Admin+ <span>lovely headline here</span></span></a>
			<button type="button" class="btn btn-navbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<ul class="topnav pull-right">
				<li class="visible-desktop">
					<ul class="notif">
						<li><a href="" class="glyphicons envelope" data-toggle="tooltip" data-placement="bottom" data-original-title="5 new messages"><i></i> 5</a></li>
						<li><a href="" class="glyphicons shopping_cart" data-toggle="tooltip" data-placement="bottom" data-original-title="1 new orders"><i></i> 1</a></li>
						<li><a href="" class="glyphicons log_book" data-toggle="tooltip" data-placement="bottom" data-original-title="3 new activities"><i></i> 3</a></li>
					</ul>
				</li>
				<li class="dropdown visible-desktop">
					<a href="" data-toggle="dropdown" class="glyphicons cogwheel"><i></i>Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu pull-right">
						<li><a href="">Some option</a></li>
						<li><a href="">Some other option</a></li>
						<li><a href="">Other option</a></li>
					</ul>
				</li>
				<li class="hidden-phone">
					<a href="#themer" data-toggle="collapse" class="glyphicons eyedropper"><i></i><span>Themer</span></a>
					<div id="themer" class="collapse">
						<div class="wrapper">
							<h4>Themer <span>color &amp; layout options</span></h4>
							<ul>
								<li>Theme: <select id="themer-theme" class="pull-right"></select><div class="clearfix"></div></li>
								<li>Primary Color: <input type="text" data-type="minicolors" data-default="#ffffff" data-slider="hue" data-textfield="false" data-position="left" id="themer-primary-cp" /><div class="clearfix"></div></li>
								<li>
									<span class="link" id="themer-custom-reset">reset theme</span>
									<span class="pull-right"><label>advanced <input type="checkbox" value="1" id="themer-advanced-toggle" /></label></span>
								</li>
							</ul>
							<div id="themer-getcode" class="hide">
								<hr class="separator" />
								<button class="btn btn-primary btn-small pull-right btn-icon glyphicons download" id="themer-getcode-less"><i></i>Get LESS</button>
								<button class="btn btn-inverse btn-small pull-right btn-icon glyphicons download" id="themer-getcode-css"><i></i>Get CSS</button>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</li>
				<li class="hidden-phone">
					<a href="#" data-toggle="dropdown"><img src="theme/images/lang/en.png" alt="en" /></a>
			    	<ul class="dropdown-menu pull-right">
			      		<li class="active"><a href="#" title="English"><img src="theme/images/lang/en.png" alt="English" /> English</a></li>
			      		<li><a href="#" title="Romanian"><img src="theme/images/lang/ro.png" alt="Romanian" /> Romanian</a></li>
			      		<li><a href="#" title="Italian"><img src="theme/images/lang/it.png" alt="Italian" /> Italian</a></li>
			      		<li><a href="#" title="French"><img src="theme/images/lang/fr.png" alt="French" /> French</a></li>
			      		<li><a href="#" title="Polish"><img src="theme/images/lang/pl.png" alt="Polish" /> Polish</a></li>
			    	</ul>
				</li>
				<li class="account">
					<a data-toggle="dropdown" href="form_demo.php" class="glyphicons logout lock"><span class="hidden-phone text">mosaicpro</span><i></i></a>
					<ul class="dropdown-menu pull-right">
						<li><a href="form_demo.php" class="glyphicons cogwheel">Settings<i></i></a></li>
						<li><a href="form_demo.php" class="glyphicons camera">My Photos<i></i></a></li>
						<li class="highlight profile">
							<span>
								<span class="heading">Profile <a href="form_demo.php" class="pull-right">edit</a></span>
								<span class="img"></span>
								<span class="details">
									<a href="form_demo.php">Mosaic Pro</a>
									contact@mosaicpro.biz
								</span>
								<span class="clearfix"></span>
							</span>
						</li>
						<li>
							<span>
								<a class="btn btn-default btn-small pull-right" style="padding: 2px 10px; background: #fff;" href="login.php">Sign Out</a>
							</span>
						</li>
					</ul>
				</li>
			</ul>
		</div>

		<div id="wrapper">
			<div id="menu" class="hidden-phone">
				<div id="menuInner">
					<div id="search">
						<input type="text" placeholder="Quick search ..." />
						<button class="glyphicons search"><i></i></button>
					</div>
					<ul>
						<li class="heading"><span>Category</span></li>
						<li class="glyphicons home active"><a href="index.php"><i></i><span>Dashboard</span></a></li>
						<li class="glyphicons cogwheels"><a href="ui.php"><i></i><span>UI Elements</span></a></li>
						<li class="glyphicons charts"><a href="charts.php"><i></i><span>Charts</span></a></li>
						<li class="hasSubmenu">
							<a data-toggle="collapse" class="glyphicons show_thumbnails_with_lines" href="#menu_forms"><i></i><span>Forms</span></a>
							<ul class="collapse" id="menu_forms">
								<li class=""><a href="form_demo.php"><span>My Account</span></a></li>
								<li class=""><a href="form_elements.php"><span>Form Elements</span></a></li>
								<li class=""><a href="form_validator.php"><span>Form Validator</span></a></li>
								<li class=""><a href="file_managers.php"><span>File Managers</span></a></li>
							</ul>
						</li>
						<li class="">
							<a class="glyphicons table" href="tables.php"><i></i><span>Tables</span></a>
						</li>
						<li class="glyphicons calendar"><a href="calendar.php"><i></i><span>Calendar</span></a></li>
						<li class="glyphicons user"><a href="login.php"><i></i><span>Login</span></a></li>
					</ul>
					<ul>
						<li class="heading"><span>Sections</span></li>
						<li class="glyphicons coins"><a href="finances.php"><i></i><span>Finances</span></a></li>
						<li class="hasSubmenu">
							<a data-toggle="collapse" class="glyphicons shopping_cart" href="#menu_ecommerce"><i></i><span>Online Shop</span></a>
							<ul class="collapse" id="menu_ecommerce">
								<li class=""><a href="products.php"><span>Products</span></a></li>
								<li class=""><a href="product_edit.php"><span>Add product</span></a></li>
							</ul>
						</li>
						<li class="glyphicons sort"><a href="pages.php"><i></i><span>Site Pages</span></a></li>
						<li class="glyphicons picture"><a href="gallery.php"><i></i><span>Photo Gallery</span></a></li>
						<li class="glyphicons adress_book"><a href="bookings.php"><i></i><span>Bookings</span></a></li>
					</ul>
				</div>
			</div>
			<div id="content">
				<ul class="breadcrumb">
					<li><a href="index.php" class="glyphicons home"><i></i> Quản trị</a></li>
					<li class="divider"></li>
					<li>Trang chủ</li>
				</ul>
				<div class="separator"></div>

				<div class="heading-buttons">
					<h3 class="glyphicons display"><i></i> Dashboard</h3>
					<div class="buttons pull-right">
						<a href="" class="btn btn-default btn-icon glyphicons edit"><i></i> Edit</a>
					</div>
					<div class="clearfix" style="clear: both;"></div>
				</div>
				<div class="separator"></div>

				maincontent
