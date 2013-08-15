 
	 <?php //debug($distribute);?>
    <?php echo $form->create("Distribute",array('controller'=>'distributes','action'=>'edit/'.$distribute['Distribute']['id']));?>
    <h4>Cập nhật thông tin nhà phân phối</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span12">
        <?php echo $session->setFlash("Distribute");?>
        <div class="control-group">
          <label class="control-label" for="firstname">Tên nhà phân phối</label>
          <div class="controls">
            <?php echo $form->input('ten',array('class'=>'span8','id'=>'ten','value'=>$distribute['Distribute']['ten']));?>
        </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="lastname">Thông tin chung</label>
          <div class="controls">
            <?php echo $form->textarea('gioithieu',$distribute['Distribute']['gioithieu'],array('class'=>'span12 ckeditor','id'=>'gioithieu'));?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="trangthai">Trạng thái</label>
          <div class="controls">
            <?php echo $form->select('trangthai',array(1=>"Hiển thị",0=>"Ẩn"),array('empty'=>false,'selected'=>$distribute['Distribute']['trangthai']));?>
          </div>
        </div>
      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
 