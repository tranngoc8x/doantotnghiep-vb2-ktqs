    <?php echo $form->create("Department",array('controller'=>'departments','action'=>'reader'),array("enctype"=>"multipart/form-data"));?>
    <h4>Nhập dữ liệu từ file Excel</h4>
     <hr class="separator">
    <div class="row-fluid">
      <div class="span12">
        <?php echo $session->setFlash("Department");?>
        <div class="control-group">
          	<label class="control-label" for="file">Chọn file Excel(file cần theo đúng định dạng quy định để tránh lỗi)</label>
          	<div class="controls">
            	<?php echo $form->input('file',array('class'=>'span8','id'=>'file','type'=>'file'));?>
              <?php if(!empty($mgs)){?>
              <div class=" span12 errormesage">
              <?php echo $mgs;?></div>
              <?php }?>
        	</div>
        </div>
    </div>
  </div>
     <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
</form>