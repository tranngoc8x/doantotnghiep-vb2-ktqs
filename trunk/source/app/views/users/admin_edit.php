
	 <?php //debug($type);?>
    <?php echo $form->create("User",array('controller'=>'users','action'=>'edit/'.$user['User']['id']));?>
    <h4>Cập nhật thông tin cá nhân</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span8">
        <?php echo $session->setFlash("User");?>
        <div class="control-group">
          <label class="control-label" for="infor"><strong>Tên đăng nhập : </strong><?php echo $user['User']['username'];?></label>
        </div>
        <div class="control-group">
          <label class="control-label" for="infor"><strong>Địa chỉ Email : </strong><?php echo $user['User']['email'];?></label>
        </div>
        <div class="control-group">
          <label class="control-label" for="firstname">Họ tên</label>
          <div class="controls">
            <?php echo $form->input('ten',array('class'=>'span12','id'=>'ten','value'=>$user['User']['ten']));?>
        </div>
        </div>

        <div class="control-group">
          <label class="control-label" for="trangthai">Trạng thái</label>
          <div class="controls">
            <?php echo $form->select('trangthai',array(1=>"Hiển thị",0=>"Ẩn"),array('empty'=>false,'selected'=>$user['User']['trangthai']));?>
          </div>
        </div>
      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
