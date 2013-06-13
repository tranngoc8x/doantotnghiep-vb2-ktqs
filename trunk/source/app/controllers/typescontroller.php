<?php
class TypesController extends AppController {
	function beforeAction () {
	}
	function index() {
		$this->Type->showHasMany();
		$types = $this->Type->find();
		$this->set('types',$types);
		debug($types);
	}
	function afterAction() {

	}
}