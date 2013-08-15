<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Quản lý nhóm dược lý</h3>
    <div class="buttons pull-right">
        <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'types','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
    </div>
    <div class="clearfix" style="clear: both;"></div>
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
                            array('controller'=>'manus','action'=>'edit/'.$type['Type']['id']));?>
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