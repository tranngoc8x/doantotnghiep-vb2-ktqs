<div class="mass mass-top clearfix">
    <div class="boxheader boxheader-main clearfix">
        <h3><?php echo $html->img('img/icon-home.png');?> :: Liên hệ</h3>
        <div class="box-ct clearfix row-fluid">
			<div class='span4'>
			<?php echo $contact['Infor']['content'];?>
			</div>
			<div class='span6'>
				<?php echo $form->create("Contact",array('controller'=>'contacts','action'=>'index'));?>
				<h4>Liện hệ với chúng tôi theo form bên dưới</h4>
				<hr class="separator">
				<?php echo $session->setFlash("Contact");?>
				<label class="control-label" for="ten">Họ tên</label>
				<?php echo $form->input('ten',array('class'=>'span12','id'=>'ten','placeholder'=>'Tên của bạn ...'));?>
				<label class="control-label" for="phone">Điện thoại</label>
				<?php echo $form->input('phone',array('class'=>'span12','id'=>'phone','placeholder'=>'Số điện thoại ...'));?>
				<label class="control-label" for="diachi">Email</label>
				<?php echo $form->input('email',array('class'=>'span12','id'=>'email','placeholder'=>'Địa chỉ email của bạn ...'));?>
				<label class="control-label" for="content">Nội dung</label>
				<?php echo $form->textarea('content',null,array('class'=>'span12','rows'=>5,'id'=>'content','placeholder'=>'Nhập nội dung ...'));?>
				<hr class="separator">
				<div class="form-actions">
					<button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Gửi liên hệ</button>
					<button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Làm lại</button>
				</div>
			</div>
        </div>
    </div>
</div> 