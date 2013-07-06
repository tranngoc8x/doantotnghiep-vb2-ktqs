 
    <?php echo $form->create("Drug",array('controller'=>'drugs','action'=>'add'));?>
    <h4>Thêm mới thông tin thuốc</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span8">
        <?php echo $session->setFlash("Drug");?>
        <div class="control-group">
          	<label class="control-label" for="firstname">Tên thuốc</label>
          	<div class="controls">
            	<?php echo $form->input('ten',array('class'=>'span12','id'=>'ten'));?>
        	</div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="firstname">Số đăng ký</label>
	        <div class="controls">
	            <?php echo $form->input('sodk',array('class'=>'span12','id'=>'sodk'));?>
	        </div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="firstname">Giá kê khai</label>
	        <div class="controls">
	            <?php echo $form->input('giakekhai',array('class'=>'span12','id'=>'giakekhai'));?>
	        </div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="firstname">Dạng bào chế</label>
	        <div class="controls">
	            <?php echo $form->input('dangbaoche',array('class'=>'span12','id'=>'dangbaoche'));?>
	        </div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="lastname">Thành phần</label>
          	<div class="controls">
            	<?php echo $form->textarea('thanhphan',null,array('class'=>'span12','id'=>'thanhphan'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="lastname">Hàm lượng</label>
          	<div class="controls">
            	<?php echo $form->textarea('hamluong',null,array('class'=>'span12','id'=>'hamluong'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="lastname">Chỉ định</label>
          	<div class="controls">
            	<?php echo $form->textarea('chidinh',null,array('class'=>'span12','id'=>'chidinh'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="lastname">Liều dùng</label>
          	<div class="controls">
            	<?php echo $form->input('lieudung',array('class'=>'span12','id'=>'lieudung'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="lastname">Bảo quản</label>
          	<div class="controls">
            	<?php echo $form->textarea('baoquan',null,array('class'=>'span12','id'=>'baoquan'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="lastname">Ảnh sản phẩm</label>
          	<div class="controls">
            	<?php echo $form->input('anh',array('class'=>'span12','id'=>'anh'));?>
          	</div>
        </div>
        
        <div class="control-group">
          	<label class="control-label" for="trangthai">Nhóm dược lý</label>
          	<div class="controls">
            	<?php echo $form->select('types_id',$types,array('empty'=>false));?>
          	</div>
        </div>
		<div class="control-group">
          	<label class="control-label" for="trangthai">Nhà phân phối</label>
          	<div class="controls">
            	<?php echo $form->select('distributes_id',$distributes,array('empty'=>false));?>
          	</div>
        </div>

        <div class="control-group">
          	<label class="control-label" for="trangthai">Nhà sản xuất</label>
          	<div class="controls">
            	<?php echo $form->select('manus_id',$manus,array('empty'=>false));?>
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
 