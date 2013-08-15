<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin bệnh viện</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'hopitals','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Tên bệnh viện</th>
        <th>Thành phố</th>
		<th>Vị trí</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($hopitals as $hopital):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($hopital['Hopital']['ten'],
                            array('controller'=>'hopitals','action'=>'edit/'.$hopital['Hopital']['id']),false);?>
    	</td>
        <td><?php echo $hopital['City']['ten'];?></td>
        <td><a target="_blank" href="https://maps.google.com/?q=<?php echo $hopital['Hopital']['map'];?>">Xem</a></td>
    	<td>
             <?php echo $html->link("Sửa",
                            array('controller'=>'hopitals','action'=>'edit/'.$hopital['Hopital']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'hopitals','action'=>'delete/'.$hopital['Hopital']['id']),null,true);?></td>
        </td>
    </tr>
    <?php endforeach?>
</table>