<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Quản lý người dùng</h3>
    <?php if($_SESSION['admin'] ==1){?>
    <div class="buttons pull-right">
        <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'users','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
    </div>
    <?php }?>
    <div class="clearfix" style="clear: both;"></div>
</div>
<!-- <div class="separator"></div>
<div class="row-liquid">
    <form action="<?php echo BASE_PATH;?>/admin/commons/find" method="POST" class="span10">
        <div class="span4">
            <input type="hidden" name="model" value="<?php echo $this->_controller;?>" />
            <input type="text" placeholder="Từ khóa" name= 'q' value="<?php echo isset($q)?$q:"";?>">
        </div>
        <div class="span4">
            <input type="submit" name="" class="btn btn-primary" value="Tìm kiếm" />
        </div>
    </form>
</div> -->
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Họ tên</th>
		<th>Username</th>
		<th>Trạng thái</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($users as $user):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $user['User']['ten'];?>
    	</td>
        <td><?php echo $user['User']['username'];?></td>
        <td><?php echo $html->stt($user['User']['trangthai']);?></td>
    	<td>

        <?php if($_SESSION['admin'] == $user['User']['id'] || $_SESSION['admin'] ==1){?>
	        <?php if($_SESSION['admin'] ==1){?>
				<?php echo $html->link("Sửa",array('controller'=>'users','action'=>'edit/'.$user['User']['id']));?>
	        <?php }
	        	elseif($_SESSION['admin'] == $user['User']['id']){?>
				<?php echo $html->link("Sửa",array('controller'=>'users','action'=>'edit'));?>
	        <?php }?>
        <?php }?>
        <?php if($_SESSION['admin'] ==1){?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'users','action'=>'delete/'.$user['User']['id']),null,true);?>

        <?php }?>
        <?php if($_SESSION['admin'] == $user['User']['id']){?>
			- 	<?php echo $html->link("Đổi mật khẩu",
                            array('controller'=>'users','action'=>'changepass'));?>
        <?php }?>
        </td>
    </tr>
    <?php endforeach?>
</table>