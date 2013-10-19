<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Quản lý nhóm dược lý</h3>
    <div class="buttons pull-right">
        <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'types','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
    </div>
    <div class="buttons pull-right">
        <?php echo $html->link("<i></i>Nhập Excel", array('controller'=>'types','action'=>'reader'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
    </div>
    <div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<div class="row-liquid">
    <form action="<?php echo BASE_PATH;?>/admin/commons/find" method="POST" class="span10">
        <div class="span4">
            <input type="hidden" name="model" value="<?php echo $this->_controller;?>" />
            <input type="text" placeholder="Từ khóa" name= 'q' value="<?php echo isset($q)?$q:"";?>">
        </div>
        <div class="span4">
            <input type="submit" name="" class="btn btn-primary" value="Tìm kiếm" />
        </div>
    </form>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th><input type='checkbox' value='' class='checkall' name='checkall' id='checkall' /></th>
        <th>Tên nhà sản xuất</th>
		<th>Trạng thái</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($types as $type):?>
    <tr>
    	<td><input type='checkbox' value='<?php echo $type['Type']['id'];?>' name='check'/></td>
    	<td>
    	<?php echo $html->link($type['Type']['ten'],
                            array('controller'=>'types','action'=>'edit/'.$type['Type']['id']));?>
    	</td>
        <td><?php echo $html->stt($type['Type']['trangthai']);?></td>
    	<td>
        <?php echo $html->link("Sửa",
                            array('controller'=>'types','action'=>'edit/'.$type['Type']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'types','action'=>'delete/'.$type['Type']['id']),null,true);?></td>
    </tr>
    <?php endforeach?>
</table>
<table>
    <tr>
        <td>
            <a href="javascript:void(0);" class="delall">Xóa các mục đã chọn</a>
        </td>
        <td align='right'><?php echo $this->Type->paginate();?></td>
    </tr>
</table>