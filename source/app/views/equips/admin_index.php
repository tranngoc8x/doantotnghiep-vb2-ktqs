<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin trang thiết bị y tế</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'equips','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
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
        <div class="span4">
            <input type="submit" name="" class="btn btn-primary" value="Tìm kiếm" />
        </div>
    </form>
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