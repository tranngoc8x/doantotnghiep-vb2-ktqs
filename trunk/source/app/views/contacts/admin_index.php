<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin liên hệ</h3>
<div class="buttons pull-right">
    <?php //echo $html->link("<i></i>Thêm mới", array('controller'=>'hopitals','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th>id</th>
        <th>Tên người liên hệ</th>
        <th>Số điện thoại</th>
        <th>Email</th>
		<th>Trạng thái</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($contacts as $contact):?>
    <tr>
    	<td>id</td>
    	<td><?php echo $contact['Contact']['ten'];?></td>
        <td><?php echo $contact['Contact']['phone'];?></td>
        <td><a href="mailto:<?php echo $contact['Contact']['email'];?>"><?php echo $contact['Contact']['email'];?></a></td>
    	<td><?php echo $contact['Contact']['trangthai']==1?"Đã xem":"Chưa xem";?></td>
        <td>
             <?php echo $html->link("Xem",
                            array('controller'=>'contacts','action'=>'view/'.$contact['Contact']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'contacts','action'=>'delete/'.$contact['Contact']['id']),null,true);?></td>
        </td>
    </tr>
    <?php endforeach?>
</table>