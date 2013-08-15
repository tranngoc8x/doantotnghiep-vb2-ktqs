 
    <?php echo $form->create("Department",array('controller'=>'departments','action'=>'add'));?>
    <h4>Thêm mới chuyên khoa</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span12">
        <?php echo $session->setFlash("Department");?>
        <div class="control-group">
          <label class="control-label" for="firstname">Tên chuyên khoa</label>
          <div class="controls">
            <?php echo $form->input('ten',array('class'=>'span8','id'=>'ten'));?>
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
 