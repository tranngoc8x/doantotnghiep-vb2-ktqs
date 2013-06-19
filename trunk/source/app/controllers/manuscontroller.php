<?php
	class ManusController extends AppController{
		function beforeAction () {
		}
		function admin_index(){
			// $this->Drug->showHasOne();
			// $this->Drug->orderBy('ten','ASC');
			// $this->Drug->setLimit('15');
			$manus = $this->Manu->find();
			$this->set('manus',$manus);
		}
		function afterAction () {
		}
	}
?>