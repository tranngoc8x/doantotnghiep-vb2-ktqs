<?php

class CommonsController extends AppController{
	function beforeAction () {
		$this->doNotRenderHeader=1;
	}
	function rating(){
		$aResponse['error'] = false;
		$aResponse['message'] = '';
		if(isset($_SESSION['ssid']) && !empty($_SESSION['ssid'])){
			$_POST = is_array($_POST) ? array_map('stripSlashesDeep', $_POST) : stripslashes($_POST);
			if(isset($_POST['action']))
			{

				if(htmlentities($_POST['action'], ENT_QUOTES, 'UTF-8') == 'rating')
				{
					$id = intval($_POST['idBox']);
					$table = $_POST['table'];
					$fref = str_replace('rate_', "", $table);
					$field = $fref.'_id';

					$value = $_POST['value'];
					$rate = floatval($_POST['rate']);
					$member =$_SESSION['ssid'];
					$rated = 0;
					if($id>0){
						$check = mysql_query("SELECT count(id)   as rated FROM $table as Rate WHERE $field = '$value' AND members_id='$member'");
						//echo "SELECT count(id) FROM  as rated $table as rated WHERE $field = '$value' AND members_id='$member'";
						$rated = mysql_result($check,0,'rated');
					}
					if($rated>0){
						$result = mysql_query("UPDATE $table SET mark= '$rate' WHERE $field = '$value' AND members_id = '$member'");
					}else{
						$result = mysql_query("INSERT INTO $table($field,members_id,mark) VALUES('$value','$member','$rate')");
					}

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
		else{
			$aResponse['error'] = true;
			$aResponse['message'] = 'Bạn cần đăng nhập để thực hiện thao tác này.';
			echo json_encode($aResponse);
		}
	}
	function afterAction() {

	}
}