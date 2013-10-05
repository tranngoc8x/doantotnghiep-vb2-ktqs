
    <h4>Chi tiết liên hệ</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span8">
        <div class="control-group">
            <label class="control-label" for="ten"><b>Tên người liên hệ :</b> <?php echo $contacts['Contact']['ten'] ;?></label>
        </div>
        <div class="control-group">
          <label class="control-label" for="diachi"><b>Điện thoại :</b> <?php echo $contacts['Contact']['phone'] ;?></label>
        </div>
        <div class="control-group">
          <label class="control-label" for="diachi"><b>Email :</b> <a href="mailto:<?php echo $contacts['Contact']['email'] ;?>" target="_blank"><?php echo $contacts['Contact']['email'] ;?></a></label>
        </div>
        <div class="control-group">
          <label class="control-label" for="diachi"><b>Nội dung liên hệ</b></label>
          <div class="controls">
              <?php echo $contacts['Contact']['content'] ;?>
          </div>
        </div>

      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <?php echo $html->link('<i></i>Close',array('controller'=>'contacts','action'=>'index'),array('class'=>"btn btn-icon btn-primary glyphicons circle_ok"));?>
    </div>
