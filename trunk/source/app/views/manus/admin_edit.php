<div class="well" style="padding-bottom: 20px; margin: 0;">
	 <?php //debug($manu);?>
    <?php echo $form->create("Manu",array('controller'=>'manus','action'=>'edit/'.$manu['Manu']['id']));?>
    <h4>Cập nhật thông tin nhà sản xuất</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span8">
        <?php echo $session->setFlash("Manu");?>
        <div class="control-group">
          <label class="control-label" for="firstname">Tên nhà sản xuất</label>
          <div class="controls">
            <?php echo $form->input('ten',array('class'=>'span12','id'=>'ten','value'=>$manu['Manu']['ten']));?>
        </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="lastname">Thông tin chung</label>
          <div class="controls">
            <?php echo $form->textarea('gioithieu',$manu['Manu']['gioithieu'],array('class'=>'span12','id'=>'Manugioithieu'));?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="trangthai">Trạng thái</label>
          <div class="controls">
            <?php echo $form->select('trangthai',array(1=>"Hiển thị",0=>"Ẩn"),array('empty'=>false,'selected'=>$manu['Manu']['trangthai']));?>
          </div>
        </div>
      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
</div>