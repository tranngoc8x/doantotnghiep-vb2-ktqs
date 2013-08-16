<?php

class CommonsController extends AppController{
	function __construct($controller, $action) {
		$doNotRenderHeader=1;
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
				$query = mysql_query("INSERT INTO $table($field,members_id,mark) VALUES('$value','$member','$rate')");

				$success = true;
				// else $success = false;

				// json datas send to the js file
				if($success)
				{
					$aResponse['message'] = 'Your rate has been successfuly recorded. Thanks for your rate :)';
					echo json_encode($aResponse);
				}
				else
				{
					$aResponse['error'] = true;
					$aResponse['message'] = 'An error occured during the request. Please retry';
					echo json_encode($aResponse);
				}
			}
			else
			{
				$aResponse['error'] = true;
				$aResponse['message'] = '"action" post data not equal to \'rating\'';
				echo json_encode($aResponse);
			}
		}
		else
		{
			$aResponse['error'] = true;
			$aResponse['message'] = '$_POST[\'action\'] not found';
			echo json_encode($aResponse);
		}
	}
}