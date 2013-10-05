<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin phòng khám</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'clinics','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="clearfix" style="clear: both;"></div>
</div>
<div class="separator"></div>
<form action="<?php echo BASE_PATH;?>/admin/commons/find" method="POST" class='span10'>
                <div class="row">
                    <div class="span4">
                        <input type="hidden" name="model" value="<?php echo $this->_controller;?>" />
                        <input type="text" placeholder="Từ khóa" name= 'q'  value="<?php echo isset($q)?$q:"";?>">
                    </div>
                    <div class="span4">
                        <select name="department" id="department">
                            <option value="">Chuyên khoa</option>
                            <?php
                                if(!isset($department)){ $department="";}
                                foreach ($list_des as $key => $value) {
                            ?>
                            <option value="<?php echo $value['Department']['id'];?>" <?php if($value['Department']['id'] == $department){echo 'selected';}?>><?php echo $value['Department']['ten'];?></option>
                            <?php }?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="span4">
                        <select name="citie" id="citie">
                            <option value="">Thành phố</option>
                            <?php
                                if(!isset($citie)){ $citie="";}
                                foreach ($list_city as $key => $value) {
                            ?>
                            <option value="<?php echo $value['City']['id'];?>" <?php if($value['City']['id'] == $citie){echo 'selected';}?>><?php echo $value['City']['ten'];?></option>
                            <?php }?>
                        </select>
                    </div>
                    <div class="span4">
                        <input type="submit" name="" class="btn btn-primary" value="Tìm kiếm" />
                    </div>
                </div>
            </form>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th><input type='checkbox' value='' class='checkall' name='checkall' id='checkall' /></th>
        <th>Tên phòng khám</th>
		<th>Chuyên khoa</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($clinics as $clinic):?>
    <tr>
    	<td><input type='checkbox' value='<?php echo $clinic['Clinic']['id'];?>' name='check'/></td>
    	<td>
    	<?php echo $html->link($clinic['Clinic']['ten'],
                            array('controller'=>'clinics','action'=>'edit/'.$clinic['Clinic']['id']),false);?>
    	</td>
        <td><?php echo $clinic['Department']['ten'];?></td>
    	<td>
             <?php echo $html->link("Sửa",
                            array('controller'=>'clinics','action'=>'edit/'.$clinic['Clinic']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'clinics','action'=>'delete/'.$clinic['Clinic']['id']),null,true);?></td>
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