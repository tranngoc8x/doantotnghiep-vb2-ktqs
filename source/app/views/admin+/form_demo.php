<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<head>
	<title>AdminPlus - Premium Bootstrap Admin Template</title>
	
	<!-- Meta -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	
	<!-- Bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
	
	<!-- Bootstrap Extended -->
	<link href="bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet">
	<link href="bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap-responsive.min.css" rel="stylesheet">
	<link href="bootstrap/extend/bootstrap-wysihtml5/css/bootstrap-wysihtml5-0.0.2.css" rel="stylesheet">
	
	<!-- JQueryUI v1.9.2 -->
	<link rel="stylesheet" href="theme/scripts/jquery-ui-1.9.2.custom/css/smoothness/jquery-ui-1.9.2.custom.min.css" />
	
	<!-- Glyphicons -->
	<link rel="stylesheet" href="theme/css/glyphicons.css" />
	
	<!-- Bootstrap Extended -->
	<link rel="stylesheet" href="bootstrap/extend/bootstrap-select/bootstrap-select.css" />
	<link rel="stylesheet" href="bootstrap/extend/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
	
	<!-- Uniform -->
	<link rel="stylesheet" media="screen" href="theme/scripts/pixelmatrix-uniform/css/uniform.default.css" />

	<!-- JQuery v1.8.2 -->
	<script src="theme/scripts/jquery-1.8.2.min.js"></script>
	
	<!-- Modernizr -->
	<script src="theme/scripts/modernizr.custom.76094.js"></script>
	
	<!-- MiniColors -->
	<link rel="stylesheet" media="screen" href="theme/scripts/jquery-miniColors/jquery.miniColors.css" />
	
	<!-- Theme -->
	<link rel="stylesheet/less" href="theme/less/style.less?1361269977" />
	
	<!-- FireBug Lite -->
	<!-- <script type="text/javascript" src="https://getfirebug.com/firebug-lite-debug.js"></script> -->

	<!-- LESS 2 CSS -->
	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
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
			      		<li class="active"><a href="form_demo.php" title="English"><img src="theme/images/lang/en.png" alt="English"> English</a></li>
			      		<li><a href="form_demo.php" title="Romanian"><img src="theme/images/lang/ro.png" alt="Romanian"> Romanian</a></li>
			      		<li><a href="form_demo.php" title="Italian"><img src="theme/images/lang/it.png" alt="Italian"> Italian</a></li>
			      		<li><a href="form_demo.php" title="French"><img src="theme/images/lang/fr.png" alt="French"> French</a></li>
			      		<li><a href="form_demo.php" title="Polish"><img src="theme/images/lang/pl.png" alt="Polish"> Polish</a></li>
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
									admin@scriptgates.com
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
					<li class="glyphicons home"><a href="index.php"><i></i><span>Dashboard</span></a></li>
					<li class="glyphicons cogwheels"><a href="ui.php"><i></i><span>UI Elements</span></a></li>
					<li class="glyphicons charts"><a href="charts.php"><i></i><span>Charts</span></a></li>
					<li class="hasSubmenu active">
						<a data-toggle="collapse" class="glyphicons show_thumbnails_with_lines" href="#menu_forms"><i></i><span>Forms</span></a>
						<ul class="collapse in" id="menu_forms">
							<li class=" active"><a href="form_demo.php"><span>My Account</span></a></li>
							<li class=""><a href="form_elements.php"><span>Form Elements</span></a></li>
							<li class=""><a href="form_validator.php"><span>Form Validator</span></a></li>
							<li class=""><a href="file_managers.php"><span>File Managers</span></a></li>
						</ul>
					</li>
					<li class="">
						<a class="glyphicons table" href="tables.php"><i></i><span>Tables</span></a>
					</li>
					<li class="glyphicons calendar"><a href="calenda.phpr"><i></i><span>Calendar</span></a></li>
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
	<li><a href="index.php" class="glyphicons home"><i></i> AdminPlus</a></li>
	<li class="divider"></li>
	<li>Forms</li>
	<li class="divider"></li>
	<li>Demo Forms</li>
</ul>
<div class="separator"></div>

<!-- <h3 class="glyphicons user"><i></i> My Account</h3> -->

