 
    <?php echo $form->create("Hopital",array('controller'=>'hopitals','action'=>'add'));?>
    <h4>Thêm mới thông tin bệnh viện</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span8">
        <?php echo $session->setFlash("Hopital");?>
        <div class="control-group">
          	<label class="control-label" for="ten">Tên bệnh viện</label>
          	<div class="controls">
            	<?php echo $form->input('ten',array('class'=>'span12','id'=>'ten'));?>
        	</div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="diachi">Địa chi</label>
	        <div class="controls">
	            <?php echo $form->input('diachi',array('class'=>'span12','id'=>'diachi'));?>
	        </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="trangthai">Thành phố</label>
            <div class="controls">
              <?php echo $form->select('cities_id',$cities,array('empty'=>false));?>
            </div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="gioithieu">Thông tin</label>
          	<div class="controls">
            	<?php echo $form->textarea('gioithieu',null,array('class'=>'span12','id'=>'gioithieu'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="map">Vị trí trên bản đồ</label>
          	<div class="controls">
            	 <?php echo $form->input('map',array('class'=>'span12','id'=>'map'));?>
          	</div>
        </div>
        
       <div class="control-group">
          	<label class="control-label" for="trangthai">Trạng thái</label>
          	<div class="controls">
            	<?php echo $form->select('trangthai',array(1=>"Hiển thị",0=>"Ẩn"),array('empty'=>false));?>
          	</div>
        </div>
      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
 