<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin nhà thuốc</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'drugstores','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Tên nhà thuốc</th>
        <th>Thành phố</th>
		<th>Vị trí</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($drugstores as $drugstore):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($drugstore['Drugstore']['ten'],
                            array('controller'=>'drugstores','action'=>'view/'.$drugstore['Drugstore']['id']),false);?>
    	</td>
        <td><?php echo $drugstore['City']['ten'];?></td>
        <td><a target="_blank" href="https://maps.google.com/?q=<?php echo $drugstore['Drugstore']['map'];?>">Xem</a></td>
    	<td>
             <?php echo $html->link("Sửa",
                            array('controller'=>'drugstores','action'=>'edit/'.$drugstore['Drugstore']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'drugstores','action'=>'delete/'.$drugstore['Drugstore']['id']),null,true);?></td>
        </td>
    </tr>
    <?php endforeach?>
</table>