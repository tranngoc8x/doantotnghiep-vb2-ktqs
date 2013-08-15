<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3>Thuốc mới</h3>
        <div class="box-ct clearfix row-fluid"> 
            <ul class='ulitem row-fluid'>
                <?php foreach ($drugs as $k=> $drug):?>
                <li class='article'>
                    <?php echo $html->link($html->img('files/drugs/'.$drug['Drug']['anh'],array("width"=>'100px',"height"=>'80px')),
                                           array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),
                                           array('class'=>"left entry thumbnail"),false);?>
               
                	<h6 style="word-wrap:none;overflow: hidden;">
                    <?php echo $html->link($drug['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),array('class'=>'item'));?>
            		</h6>
            		<?php //debug( $drug);?>
            		<p class="item">Nhóm dược lý : <?php echo $html->link($drug['Manu']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
            		<p class="item">Nhà phân phối: <?php echo $html->link($drug['Manu']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
            		<p class="item">Nhà sản xuất: <?php echo $html->link($drug['Manu']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Manu']['id']),array('class'=>'item'));?></p>
            		<p class="item">Số đăng ký : <?php echo $drug['Drug']['sodk'];?></p>
                	<div class="clearfix"></div>
                </li>
                <?php if(($k+1)%2==0 && $k>0) echo "<hr class='clearfix'/>";?>
                <?php endforeach?>
            </ul>
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