<div class="widget widget-2 widget-tabs widget-tabs-2 tabs-right border-bottom-none">
	<div class="widget-head">
		<ul>
			<li class="active"><a class="glyphicons settings" href="#account-settings" data-toggle="tab"><i></i>Account settings</a></li>
			<li><a class="glyphicons user" href="#account-details" data-toggle="tab"><i></i>Account details</a></li>
		</ul>
	</div>
</div>

<div class="innerLR">
	
	<form class="form-horizontal">
	<div class="tab-content" style="padding: 0;">
		<div class="tab-pane" id="account-details">
		
			<div class="widget widget-2">
				<div class="widget-head">
					<h4 class="heading glyphicons edit"><i></i>Personal details</h4>
				</div>
				<div class="widget-body" style="padding-bottom: 0;">
					<div class="row-fluid">
						<div class="span6">
							<div class="control-group">
								<label class="control-label">First name</label>
								<div class="controls">
									<input type="text" value="John" class="span10" />
									<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="First name is mandatory"><i></i></span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Last name</label>
								<div class="controls">
									<input type="text" value="Doe" class="span10" />
									<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="Last name is mandatory"><i></i></span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Date of birth</label>
								<div class="controls">
									<div class="input-append">
										<input type="text" id="datepicker" class="span12" value="13/06/1988" />
										<span class="add-on glyphicons calendar"><i></i></span>
									</div>
								</div>
							</div>
						</div>
						<div class="span6">
							<div class="control-group">
								<label class="control-label">Gender</label>
								<div class="controls">
									<select class="span12">
										<option>Male</option>
										<option>Female</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Age</label>
								<div class="controls">
									<input type="text" value="25" class="input-mini" />
								</div>
							</div>
						</div>
					</div>
					<hr class="separator bottom" />
					<div class="control-group row-fluid">
						<label class="control-label">About me</label>
						<div class="controls">
							<textarea id="mustHaveId" class="wysihtml5 span12" rows="5">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</textarea>
						</div>
					</div>
					<div class="form-actions" style="margin: 0;">
						<button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save changes</button>
						<button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
					</div>
				</div>
			</div>
		</div>
		<div class="tab-pane active" id="account-settings">
			<div class="widget widget-2">
				<div class="widget-head">
					<h4 class="heading glyphicons settings"><i></i>Account settings</h4>
				</div>
				<div class="widget-body" style="padding-bottom: 0;">
					<div class="row-fluid">
						<div class="span3">
							<strong>Change password</strong>
							<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						</div>
						<div class="span9">
							<label for="inputUsername">Username</label>
							<input type="text" id="inputUsername" class="span10" value="john.doe2012" disabled="disabled" />
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="Username can't be changed"><i></i></span>
							<div class="separator"></div>
									
							<label for="inputPasswordOld">Old password</label>
							<input type="password" id="inputPasswordOld" class="span10" value="" placeholder="Leave empty for no change" />
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="Leave empty if you don't wish to change the password"><i></i></span>
							<div class="separator"></div>
							
							<label for="inputPasswordNew">New password</label>
							<input type="password" id="inputPasswordNew" class="span12" value="" placeholder="Leave empty for no change" />
							<div class="separator"></div>
							
							<label for="inputPasswordNew2">Repeat new password</label>
							<input type="password" id="inputPasswordNew2" class="span12" value="" placeholder="Leave empty for no change" />
							<div class="separator"></div>
						</div>
					</div>
					<hr class="separator bottom" />
					<div class="row-fluid">
						<div class="span3">
							<strong>Contact details</strong>
							<p class="muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						</div>
						<div class="span9">
							<div class="row-fluid">
							<div class="span6">
								<label for="inputPhone">Phone</label>
								<div class="input-prepend">
									<span class="add-on glyphicons phone"><i></i></span>
									<input type="text" id="inputPhone" class="input-large" placeholder="01234567897" />
								</div>
								<div class="separator"></div>
									
								<label for="inputEmail">E-mail</label>
								<div class="input-prepend">
									<span class="add-on glyphicons envelope"><i></i></span>
									<input type="text" id="inputEmail" class="input-large" placeholder="contact@mosaicpro.biz" />
								</div>
								<div class="separator"></div>
									
								<label for="inputWebsite">Website</label>
								<div class="input-prepend">
									<span class="add-on glyphicons link"><i></i></span>
									<input type="text" id="inputWebsite" class="input-large" placeholder="http://www.mosaicpro.biz" />
								</div>
								<div class="separator"></div>
							</div>
							<div class="span6">
								<label for="inputFacebook">Facebook</label>
								<div class="input-prepend">
									<span class="add-on glyphicons facebook"><i></i></span>
									<input type="text" id="inputFacebook" class="input-large" placeholder="/mosaicpro" />
								</div>
								<div class="separator"></div>
								
								<label for="inputTwitter">Twitter</label>
								<div class="input-prepend">
									<span class="add-on glyphicons twitter"><i></i></span>
									<input type="text" id="inputTwitter" class="input-large" placeholder="/mosaicpro" />
								</div>
								<div class="separator"></div>
								
								<label for="inputSkype">Skype ID</label>
								<div class="input-prepend">
									<span class="add-on glyphicons skype"><i></i></span>
									<input type="text" id="inputSkype" class="input-large" placeholder="mySkypeID" />
								</div>
								<div class="separator"></div>
								
								<label for="inputYahoo">Yahoo ID</label>
								<div class="input-prepend">
									<span class="add-on glyphicons yahoo"><i></i></span>
									<input type="text" id="inputYahoo" class="input-large" placeholder="myYahooID" />
								</div>
								<div class="separator"></div>
							</div>
							</div>
						</div>
					</div>
					<div class="form-actions" style="margin: 0; padding-right: 0;">
						<button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok pull-right"><i></i>Save changes</button>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	</form>
	
