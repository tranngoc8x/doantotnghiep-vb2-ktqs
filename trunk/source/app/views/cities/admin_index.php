<div class="heading-buttons">

    <h3 class="glyphicons display"><i></i> Quản lý thành phố</h3>
    <div class="buttons pull-right">
        <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'cities','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
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
		<th>id</th>
        <th>Tên thành phố</th>
		<th>Trạng thái</th>
		<th>Tùy chọn</th>

	</tr>
	 <?php foreach ($cities as $city):?>
    <tr>
    	<td>id</td>
    	<td>
    	<?php echo $html->link($city['City']['ten'],
                            array('controller'=>'cities','action'=>'edit/'.$city['City']['id']));?>
    	</td>
        <td><?php echo $html->stt($city['City']['trangthai']);?></td>
    	<td>
        <?php echo $html->link("Sửa",
                            array('controller'=>'cities','action'=>'edit/'.$city['City']['id']));?>
         - <?php echo $html->link("Xóa",
                            array('controller'=>'cities','action'=>'delete/'.$city['City']['id']),null,true);?></td>
    </tr>
    <?php endforeach?>
</table>