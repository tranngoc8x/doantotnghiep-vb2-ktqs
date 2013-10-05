 
    <?php echo $form->create("Clinic",array('controller'=>'clinics','action'=>'add'));?>
    <h4>Thêm mới thông tin phòng khám</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span12">
        <?php echo $session->setFlash("Clinic");?>
        <div class="control-group">
          	<label class="control-label" for="ten">Tên phòng khám</label>
          	<div class="controls">
            	<?php echo $form->input('ten',array('class'=>'span8','id'=>'ten'));?>
        	</div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="daidien">Người đại diện</label>
	        <div class="controls">
	            <?php echo $form->input('daidien',array('class'=>'span8','id'=>'daidien'));?>
	        </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="departments_id">Chuyên khoa</label>
          <div class="controls">
              <?php echo $form->select('departments_id',$departments,array('empty'=>false));?>
          </div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="diachi">Địa chi</label>
	        <div class="controls">
	            <?php echo $form->input('diachi',array('class'=>'span8','id'=>'diachi'));?>
	        </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="trangthai">Thành phố</label>
            <div class="controls">
              <?php echo $form->select('cities_id',$cities,array('empty'=>false));?>
            </div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="dienthoai">Điện thoại</label>
	        <div class="controls">
	            <?php echo $form->input('dienthoai',array('class'=>'span8','id'=>'dienthoai'));?>
	        </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="linhvuc">Lĩnh vực chuyên môn</label>
            <div class="controls">
              <?php echo $form->textarea('linhvuc',null,array('class'=>'span12 ckeditor','id'=>'linhvuc'));?>
            </div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="gioithieu">Thông tin</label>
          	<div class="controls">
            	<?php echo $form->textarea('gioithieu',null,array('class'=>'span12 ckeditor','id'=>'gioithieu'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="map">Vị trí trên bản đồ</label>
          	<div class="controls">
            	 <?php echo $form->input('map',array('class'=>'span8','id'=>'map'));?>
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
 