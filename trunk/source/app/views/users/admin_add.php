    <?php echo $form->create("User",array('controller'=>'users','action'=>'add'));?>
    <h4>Thêm mới người dùng</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span12">
        <?php echo $session->setFlash("User");?>
        <div class="control-group">
          <label class="control-label" for="ten">Họ tên</label>
          <div class="controls">
            <?php echo $form->input('ten',array('class'=>'span8','id'=>'ten'));?>
        </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="username">Tên đăng nhập</label>
          <div class="controls">
            <?php echo $form->input('username',array('class'=>'span8','id'=>'username'));?>
            <?php if(!empty($err_user)){?>
			<div class=" errormesage"><?php echo $err_user;?></div>
			<?php }?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="email">Email</label>
          <div class="controls">
            <?php echo $form->input('email',array('class'=>'span8','id'=>'email'));?>
            <?php if(!empty($err_email)){?>
			<div class=" errormesage"><?php echo $err_email;?></div>
			<?php }?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="password">Mật khẩu</label>
          <div class="controls">
            <?php echo $form->input('password',array('type'=>'password','class'=>'span8','id'=>'password'));?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="repass">Nhắc lại mật khẩu</label>
          <div class="controls">
            <?php echo $form->input('repass',array('type'=>'password','class'=>'span8','id'=>'repass'));?>
            <?php if(!empty($err)){?>
			<div class=" errormesage"><?php echo $err;?></div>
			<?php }?>
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
 