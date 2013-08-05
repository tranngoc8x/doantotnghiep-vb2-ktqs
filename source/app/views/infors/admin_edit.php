    <?php echo $form->create("Infor",array('controller'=>'infors','action'=>'edit/'.$infor['Infor']['id']));?>
    <h4>Cập nhật thông tin chung</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span8">
        <?php echo $session->setFlash("Infor");?>
        <div class="control-group">
          <label class="control-label" for="firstname">Tên nội dung</label>
          <div class="controls">
            <?php echo $form->input('ten',array('class'=>'span12','id'=>'ten','value'=>$infor['Infor']['ten']));?>
        </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="content">Chi tiết</label>
          <div class="controls">
            <?php echo $form->textarea('content',$infor['Infor']['content'],array('class'=>'span12','id'=>'content'));?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="trangthai">Trạng thái</label>
          <div class="controls">
            <?php echo $form->select('trangthai',array(1=>"Hiển thị",0=>"Ẩn"),array('empty'=>false,'selected'=>$infor['Infor']['trangthai']));?>
          </div>
        </div>
      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
 