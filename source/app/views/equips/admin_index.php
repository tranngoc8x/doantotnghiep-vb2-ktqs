<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin trang thiết bị y tế</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'equips','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Nhà sản xuất</th>
        <th>Nhà phân phối</th>
		<th>Vị trí</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($equips as $equip):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $equip['Equip']['ten'];?>
    	</td>
        <td>
		<?php echo $equip['Manu']['ten'];?>
		</td>
		 <td>
		<?php echo $equip['Distribute']['ten'];?>
		</td>
    	<td>
             <?php echo $html->link("Sửa",
                            array('controller'=>'equips','action'=>'edit/'.$equip['Equip']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'equips','action'=>'delete/'.$equip['Equip']['id']),null,true);?></td>
        </td>
    </tr>
    <?php endforeach?>
</table>