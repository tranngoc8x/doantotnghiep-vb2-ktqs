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
						<!-- CONTENT -->
						<div id="main" class="span9">
						        <div class="mass mass-top clearfix">
						            <div class="boxheader boxheader-main clearfix" id="Mod88">
						                    <h3>Thuốc mới</h3>

						                <div class="box-ct clearfix">
						                    <div id="slider">

						                        <div class="slider-center">
						                            <ul class='thumbnails'>
						                                <?php foreach ($drugs as $drug):?>
						                                <li>
						                                <?php echo $html->link($html->img('files/drugs/'.$drug['Drug']['anh'],array("width"=>'140px',"height"=>'120px')),
						                                                       array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),
						                                                       array('class'=>"article entry"),false);?>
						                                <?php echo $html->link($drug['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),array('class'=>'item'));?>
						                                </li>
						                                <?php endforeach?>
						                            </ul>
						                        </div>
						                    </div>
						                </div>
						            </div>
						            <div class="boxheader boxheader-main clearfix">
						                    <h3>Thuốc mới cập nhật</h3>

						                <div class="box-ct clearfix">
						                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
						                        <tbody>
						                            <tr>
						                                <td width="12%" align="center">
						                                    <span style="font-weight:bold;">Samsung SyncMaster 2053BW</span>

						                                    <br>
						                                    <a title="Samsung SyncMaster 2053BW" class="thumbnail" href="#">
						                                        <img src="./img/img1.jpg" height="120" width="120" alt="Samsung SyncMaster 2053BW" border="0">
						                                    </a>
						                                    <br><span class="productPrice">$314.22</span>
						                                </td>
						                                <td width="12%" align="center">
						                                    <span style="font-weight:bold;">Microsoft SideWinder</span>
						                                    <br>
						                                    <a title="Microsoft SideWinder" class="thumbnail" href="#">
						                                        <img src="./img/img2.jpg" height="120" width="120" alt="Microsoft SideWinder" border="0">
						                                    </a>
						                                    <br><span class="productPrice">$57.29</span>
						                                </td>
						                                <td width="12%" align="center">
						                                    <span style="font-weight:bold;">HP W2408H 24 Widescreen</span>

						                                    <br>
						                                    <a title="HP W2408H 24 Widescreen" class="thumbnail" href="#">
						                                        <img src="./img/img3.jpg" height="120" width="120" alt="HP W2408H 24 Widescreen" border="0">
						                                    </a>
						                                    <br><span class="productPrice">$503.35</span>

						                                </td>
						                                <td width="12%" align="center">
						                                    <span style="font-weight:bold;">HP W2207 22 Widescreen</span>

						                                    <br>
						                                    <a title="HP W2207 22 Widescreen" class="thumbnail" href="#">
						                                        <img src="./img/img4.jpg" height="120" width="120" alt="HP W2207 22 Widescreen" border="0">
						                                    </a>
						                                    <br><span class="productPrice">$248.96</span>
						                                </td>
						                                <td width="12%" align="center">
						                                    <span style="font-weight:bold;">HP W2207 22 Widescreen</span>

						                                    <br>
						                                    <a title="HP W2207 22 Widescreen" class="thumbnail" href="#">
						                                        <img src="./img/img5.jpg" height="120" width="120" alt="HP W2207 22 Widescreen" border="0">
						                                    </a>
						                                    <br><span class="productPrice">$248.96</span>
						                                </td>
						                            </tr>

						                        </tbody>
						                    </table>
						                </div>
						            </div>
						        </div>
						        <div id="contentwrap" class="">
						            <div id="content" class="column" style="width:100%">
						                <div id="current-content" class="column" style="width:100%">
						                    <div class="content-main clearfix">
						                        <div class="blog">
						                            <div class="article_row cols1 clearfix">
						                                <div class="article_column column1">
						                                    <div class="contentpaneopen">
						                                        <h2 class="contentheading"> About JA Mesolite - Ecommerce inside</h2>
						                                        <div class="article-tools clearfix">
						                                            <div class="article-meta">
						                                                <span class="createdate">Saturday, 10 May 2008 01:54</span>
						                                                <span class="createby">administrator</span>
						                                            </div>
						                                        </div>
						                                        <div class="article-content">
						                                            <div class="img_caption right" style="float: right; width: 188px;">
						                                                <img src="./img/ja_mesolite_mos_images.jpg" alt="JA Mesolite" align="right" title="JA Mesolite" class="caption">
						                                                <p class="img_caption">JA Mesolite</p>
						                                            </div>
						                                            <p>Businesses spend a lot of money designing their physical store layout - making it as good looking as possible. So, why shouldn't your website store look just as good? That's why JoomlArt brings you.For the second template released in July, JoomlArt has developed a new template to coincide with VirtueMart, and exclusive JoomlArt modules.</p>

						                                        </div>
						                                        <a href="#" class="readon">Read more...</a>
						                                    </div>
						                                </div>
						                            </div>
						                        </div>
						                    </div>
						                </div>
						            </div>
						        </div>
						        <div class="mass mass-bottom clearfix">
						            <div class="boxheader boxheader-main clearfix" id="Mod86">
						                <div class="box-ct clearfix">
						                    <div id="jazin-wrap86" class="jazin-wrap">
						                        <div id="jazin" class="clearfix">
						                            <div class="jazin-left" style="width:24.975%">
						                                <div class="jazin-boxwrap jazin-theme-">
						                                    <div class="jazin-box">
						                                        <div class="jazin-section clearfix">
						                                            <a href="#" title="Monitor">    <span>Monitor</span>

						                                            </a>
						                                        </div>
						                                        <div class="jazin-content clearfix">
						                                            <table cellpadding="0" cellspacing="0" border="0">
						                                                <tbody>
						                                                    <tr>
						                                                        <td>
						                                                                <h4 class="jazin-title"><a href="#" title="Top Five 22-Inch Wide LCD Monitors">Top Five 22-Inch Wide LCD Monitors</a></h4>

						                                                            <img src="./img/sam-1_50_50.jpg" alt="Top Five 22-Inch Wide LCD Monitors" align="left">
						                                                            <p>
						                                                            </p>  <a href="#" class="readon" title="Read more...">Read more...</a>

						                                                        </td>
						                                                    </tr>
						                                                </tbody>
						                                            </table>
						                                        </div>
						                                        <strong class="jazin-more">More:</strong>

						                                        <ul class="jazin-links">
						                                            <li>
						                                                <a title="" href="#">Top 5 23-Inch and 24-Inch Wide-Screen Monitors</a>
						                                            </li>
						                                        </ul>
						                                    </div>
						                                </div>
						                            </div>
						                        </div>
						                    </div>
						                </div>
						            </div>
						        </div>
						        <!-- mainbotsl -->
						        <div id="mainbotsl" class="clearfix">
						            <div class="box column box-left" style="width: 25%;">
						                <div class="boxheader boxheader-main clearfix" id="Mod19">
						                    <h3>Latest News</h3>
						                    <div class="box-ct clearfix">
						                        <ul class="latestnews">
						                            <li class="latestnews">
						                                <a href="#" class="latestnews">Logitech MX Revolution Review</a>
						                            </li>
						                            <li class="latestnews">
						                                <a href="#" class="latestnews">Integer auctor nunc ante ullamcorper</a>
						                            </li>
						                            <li class="latestnews">
						                                <a href="#" class="latestnews">Lacinia quis diam dui felis cursus</a>
						                            </li>
						                            <li class="latestnews">
						                                <a href="#" class="latestnews">Lacus Suspendisse Lorem velit ut</a>
						                            </li>
						                        </ul>
						                    </div>
						                </div>
						            </div>
						            <div class="box column box-center" style="width: 25%;">
						                <div class="boxheader boxheader-main clearfix" id="Mod47">
						                        <h3>Support Center</h3>

						                    <div class="box-ct clearfix">
						                        <p>Elit mauris consectetuer Curabitur urna Aenean sem consectetuer aliquet eget</p>
						                        <ul>
						                            <li><strong>Tel:</strong> (+844) 2212820</li>
						                            <li><strong>Fax:</strong> (+844) 2212820</li>
						                            <li><strong>Email:</strong> contact@joomlart.com</li>
						                            <li><strong>Website:</strong>www.joomart.com</li>
						                        </ul>
						                    </div>
						                </div>
						            </div>
						            <div class="box column box-right" style="width: 50%;">
						                <div class="boxheader boxheader-main clearfix" id="Mod48">
						                    <h3>Today Blogs</h3>
						                    <div class="box-ct clearfix">
						                        <div class="innerdiv clearfix">
						                            <strong><a href="#" title="Sample link">Live wirelessly. Print Wirelessly.</a></strong>
						                            <br>Malesuada sociis nec at odio Pellentesque ligula neque euismod.
						                        </div>
						                        <div class="innerdiv clearfix">
						                            <strong><a href="#" title="Sample link">Enter to Win a Linksys Connected Home Bundle!</a></strong>
						                            <br>A Vivamus velit et volutpat wisi quis neque elit risus Vestibulum. Pellentesque Phasellus sodales...
						                        </div>
						                        <div class="innerdiv clearfix">
						                            <strong><a href="#" title="Sample link">What is Wireless-N?</a></strong>
						                            <br>Semper Proin vel ante ante In ante sed egestas <a href="#" title="Sample link">tempor habitasse</a>.
						                        </div>
						                    </div>
						                </div>
						            </div>
						        </div>
						        <!-- //mainbotsl -->
						</div>
						<!-- //CONTENT -->