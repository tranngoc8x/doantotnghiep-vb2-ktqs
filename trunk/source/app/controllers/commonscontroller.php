<?php

class CommonsController extends AppController{
	function beforeAction () {
		$this->doNotRenderHeader=1;
	}
	function view(){
		$aResponse['error'] = false;
		$aResponse['message'] = '';
		$_POST = is_array($_POST) ? array_map('stripSlashesDeep', $_POST) : stripslashes($_POST);
		if(isset($_POST['action']))
		{

			if(htmlentities($_POST['action'], ENT_QUOTES, 'UTF-8') == 'rating')
			{
				//$id = intval($_POST['idBox']);
				$table = $_POST['table'];
				$fref = str_replace('rate_', "", $table);
				$field = $fref.'_id';

				$value = $_POST['value'];
				$rate = floatval($_POST['rate']);
				$member =intval($_POST['member']);
				$result = mysql_query("INSERT INTO $table($field,members_id,mark) VALUES('$value','$member','$rate')");
				if($result==1){
					$success = true;
				}
				else $success = false;
				if($success)
				{
					$aResponse['message'] = 'Đánh giá của bạn đã được lưu lại. Xin cám ơn bạn!';
					echo json_encode($aResponse);
				}
				else
				{
					$aResponse['error'] = true;
					$aResponse['message'] = 'Có lỗi trong quá trình xử lý. Hãy thử lại sau!';
					echo json_encode($aResponse);
				}
			}
			else
			{
				$aResponse['error'] = true;
				$aResponse['message'] = 'Không thực hiện đúng thao tác.';
				echo json_encode($aResponse);
			}
		}
		else
		{
			$aResponse['error'] = true;
			$aResponse['message'] = 'Không thực hiện đúng thao tác.';
			echo json_encode($aResponse);
		}
	}
	function afterAction() {

	}
}