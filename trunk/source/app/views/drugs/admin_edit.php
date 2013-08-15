 
    <?php echo $form->create("Drug",array('controller'=>'drugs','action'=>'edit/'.$drug['Drug']['id']));?>
    <h4>Thêm mới thông tin thuốc</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span12">
        <?php echo $session->setFlash("Drug");?>
        <div class="control-group">
          	<label class="control-label" for="firstname">Tên thuốc</label>
          	<div class="controls">
            	<?php echo $form->input('ten',array('class'=>'span8','id'=>'ten','value'=>$drug['Drug']['ten']));?>
        	</div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="firstname">Số đăng ký</label>
	        <div class="controls">
	            <?php echo $form->input('sodk',array('class'=>'span8','id'=>'sodk','value'=>$drug['Drug']['sodk']));?>
	        </div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="giakekhai">Giá kê khai</label>
	        <div class="controls">
	            <?php echo $form->input('giakekhai',array('class'=>'span8','id'=>'giakekhai','value'=>$drug['Drug']['giakekhai']));?>
	        </div>
        </div>
        <div class="control-group">
	        <label class="control-label" for="dangbaoche">Dạng bào chế</label>
	        <div class="controls">
	            <?php echo $form->input('dangbaoche',array('class'=>'span8','id'=>'dangbaoche','value'=>$drug['Drug']['dangbaoche']));?>
	        </div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="thanhphan">Thành phần</label>
          	<div class="controls">
            	<?php echo $form->textarea('thanhphan', $drug['Drug']['thanhphan'],array('class'=>'span12 ckeditor','id'=>'thanhphan'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="hamluong">Hàm lượng</label>
          	<div class="controls">
            	<?php echo $form->textarea('hamluong', $drug['Drug']['hamluong'],array('class'=>'span12 ckeditor','id'=>'hamluong'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="chidinh">Chỉ định</label>
          	<div class="controls">
            	<?php echo $form->textarea('chidinh', $drug['Drug']['chidinh'],array('class'=>'span12 ckeditor','id'=>'chidinh'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="lieudung">Liều dùng</label>
          	<div class="controls">
            	<?php echo $form->input('lieudung',array('class'=>'span8','id'=>'lieudung','value'=>$drug['Drug']['lieudung']));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="baoquan">Bảo quản</label>
          	<div class="controls">
            	<?php echo $form->textarea('baoquan', $drug['Drug']['baoquan'],array('class'=>'span12 ckeditor','id'=>'baoquan'));?>
          	</div>
        </div>
        <div class="control-group">
          	<label class="control-label" for="anh">Ảnh sản phẩm</label>
          	<div class="controls">
            	<?php echo $form->input('anh',array('class'=>'span8','id'=>'anh','value'=>$drug['Drug']['anh']));?>
          	</div>
        </div>
        
        <div class="control-group">
          	<label class="control-label" for="trangthai">Nhóm dược lý</label>
          	<div class="controls">
            	<?php echo $form->select('types_id',$types,array('empty'=>false,'selected'=>$drug['Drug']['types_id']));?>
          	</div>
        </div>
		<div class="control-group">
          	<label class="control-label" for="trangthai">Nhà phân phối</label>
          	<div class="controls">
            	<?php echo $form->select('distributes_id',$distributes,array('empty'=>false,'selected'=>$drug['Drug']['distributes_id']));?>
          	</div>
        </div>

        <div class="control-group">
          	<label class="control-label" for="trangthai">Nhà sản xuất</label>
          	<div class="controls">
            	<?php echo $form->select('manus_id',$manus,array('empty'=>false,'selected'=>$drug['Drug']['manus_id']));?>
          	</div>
        </div>


        <div class="control-group">
          	<label class="control-label" for="trangthai">Trạng thái</label>
          	<div class="controls">
            	<?php echo $form->select('trangthai',array(1=>"Hiển thị",0=>"Ẩn"),array('empty'=>false,'selected'=>$drug['Drug']['trangthai']));?>
          	</div>
        </div>
      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
 