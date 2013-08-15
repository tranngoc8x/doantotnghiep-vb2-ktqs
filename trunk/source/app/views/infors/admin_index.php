<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Quản lý thông tin chung</h3>
    <div class="buttons pull-right">
        <?php //echo $html->link("<i></i>Thêm mới", array('controller'=>'infors','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
    </div>
    <div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Tên nội dung</th>
		<th>Trạng thái</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($infors as $infor):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($infor['Infor']['ten'],
                            array('controller'=>'infors','action'=>'edit/'.$infor['Infor']['id']));?>
    	</td>
        <td><?php echo $html->stt($infor['Infor']['trangthai']);?></td>
    	<td align='center'>
        <?php echo $html->link("Sửa",
                            array('controller'=>'infors','action'=>'edit/'.$infor['Infor']['id']));?>
          <?php //echo $html->link("Xóa",
                           // array('controller'=>'infors','action'=>'delete/'.$infor['Infor']['id']),null,true);?></td>
    </tr>
    <?php endforeach?>
</table>