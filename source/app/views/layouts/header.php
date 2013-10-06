<!DOCTYPE html>
<html lang="en">
    </meta>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="robots" content="index, follow">
        <meta name="keywords" content="Duoc lieu, nha thuoc, tung tam kham benh, y te, thuoc">
        <meta name="description" content="Website tra cứu thuoc va dược liệu">
        <meta name="generator" content="TRAN NGOC THANG">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<?php echo $html->css(array('reset','bootstrap','bootstrap-responsive','docs','prettify','template','respone','jRating.jquery','comment'));?>
		<title>Tra cứu thuốc và dược liệu</title>
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB1y92TzXvD1IOBJovofxMpwK_C3_21HYA&sensor=true"></script>

		<?php
    		echo $html->script(array('jquery-1.4.1','bootstrap','bootstrap.min','script','jRating.jquery','jquery.livequery','comment'));
    	?>
		<script>
		//maps
		var toado='0,0';
		var noidung = '';
		//rating+ comment
		var baseurl = "<?php echo BASE_PATH;?>";

		$(document).ready(function(){

			//refresh img captcha
			$("#refreshimg").click(function(){
				document.getElementById('captchaimg').src= '<?php echo BASE_PATH;?>/commons/captcha/';
			});

		})
		</script>
    </head>
    <body>
        <div class="container">
            <a name="Top" id="Top"></a>
            <!-- HEADER -->
            <div class="row-fluid">
	            <div id="header" class="span12">
	            	<div class="inner span12">
		                 <h1 id="logo">
					        <a href="#" title="THUỐC VÀ DƯỢC LIỆU">
								<?php echo $html->img('img/logo.png',array('title'=>"Tra cứu thuốc và dược liệu",'alt'=>"Thuốc dược liệu"));?>
					        	<span></span>
					        </a>
					    </h1>
				    	<ul id="top">
				    		<?php if(!isset($_SESSION['ssid']) || empty($_SESSION['ssid'])){?>
					    		<li><?php echo $html->link("Đăng nhập",array('members/login'),array('title'=>'Đăng nhập'));?></li>
					    		<li><?php echo $html->link("Đăng ký",array('members/register'),array('title'=>'Đăng ký'));?></li>
				    		<?php }else{?>
								<li id='account'>
									<?php echo $html->link("Chào ".$_SESSION['ten'],array('members/myaccount'),array('title'=>'Đăng nhập'));?>
								</li>
								<li id="logout"><?php echo $html->link("Thoát",array('members/logout'),array('title'=>'Thoát'));?></li>
						    <?php }?>
				    	</ul>
					</div>
	            </div>
        	</div>
            <!-- //HEADER -->
            <!-- MAIN NAVIGATION -->
            <div class="row-fluid">
	            <div id="mainnav">
	                <div class="main span12">
	                	<div id="hiddenmenu" class="hidden-menu span12"><span></span><a href='#'>Menu</a></div>
	                    <ul class="topmenu nav">
	                        <li class="active first"><?php echo $html->link("<span class='menu-title'>Trang chủ</span>",array('drugs/home'),array('title'=>'Trang chủ'));?>

	                        </li>
	                        <li><?php echo $html->link("Thuốc",array('drugs/index'),array('title'=>'Thuốc'));?></li>
	                        <li><?php echo $html->link("Nhà thuốc",array('drugstores/index'),array('title'=>'Nhà Thuốc'));?></li>
	                        <li><?php echo $html->link("Phòng khám",array('clinics/index'),array('title'=>'Phòng Khám'));?></li>
	                        <li><?php echo $html->link("Bệnh viện",array('hopitals/index'),array('title'=>'Bệnh viện'));?></li>
	                       <!--  <li><a href="#" title="Dịch vụ khám chữa bệnh">Dịch vụ khám chữa bệnh</a>
	                        </li> -->
	                        <li><?php echo $html->link("Trang thiết bị",array('equips/index'),array('title'=>'Trang thiết bị'));?>
	                        </li>
	                        <li class="last"><?php echo $html->link("Liên hệ",array('contacts/index'),array('title'=>'Liên hệ'));?>
	                        </li>
	                         <!--  <li class="last">
	                          	<?php if(!isset($_SESSION['ssid']) || empty($_SESSION['ssid'])){?>
	                          	<?php echo $html->link("Đăng nhập",array('members/login'),array('title'=>'Đăng nhập'));?>
	                          	<?php }else{?>
	                          	<?php echo $html->link("Thoát",array('members/logout'),array('title'=>'Thoát'));?>
	                          	<?php }?>
	                        </li> -->
	                    </ul>
	                </div>
                </div>
            </div>

            <!-- //MAIN NAVIGATION -->
            <!-- MAIN CONTAINER -->
            <div id="container">
                <div class="main">
					<div class="row-fluid">
					<!-- LEFT COLUMN-->
						<div id='left' class='span3'>
						    <div class="boxheader boxheader-menu">
						        <h3><?php echo $title_bar;?></h3>
						        <div class="box-ct">
						            <ul class="menu">
						                <li <?php if(!isset($idtype)  || empty($idtype)){?> class="active" <?php }?>>
											<?php echo $html->link("<span>Tất cả</span>",array($sidebar[0]['Menu']['controller'].'/index'));?>
						                </li>
						                <?php
						                    foreach ($sidebar as $key => $value) {
						                ?>
						                <li <?php if(isset($idtype) && $idtype == $value['Menu']['id']){?> class="active" <?php }?>>
											<?php echo $html->link("<span>".$value['Menu']['ten']."</span>",array($value['Menu']['controller'].'/types/'.$value['Menu']['id'].'/'.$value['Menu']['ten']));?>
						                </li>
						                <?php }?>
						            </ul>
						        </div>
						    </div>

						    <div class="boxheader">
						        <h3>Thống kê</h3>
						        <div class="box-ct">
						        	<ul class="menu"><li>
							            <strong>Số người online</strong> :<?php echo $counter->getCountFormated();?>
							            <br><strong>Số người đã truy cập</strong> : <?php echo $counter->getCountFormated();?>
							            <br><strong>Tổng số thuốc</strong> : 6
							            <br><strong>Số loại thuốc</strong> : 2
							            <br><strong>Tổng số nhà thuốc</strong> : 148
							            <br><strong>Trung tâm y tế</strong> :168
						        	</li></ul>
						        </div>
						    </div>
						</div>
						<!-- //LEFT COLUMN-->
						<!-- CONTENT -->
						<div id="main" class="span9 row-fluid">

