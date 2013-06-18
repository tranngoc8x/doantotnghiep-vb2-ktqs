<!-- <ul class='thumbnails'>
    <?php foreach ($drugs1 as $drug):?>
    <li>
    <?php echo $html->link($drug['Drug']['ten']."<br>".$html->img('files/drugs/'.$drug['Drug']['anh'],array("class"=>"img-polaroid","width"=>'160px',"height"=>'120px')),
                            array('controller'=>'categories','action'=>'view/'.$drug['Drug']['id']),
                            array('class'=>"thumbnail entry"),false);?>
    </li>
    <?php endforeach?>
</ul>
 -->