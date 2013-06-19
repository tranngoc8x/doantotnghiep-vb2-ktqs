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
	<link rel="stylesheet/less" href="theme/less/style.less?1361270250" />
	
	<!-- FireBug Lite -->
	<!-- <script type="text/javascript" src="https://getfirebug.com/firebug-lite-debug.js"></script> -->
	
	
	<!-- LESS 2 CSS -->
	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
</head>
<body>
	
	<!-- Start Content -->
	<div class="container-fluid fixed">
		
		<div class="navbar main">
			<a href="index.php?lang=en&page=index" class="appbrand"><span>Admin+ <span>lovely headline here</span></span></a>
			
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
			      		<li class="active"><a href="bookings.php" title="English"><img src="theme/images/lang/en.png" alt="English"> English</a></li>
			      		<li><a href="bookings.php" title="Romanian"><img src="theme/images/lang/ro.png" alt="Romanian"> Romanian</a></li>
			      		<li><a href="bookings.php" title="Italian"><img src="theme/images/lang/it.png" alt="Italian"> Italian</a></li>
			      		<li><a href="bookings.php" title="French"><img src="theme/images/lang/fr.png" alt="French"> French</a></li>
			      		<li><a href="bookings.php" title="Polish"><img src="theme/images/lang/pl.png" alt="Polish"> Polish</a></li>
			    	</ul>
				</li>
				<li class="account">
										<a data-toggle="dropdown" href="form_demo.php" class="glyphicons logout lock"><span class="hidden-phone text">mosaicpro</span><i></i></a>
					<ul class="dropdown-menu pull-right">
						<li><a href="form_dem.phpo" class="glyphicons cogwheel">Settings<i></i></a></li>
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
					<li class="glyphicons home"><a href="index.php"><i></i><span>Dashboard</span></a></li>
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
					<li class="glyphicons adress_book active"><a href="bookings.php"><i></i><span>Bookings</span></a></li>
				</ul>
			</div>
		</div>
		<div id="content">
		<ul class="breadcrumb">
	<li><a href="index.php?lang=en&page=index.php" class="glyphicons home"><i></i> AdminPlus</a></li>
	<li class="divider"></li>
	<li>Bookings</li>
</ul>
<div class="separator"></div>

<div class="heading-buttons">
	<h3 class="glyphicons adress_book"><i></i> Bookings</h3>
	<div class="buttons pull-right">
		<a href="" class="btn btn-primary btn-icon glyphicons circle_plus"><i></i> Add booking</a>
	</div>
</div>
<div class="separator" style="height: 5px;">&nbsp;</div>

<div class="filter-bar filter-bar-2 margin-bottom-none">
	<form>
		<div class="lbl glyphicons cogwheel"><i></i>Filter</div>
		<div>
			<label>From:</label>
			<div class="input-append">
				<input type="text" name="from" id="dateRangeFrom" class="input-mini" value="08/05/13" style="width: 53px;" />
				<span class="add-on glyphicons calendar"><i></i></span>
			</div>
		</div>
		<div>
			<label>To:</label>
			<div class="input-append">
				<input type="text" name="to" id="dateRangeTo" class="input-mini" value="08/18/13" style="width: 53px;" />
				<span class="add-on glyphicons calendar"><i></i></span>
			</div>
		</div>
		<div>
			<label>Min:</label>
			<div class="input-append">
				<input type="text" name="from" class="input-mini" style="width: 30px;" value="100" />
				<span class="add-on glyphicons euro"><i></i></span>
			</div>
		</div>
		<div>
			<label>Max:</label>
			<div class="input-append">
				<input type="text" name="from" class="input-mini" style="width: 30px;" value="500" />
				<span class="add-on glyphicons euro"><i></i></span>
			</div>
		</div>
		<div>
			<label>Select:</label>
			<select name="from" style="width: 80px;">
				<option>Some option</option>
				<option>Other option</option>
				<option>Some other option</option>
			</select>
		</div>
		<div class="clearfix"></div>
	</form>
</div>

