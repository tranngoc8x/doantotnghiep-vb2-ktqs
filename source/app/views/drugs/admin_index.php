<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin thuốc</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'drugs','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
		<th>Tên thuốc</th>
        <th>Nhóm dược lý</th>
		<th>Nhà sản xuất</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($drugs as $drug):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($drug['Drug']['ten'],
                            array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),false);?>
    	</td>
        <td><?php echo $drug['Type']['ten'];?></td>
    	<td><?php echo $drug['Manu']['ten'];?></td>
    	<td>
             <?php echo $html->link("Sửa",
                            array('controller'=>'drugs','action'=>'edit/'.$drug['Drug']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'drugs','action'=>'delete/'.$drug['Drug']['id']),null,true);?></td>
        </td>
    </tr>
    <?php endforeach?>
</table>