 
    <?php echo $form->create("Hopital",array('controller'=>'hopitals','action'=>'edit/'.$hopital['Hopital']['id']));?>
    <h4>Cập nhật thông tin bệnh viện</h4>
    <hr class="separator">
    <div class="row-fluid">
      <div class="span12">
        <?php echo $session->setFlash("Hopital");?>
        <div class="control-group">
            <label class="control-label" for="ten">Tên bệnh viện</label>
            <div class="controls">
              <?php echo $form->input('ten',array('class'=>'span8','id'=>'ten','value'=>$hopital['Hopital']['ten']));?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="diachi">Địa chi</label>
          <div class="controls">
              <?php echo $form->input('diachi',array('class'=>'span8','id'=>'diachi','value'=>$hopital['Hopital']['diachi']));?>
          </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="trangthai">Thành phố</label>
            <div class="controls">
              <?php echo $form->select('cities_id',$cities,array('empty'=>false,'selected'=>$hopital['Hopital']['cities_id']));?>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="gioithieu">Thông tin</label>
            <div class="controls">
              <?php echo $form->textarea('gioithieu',$hopital['Hopital']['gioithieu'],array('class'=>'span12 ckeditor','id'=>'gioithieu'));?>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="map">Vị trí trên bản đồ</label>
            <div class="controls">
               <?php echo $form->input('map',array('class'=>'span8','id'=>'map','value'=>$hopital['Hopital']['map']));?>
            </div>
        </div>
        
       <div class="control-group">
            <label class="control-label" for="trangthai">Trạng thái</label>
            <div class="controls">
              <?php echo $form->select('trangthai',array(1=>"Hiển thị",0=>"Ẩn"),array('empty'=>false,'selected'=>$hopital['Hopital']['trangthai']));?>
            </div>
        </div>
      </div>
    </div>
    <hr class="separator">
    <div class="form-actions">
      <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
      <button type="reset" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>
    </div>
 