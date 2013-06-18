<!DOCTYPE html>
<html lang="en">
    </meta>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="robots" content="index, follow">
        <meta name="keywords" content="Duoc lieu, nha thuoc, tung tam kham benh, y te, thuoc">
        <meta name="description" content="Website tra cứu thuoc va duoc lieu">
        <meta name="generator" content="TRAN NGOC THANG">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<?php echo $html->css(array('bootstrap','bootstrap-responsive','docs','prettify','template'));?>
		<title>Tra cứu thuốc và dược liệu</title>
    </head>

    <body>
        <div class="container">
            <a name="Top" id="Top"></a>
            <!-- HEADER -->
            <div class="row-fluid">
	            <div id="header" class="span12">
	            	<div class="inner span12">
		                 <h1 id="logo">
					        <a href="#" title="THUỐC VÀ DƯỢC LIỆU"><span>THUỐC VÀ DƯỢC LIỆU</span></a>
					    </h1>
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
	                        <li class="active first"><a href="#" class="active first" title="Home"><span class="menu-title">Trang chủ</span></a>

	                        </li>
	                        <li><a href="#" title="Thuốc">Thuốc</a>

	                        </li>
	                        <li><a href="#" title="Nhà thuốc">Nhà thuốc</a>

	                        </li>
	                        <li><a href="#" title="Phòng khám">Phòng khám</a>

	                        </li>
	                        <li><a href="#" title="Dịch vụ khám chữa bệnh">Dịch vụ khám chữa bệnh</a>
	                        </li>
	                        <li><a href="#" title="Trang thiết bị">Trang thiết bị</a>
	                        </li>
	                        <li class="last"><a href="#" title="Liên hệ">Liên hệ</a>
	                        </li>
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
						        <h3>Nhóm thuốc</h3>
						        <div class="box-ct">
						            <ul class="menu">
						                <li class="active"><a href="#"><span>Home</span></a></li>
						                <?php
						                    foreach ($sidebar as $key => $value) {
						                ?>
						                <li>
											<?php echo $html->link("<span>".$value['Type']['ten']."</span>",array('drugs/view/'.$value['Type']['id'].'/'.$value['Type']['ten']));?>
						                </li>
						                <?php }?>

						            </ul>
						        </div>
						    </div>
						    <div class="boxheader boxheader-menu">
						        <h3>Products Categories</h3>
						        <div class="box-ct clearfix">
						            <ul class="menu">
						                <li><a title="Monitors" href="#">Monitors (5) </a></li>
										<li><a title="Mouse and Keyboard" href="#">Mouse and Keyboard (5) </a></li>
										<li><a title="Laptops" href="#">Laptops (4) </a></li>
						                <li><a title="Macs and iPod" href="">Macs and iPod (4)</a></li>
						            </ul>
						        </div>
						    </div>

						    <div class="boxheader">
						        <h3>Thống kê</h3>
						        <div class="box-ct">
						            <strong>Số người online</strong> : 8
						            <br><strong>Số người đã truy cập</strong> : 60
						            <br><strong>Tổng số thuốc</strong> : 6
						            <br><strong>Số loại thuốc</strong> : 2
						            <br><strong>Tổng số nhà thuốc</strong> : 148
						            <br><strong>Trung tâm y tế</strong> :168
						        </div>
						    </div>
						</div>
						<!-- //LEFT COLUMN-->
						
					</div>
                </div>
            </div>
            <!-- //MAIN CONTAINER -->
			

            <!-- FOOTER -->
            <div  class="row-fluid">
                <div  class="span12" id="footer">
                    <div class="box-bl span12">
                        <div class="box-br span12">
                            <div class="sublogo">
                                <div id="poweredby">	<a id="t3-logo" href="http://t3.joomlart.com/" title="Powered By T3 Framework" target="_blank">Powered By T3 Framework</a>

                                </div>
                            </div>
                            <div class="copyright">
                                <ul id="mainlevel-nav">
                                    <li class="firstitem"><a href="#" class="mainlevel-nav">About Joomla!</a>

                                    </li>
                                    <li><a href="#" class="mainlevel-nav">Features</a>

                                    </li>
                                    <li><a href="#" class="mainlevel-nav">News</a>

                                    </li>
                                    <li><a href="#" class="mainlevel-nav">The Community</a>

                                    </li>
                                </ul> <small>Copyright © 2013 JA Mesolite II. All Rights Reserved. Designed by
					<a href="#" title="Visit Joomlart.com!" target="blank">JoomlArt.com</a>.</small>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //FOOTER -->
        </div>
        <?php
			echo $html->script(array('jquery-1.9.1','bootstrap','bootstrap.min','script'));
		?>
    </body>
</html>