<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Dashboard</h3>
<div class="buttons pull-right">
    <a href="" class="btn btn-default btn-icon glyphicons edit"><i></i> Edit</a>
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
	 <?php debug($drugs); foreach ($drugs as $drug):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($drug['Drug']['ten'],
                            array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),false);?>
    	</td>
        <td><?php echo $drug['Type']['ten'];?></td>
    	<td><?php echo $drug['Manu']['ten'];?></td>
    	<td>sửa - xóa</td>
    </tr>
    <?php endforeach?>
</table>