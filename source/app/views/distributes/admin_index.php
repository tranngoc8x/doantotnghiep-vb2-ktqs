<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Quản lý nhà phân phối</h3>
    <div class="buttons pull-right">
        <?php echo $html->link("<i></i>Thêm mới",
                            array('controller'=>'distributes','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
    </div>
    <div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Tên nhà phân phối</th>
		<th>Trạng thái</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($distributes as $dis):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($dis['Distribute']['ten'],
                            array('controller'=>'distributes','action'=>'edit/'.$dis['Distribute']['id']));?>
    	</td>
        <td><?php echo $html->stt($dis['Distribute']['trangthai']);?></td>
    	<td>
        <?php echo $html->link("Sửa",
                            array('controller'=>'distributes','action'=>'edit/'.$dis['Distribute']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'distributes','action'=>'delete/'.$dis['Distribute']['id']),null,true);?></td>
    </tr>
    <?php endforeach?>
</table>