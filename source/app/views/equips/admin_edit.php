 
    <?php echo $form->create("Equip",array('controller'=>'equips','action'=>'edit/'.$equip['Equip']['id']));?>
    <h4>Cập nhật thông tin thiết bị</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span12">
        <?php echo $session->setFlash("Equip");?>
        <div class="control-group">
          	<label class="control-label" for="ten">Tên thiết bị</label>
          	<div class="controls">
            	<?php echo $form->input('ten',array('class'=>'span8','id'=>'ten','value'=>$equip['Equip']['ten']));?>
        	</div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="chucnang">Chức năng</label>
	        <div class="controls">
	           <?php echo $form->textarea('chucnang',$equip['Equip']['chucnang'],array('class'=>'span8','id'=>'chucnang'));?>
	        </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="manus_id">Nhà sản xuất</label>
            <div class="controls">
              <?php echo $form->select('manus_id',$manus,array('empty'=>false,'selected'=>$equip['Equip']['manus_id']));?>
            </div>
        </div>
		<div class="control-group">
            <label class="control-label" for="distributes_id">Nhà phân phối</label>
            <div class="controls">
              <?php echo $form->select('distributes_id',$distributes,array('empty'=>false,'selected'=>$equip['Equip']['distributes_id']));?>
            </div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="gioithieu">Thông tin</label>
          	<div class="controls">
            	<?php echo $form->textarea('gioithieu',$equip['Equip']['gioithieu'],array('class'=>'span12 ckeditor','id'=>'gioithieu'));?>
          	</div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="anh">Ảnh thiết bị</label>
	        <div class="controls">
	            <?php echo $form->input('anh',array('class'=>'span8','id'=>'anh','value'=>$equip['Equip']['anh']));?>
	        </div>
        </div>
        
       <div class="control-group">
          	<label class="control-label" for="trangthai">Trạng thái</label>
          	<div class="controls">
            	<?php echo $form->select('trangthai',array(1=>"Hiển thị",0=>"Ẩn"),array('empty'=>false,'selected'=>$equip['Equip']['trangthai']));?>
          	</div>
        </div>
      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
 