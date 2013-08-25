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
					$field = $table.'_id';
					$table = 'rate_'.$table;
					$value = $_POST['value'];
					$rate = floatval($_POST['rate']);
					$member =$_SESSION['ssid'];
					$rated = 0;
					if($id>0){
						$check = mysql_query("SELECT count(id)  as rated FROM $table as Rate WHERE $field = '$value' AND members_id='$member'");
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

	function _checkValues($value)
	{
		 $value = trim($value);

		if (get_magic_quotes_gpc()) {
			$value = stripslashes($value);
		}

		 $value = strtr($value,array_flip(get_html_translation_table(HTML_ENTITIES)));

		 $value = strip_tags($value);
		$value = mysql_real_escape_string($value);
		$value = htmlspecialchars ($value);
		return $value;
	}
	//commnet
	function _clickable_link($text = '')
	{
		$text = preg_replace('#(script|about|applet|activex|chrome):#is', "\\1:", $text);
		$ret = ' ' . $text;
		$ret = preg_replace("#(^|[\n ])([\w]+?://[\w\#$%&~/.\-;:=,?@\[\]+]*)#is", "\\1<a href=\"\\2\" target=\"_blank\">\\2</a>", $ret);

		$ret = preg_replace("#(^|[\n ])((www|ftp)\.[\w\#$%&~/.\-;:=,?@\[\]+]*)#is", "\\1<a href=\"http://\\2\" target=\"_blank\">\\2</a>", $ret);
		$ret = preg_replace("#(^|[\n ])([a-z0-9&\-_.]+?)@([\w\-]+\.([\w\-\.]+\.)*[\w]+)#i", "\\1<a href=\"mailto:\\2@\\3\">\\2@\\3</a>", $ret);
		$ret = substr($ret, 1);
		return $ret;
	}
	function showpost(){
		global $inflect;
		if( isset($_REQUEST['value']) && $this->_checkValues($_REQUEST['value']))
		{
			$users_id = $_SESSION['ssid'];
			mysql_query("INSERT INTO  ykien_drugs (drugs_id,members_id,content,ngayviet) VALUES('6','".$users_id."','".$this->_checkValues($_REQUEST['value'])."','".(date("Y-m-d H:i:s"))."')");
			$result = mysql_query("SELECT *, NOW() - ngayviet AS TimeSpent FROM  ykien_drugs order by p_id desc limit 1");
		}

		// bấm  nút xem thêm
		elseif(isset($_REQUEST['value']) && !empty($_REQUEST['show_more_post']))
		{
			$next_records = $_REQUEST['show_more_post'] + 10;
			$result = mysql_query("SELECT *,
			NOW() - ngayviet AS TimeSpent FROM  ykien_drugs order by id desc limit ".$_REQUEST['show_more_post'].", 10");
			$check_res = mysql_query("SELECT * FROM  ykien_drugs order by id desc limit ".$next_records.", 10");
			$show_more_button = 0; // button in the end
			$check_result = mysql_num_rows(@$check_res);
			if($check_result > 0)
			{
				$show_more_button = 1;
			}
		}
		else
		{
			$show_more_button = 1;
			$model = ucfirst($inflect->singularize($this->_controller));
			//echo "SELECT *, NOW() - Comment.ngayviet AS TimeSpent FROM  ykien_drugs AS Comment LEFT JOIN  ykien_drug_childs AS CommentChild ON Comment.id = CommentChild.ykien_drugs_id ORDER BY Comment.id DESC LIMIT 0,10";
			$result = $this->{$model}->query("SELECT *,
			TIMEDIFF (NOW() , Comment.ngayviet) AS TimeSpent FROM  ykien_drugs AS Comment LEFT JOIN members AS Member ON Comment.members_id = Member.id ORDER BY Comment.id DESC LIMIT 0,10",array('Ykien_drug'=>'Ykien_drug_child'),array('Ykien_drug'=>'Member'));
		}
		return $result;
	}

	function afterAction() {

	}
}