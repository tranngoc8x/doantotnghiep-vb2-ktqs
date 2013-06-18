<ul class='thumbnails'>
    <?php foreach ($drugs as $drug):?>
    <li>
    <?php echo $html->link($html->img('files/drugs/'.$drug['Drug']['anh'],array("width"=>'140px',"height"=>'120px')),
                            array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),
                            array('class'=>"article entry"),false);?>
    <?php echo $html->link($drug['Drug']['ten'],array('controller'=>'drugs','action'=>'view/'.$drug['Drug']['id']),array('class'=>'item'));?>
    </li>
    <?php endforeach?>
</ul>