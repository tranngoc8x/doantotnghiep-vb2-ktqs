<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Quản lý nhóm dược lý</h3>
    <div class="buttons pull-right">
        <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'types','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
    </div>
    <div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
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
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Tên nhà sản xuất</th>
		<th>Trạng thái</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($types as $type):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($type['Type']['ten'],
                            array('controller'=>'types','action'=>'edit/'.$type['Type']['id']));?>
    	</td>
        <td><?php echo $html->stt($type['Type']['trangthai']);?></td>
    	<td>
        <?php echo $html->link("Sửa",
                            array('controller'=>'types','action'=>'edit/'.$type['Type']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'types','action'=>'delete/'.$type['Type']['id']),null,true);?></td>
    </tr>
    <?php endforeach?>
</table>