<div class="widget widget-2" style="margin-top: -1px;">
	<div class="widget-head">
		<h4 class="heading glyphicons calendar"><i></i> Friday, 14 December 2012</h4>
	</div>
	<div class="widget-body">
		<div class="separator bottom form-inline small">
			total_bookings: 26
			<span class="pull-right">
				<label class="strong">Sort by:</label>
				<select class="selectpicker" data-style="btn-default btn-small">
					<option>Option</option>
					<option>Option</option>
					<option>Option</option>
				</select>
			</span>
		</div>
		<table class="table table-bordered table-condensed table-striped table-primary table-vertical-center checkboxs">
			<thead>
				<tr>
					<th style="width: 1%;" class="uniformjs"><input type="checkbox" /></th>
					<th class="center">No.</th>
					<th class="center">Time</th>
					<th>Client</th>
					<th class="center">Phone</th>
					<th class="center">Amount</th>
					<th class="center">Heard from</th>
					<th class="center" style="width: 90px;">Actions</th>
				</tr>
			</thead>
			<tbody>
																<tr class="selectable">
					<td class="center uniformjs"><input type="checkbox" /></td>
					<td class="center">1</td>
					<td class="center">11:00</td>
					<td><strong>Lorem Ipsum</strong><br/><small>Location: New York</small></td>
					<td class="center">0740000000</td>
					<td class="center">&euro;36</td>
					<td class="center">Radio</td>
					<td class="center">
						<a href="#" class="btn-action glyphicons eye_open btn-info"><i></i></a>
						<a href="#" class="btn-action glyphicons pencil btn-success"><i></i></a>
						<a href="#" class="btn-action glyphicons remove_2 btn-danger"><i></i></a>
					</td>
				</tr>
								<tr class="selectable selected">
					<td class="center uniformjs"><input type="checkbox" checked="checked" /></td>
					<td class="center">2</td>
					<td class="center">12:00</td>
					<td><strong>Lorem Ipsum</strong><br/><small>Location: Miami</small></td>
					<td class="center">0740000000</td>
					<td class="center">&euro;42</td>
					<td class="center">Flyer</td>
					<td class="center">
						<a href="#" class="btn-action glyphicons eye_open btn-info"><i></i></a>
						<a href="#" class="btn-action glyphicons pencil btn-success"><i></i></a>
						<a href="#" class="btn-action glyphicons remove_2 btn-danger"><i></i></a>
					</td>
				</tr>
								<tr class="selectable">
					<td class="center uniformjs"><input type="checkbox" /></td>
					<td class="center">3</td>
					<td class="center">13:00</td>
					<td><strong>Lorem Ipsum</strong><br/><small>Location: Las Vegas</small></td>
					<td class="center">0740000000</td>
					<td class="center">&euro;35</td>
					<td class="center">Radio</td>
					<td class="center">
						<a href="#" class="btn-action glyphicons eye_open btn-info"><i></i></a>
						<a href="#" class="btn-action glyphicons pencil btn-success"><i></i></a>
						<a href="#" class="btn-action glyphicons remove_2 btn-danger"><i></i></a>
					</td>
				</tr>
								<tr class="selectable">
					<td class="center uniformjs"><input type="checkbox" /></td>
					<td class="center">4</td>
					<td class="center">14:00</td>
					<td><strong>Lorem Ipsum</strong><br/><small>Location: Hollywood</small></td>
					<td class="center">0740000000</td>
					<td class="center">&euro;24</td>
					<td class="center">Radio</td>
					<td class="center">
						<a href="#" class="btn-action glyphicons eye_open btn-info"><i></i></a>
						<a href="#" class="btn-action glyphicons pencil btn-success"><i></i></a>
						<a href="#" class="btn-action glyphicons remove_2 btn-danger"><i></i></a>
					</td>
				</tr>
							</tbody>
		</table>
		<div class="separator top form-inline small">
			<div class="pull-left checkboxs_actions hide">
				<label class="strong">With selected:</label>
				<select class="selectpicker" data-style="btn-default btn-small">
					<option>Action</option>
					<option>Action</option>
					<option>Action</option>
				</select>
			</div>
			<div class="pagination pagination-small pull-right" style="margin: 0;">
				<ul>
					<li class="disabled"><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="innerLR">
<div class="row-fluid">
	<div class="span4">
		<div class="widget widget-3">
			<div class="widget-head">
				<h4 class="heading"><span class="glyphicons coins"><i></i></span>Total amount</h4>
			</div>
			<div class="widget-body large">
				&euro;15,368.50
			</div>
			<div class="widget-footer align-right">
				<a href="#" class="glyphicons print"><i></i> Print</a>
				<a href="#" class="glyphicons list"><i></i> View</a>
			</div>
		</div>
	</div>
	<div class="span4">
		<div class="widget widget-3">
			<div class="widget-head">
				<h4 class="heading"><span class="glyphicons user_add"><i></i></span>New clients</h4>
			</div>
			<div class="widget-body large">
				21
			</div>
			<div class="widget-footer">
				<a href="#" class="glyphicons print"><i></i> Print</a>
				<a href="#" class="glyphicons list"><i></i> View</a>
			</div>
		</div>
	</div>
	<div class="span4">
		<div class="widget widget-3">
			<div class="widget-head">
				<h4 class="heading"><span class="glyphicons user_remove"><i></i></span>Cancellations</h4>
			</div>
			<div class="widget-body large cancellations">
				4 
				<span>
					<span>Lost</span>
					<span>&euro;89.00</span>
				</span>
			</div>
			<div class="widget-footer align-center">
				<a href="#" class="glyphicons print"><i></i> Print</a>
				<a href="#" class="glyphicons list"><i></i> View</a>
			</div>
		</div>
	</div>
</div>
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