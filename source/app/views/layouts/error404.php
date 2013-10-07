<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>404 Error Page</title>
<?php echo $html->css(array('404/style','404/responsive'));?>
<?php
	echo $html->script(array('jquery-1.8.2.min','404/clock'));
?>
<script type="text/javascript">
var hours = 10;
var mins = 10;
</script>

</head>
<body class="pattern2">
<header>
	<div class="container">
		<div class="logo">
		<?php echo $html->img('img/logo.png',array('title'=>"Tra cứu thuốc và dược liệu",'alt'=>"Thuốc dược liệu" ,'width'=>100));?>

		</div><!-- Logo -->
		<div class="menu">
			<ul>
				<li><a href="#" title="Trang chủ">Trang chủ</a></li>
				<li><a href="#" title="Giới thiệu">Giới thiệu</a></li>
				<li><a href="#" title="Điều khoản">Điều khoản</a></li>
				<li><a href="#" title="Liên hệ">Liên hệ</a></li>
			</ul>
		</div><!-- Menu -->
	</div><!-- Container -->
</header>
<div class="wrapper">
<div class="container">
	<div class="clock">
		<div id="clock-wrap">
			<ul id="clock">
				<li id="sec"></li>
				<li id="hour"></li>
				<li id="min"></li>
			</ul>
		</div>
	</div>
	<div class="error-area">
		<?php  echo $html->img('img/404.png',array('class'=>'wobble'));?>
			<h2><span>OOPS!</span> PAGE WAS NOT FOUND</h2>
			<h3>It appears the page you were looking for doesn't exist. Sorry about that.</h3>
	</div>
</div>
</div>
</body></html>