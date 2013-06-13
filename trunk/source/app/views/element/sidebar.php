<!-- LEFT COLUMN-->
<div id='left' class='span3'>
    <div class="boxheader boxheader-menu">
        <h3>Main Menu</h3>
        <div class="box-ct">
            <ul class="menu">
                <li class="active"><a href="#"><span>Home</span></a></li>
                <?php global $sidebar; debug($sidebar);?>
                <?php
                    foreach ($sidebar as $key => $value) {
                ?>
                <li><a href="#"><span>Shop</span></a></li>
                <?php }?>
                <li><a href="#"><span>Explore</span></a> </li>
                <li><a href="#"><span>Typography</span></a> </li>
                <li><a href="#"><span>RTL Languages</span></a></li>
                <li><a href="#"><span>Colors</span></a></li>
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
        <h3>Statistics</h3>
        <div class="box-ct">
            <strong>Members</strong> : 85
            <br><strong>Content</strong> : 61
            <br><strong>Web Links</strong> : 6
            <br><strong>Content View Hits</strong> : 40148
        </div>
    </div>
</div>
<!-- //LEFT COLUMN-->