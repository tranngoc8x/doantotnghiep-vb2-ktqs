<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin thuốc</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'drugs','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Nhập Excel", array('controller'=>'drugs','action'=>'reader'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="separator"></div>
<form action="<?php echo BASE_PATH;?>/admin/commons/find" method="POST" class="span10">
    <input type="hidden" name="model" value="<?php echo $this->_controller;?>" />
    <div class="span4">
        <input type="text" placeholder="Từ khóa" name= 'q' value="<?php echo isset($q)?$q:"";?>">
        <select name="distribute" id="distribute">
            <option value="All" selected>Nhà phân phối</option>
            <?php
                if(!isset($distribute)){ $distribute="";}
                foreach ($list_dis as $key => $value) {
            ?>
            <option value="<?php echo $value['Distribute']['id'];?>" <?php if($value['Distribute']['id'] == $distribute){echo 'selected';}?>><?php echo $value['Distribute']['ten'];?></option>
            <?php }?>
        </select>
    </div>
    <div class="span4">
        <select name="type" id="type">
            <option value="All" selected>Nhóm dược lý</option>
            <?php
                if(!isset($type)){ $type="";}
                foreach ($sidebar as $key => $value) {
            ?>
            <option value="<?php echo $value['Menu']['id'];?>" <?php if($value['Menu']['id'] == $type){echo 'selected';}?>><?php echo $value['Menu']['ten'];?></option>
            <?php }?>
        </select>
        <select name="manu" id="manu">
            <option value="All" selected>Nhà sản xuất</option>
            <?php
                if(!isset($manu)){ $manu="";}
                foreach ($list_manus as $key => $value) {
            ?>
            <option value="<?php echo $value['Manu']['id'];?>" <?php if($value['Manu']['id'] == $manu){echo 'selected';}?>><?php echo $value['Manu']['ten'];?></option>
            <?php }?>
        </select>
    </div>
    <div class="span3">
        <input type="submit" name="" class="btn btn-primary" value="Tìm kiếm" />
    </div>
</form>
<div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th><input type='checkbox' value='' class='checkall' name='checkall' id='checkall' /></th>
        <th>Tên thuốc</th>
		<th>Số đăng ký</th>
        <th>Nhóm dược lý</th>
		<th>Nhà sản xuất</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($drugs as $drug):?>
    <tr>
    	<td><input type='checkbox' value='<?php echo $drug['Drug']['id'];?>' name='check'/></td>
    	<td>
    	<?php echo $html->link($drug['Drug']['ten'],
                            array('controller'=>'drugs','action'=>'edit/'.$drug['Drug']['id']),false);?>
    	</td>
        <td><?php echo $drug['Drug']['sodk'];?></td>
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
<table>
    <tr>
        <td>
            <a href="javascript:void(0);" class="delall">Xóa các mục đã chọn</a>
        </td>
        <td></td>
    </tr>
</table>