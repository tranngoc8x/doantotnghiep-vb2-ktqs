<div class="heading-buttons">
<h3 class="glyphicons display"><i></i> Quản lý thông tin bệnh viện</h3>
<div class="buttons pull-right">
    <?php echo $html->link("<i></i>Thêm mới", array('controller'=>'hopitals','action'=>'add'),array('class'=>"btn btn-default btn-icon glyphicons edit"),false);?>
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