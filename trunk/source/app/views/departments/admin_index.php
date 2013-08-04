<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Quản lý chuyên khoa</h3>
    <div class="buttons pull-right">
        <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'departments','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
    </div>
    <div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Tên chuyên khoa</th>
		<th>Trạng thái</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($departments as $department):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $department['Department']['ten'];?>
    	</td>
        <td><?php echo $html->stt($department['Department']['trangthai']);?></td>
    	<td>
        <?php echo $html->link("Sửa",
                            array('controller'=>'departments','action'=>'edit/'.$department['Department']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'departments','action'=>'delete/'.$department['Department']['id']),null,true);?></td>
    </tr>
    <?php endforeach?>
</table>