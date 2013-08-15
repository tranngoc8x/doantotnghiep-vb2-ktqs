<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin phòng khám</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'clinics','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Tên phòng khám</th>
		<th>Chuyên khoa</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($clinics as $clinic):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($clinic['Clinic']['ten'],
                            array('controller'=>'clinics','action'=>'edit/'.$clinic['Clinic']['id']),false);?>
    	</td>
        <td><?php echo $clinic['Department']['ten'];?></td>
    	<td>
             <?php echo $html->link("Sửa",
                            array('controller'=>'clinics','action'=>'edit/'.$clinic['Clinic']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'clinics','action'=>'delete/'.$clinic['Clinic']['id']),null,true);?></td>
        </td>
    </tr>
    <?php endforeach?>
</table>