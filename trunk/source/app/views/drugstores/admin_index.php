<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin nhà thuốc</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'drugstores','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
</div>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Nhập Excel", array('controller'=>'drugstores','action'=>'reader'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
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
    </form>
</div>
<div class="separator"></div>
<table class="table table-bordered table-hover" width=100%>
	<tr>
		<th><input type='checkbox' value='' class='checkall' name='checkall' id='checkall' /></th>
        <th>Tên nhà thuốc</th>
        <th>Thành phố</th>
		<th>Vị trí</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($drugstores as $drugstore):?>
    <tr>
    	<td><input type='checkbox' value='<?php echo $drugstore['Drugstore']['id'];?>' name='check'/></td>
    	<td>
    	<?php echo $html->link($drugstore['Drugstore']['ten'],
                            array('controller'=>'drugstores','action'=>'edit/'.$drugstore['Drugstore']['id']),false);?>
    	</td>
        <td><?php echo $drugstore['City']['ten'];?></td>
        <td><a target="_blank" href="https://maps.google.com/?q=<?php echo $drugstore['Drugstore']['map'];?>">Xem</a></td>
    	<td>
             <?php echo $html->link("Sửa",
                            array('controller'=>'drugstores','action'=>'edit/'.$drugstore['Drugstore']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'drugstores','action'=>'delete/'.$drugstore['Drugstore']['id']),null,true);?></td>
        </td>
    </tr>
    <?php endforeach?>
</table>
<table>
    <tr>
        <td>
            <a href="javascript:void(0);" class="delall">Xóa các mục đã chọn</a>
        </td>
        <td align='right'><?php echo $this->Drugstore->paginate();?></td>
    </tr>
</table>