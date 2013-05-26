<?php

class ProductsController extends AppController {
	function beforeAction () {
	}
	function view($id = null) {
		$this->Product->id = $id;
		$this->Product->showHasOne();
		$this->Product->showHMABTM();
		$product = $this->Product->find();
		$this->set('product',$product);
	}
	function afterAction() {

	}
}