</div>
<br/>
		
				<!-- End Content -->
		</div>
		<!-- End Wrapper -->
		</div>
		
		<!-- Sticky Footer -->
		<div id="footer">
	      	<div class="wrap">
	      		<ul>
	      			<li class="active"><span data-toggle="layout" data-layout="fixed" class="glyphicons show_big_thumbnails text" title=""><i></i><span class="hidden-phone">Fixed layout</span></span></li>
	      			<li><span data-toggle="layout" data-layout="fluid" class="glyphicons show_thumbnails text" title=""><i></i><span class="hidden-phone">Fluid layout</span></span></li>
	      			<li><a href="documentation.php" class="glyphicons circle_question_mark text" title=""><i></i><span class="hidden-phone">Documentation</span></a></li>
	      		</ul>
	      	</div>
	    </div>
				
	</div>
	
	<!-- JQueryUI v1.9.2 -->
	<script src="theme/scripts/jquery-ui-1.9.2.custom/js/jquery-ui-1.9.2.custom.min.js"></script>
	
	<!-- JQueryUI Touch Punch -->
	<!-- small hack that enables the use of touch events on sites using the jQuery UI user interface library -->
	<script src="theme/scripts/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	
	<!-- MiniColors -->
	<script src="theme/scripts/jquery-miniColors/jquery.miniColors.js"></script>
	
	<!-- Themer -->
	<script>
	var themerPrimaryColor = '#DA4C4C';
	</script>
	<script src="theme/scripts/jquery.cookie.js"></script>
	<script src="theme/scripts/themer.js"></script>
	
	
	
	<!-- Resize Script -->
	<script src="theme/scripts/jquery.ba-resize.js"></script>
	
	<!-- Uniform -->
	<script src="theme/scripts/pixelmatrix-uniform/jquery.uniform.min.js"></script>
	
	<!-- Bootstrap Script -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap Extended -->
	<script src="bootstrap/extend/bootstrap-select/bootstrap-select.js"></script>
	<script src="bootstrap/extend/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
	<script src="bootstrap/extend/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
	<script src="bootstrap/extend/jasny-bootstrap/js/jasny-bootstrap.min.js" type="text/javascript"></script>
	<script src="bootstrap/extend/jasny-bootstrap/js/bootstrap-fileupload.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootbox.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootstrap-wysihtml5/js/wysihtml5-0.3.0_rc2.min.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootstrap-wysihtml5/js/bootstrap-wysihtml5-0.0.2.js" type="text/javascript"></script>
	
	<!-- Custom Onload Script -->
	<script src="theme/scripts/load.js"></script>
	
</body>
</html>