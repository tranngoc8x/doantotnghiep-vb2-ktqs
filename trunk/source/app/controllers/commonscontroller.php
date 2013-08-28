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

	public function _checkValues($value)
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
	function showpost($value=null , $token=null, $itemid = null){
		global $inflect;
		$result = array();
		$item_id =$_SESSION['drugid'];
		$model = ucfirst($inflect->singularize($this->_controller));
		//$item_id = $this->variables[lcfirst($model)][$model]['id'];
		//khi bấm nút bình luận
		if( !empty($value) && CommonsController::_checkValues($value))
		{
			if(!empty($token) && $token == $_SESSION['user_token'] && isset($_SESSION['ssid']) && !empty($_SESSION['ssid'])){
				$users_id = $_SESSION['ssid'];
				$this->{$model}->query("INSERT INTO ykien_drugs (drugs_id,members_id,content,ngayviet) VALUES('".$_SESSION['drugid']."','".$users_id."','".$this->_checkValues($value)."','".(date("Y-m-d H:i:s"))."')");
				$result = $this->{$model}->query("SELECT Comment.*, DATE_FORMAT(  Comment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet,TIMEDIFF (NOW() , Comment.ngayviet) AS TimeSpent,Member.ten FROM  ykien_drugs as Comment LEFT JOIN members AS Member ON Comment.members_id = Member.id WHERE Comment.drugs_id = '$item_id' order by Comment.id desc limit 1");
				echo json_encode($result);
				exit();
			}
		}
		// bấm  nút xem thêm
		elseif(!empty($value) && !empty($_GET['show_more_post']))
		{
			$next_records = $_POST['show_more_post'] + 10;
			$result = $this->{$model}->query("SELECT Comment.*,DATE_FORMAT(  Comment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet,
			TIMEDIFF (NOW() , Comment.ngayviet) AS TimeSpent FROM,Member.ten ykien_drugs as Comment LEFT JOIN members AS Member ON Comment.members_id = Member.id WHERE Comment.drugs_id = '$item_id' order by Comment.id  desc limit "."1".", 10",array('Ykien_drug'=>'Ykien_drug_child'),array('Ykien_drug'=>'Member'));
			$check_res = $this->{$model}->query("SELECT * FROM  ykien_drugs order by id desc limit ".$next_records.", 10");
			$show_more_button = 0; // button in the end
			$check_result = mysql_num_rows(@$check_res);
			if($check_result > 0)
			{
				$show_more_button = 1;
			}
			echo  json_encode($result);
			exit();
		}
		else//hiển thị lần đầu tiên khi load trang web
		{
			$show_more_button = 1;
		//	$item_id = @$this->variables[lcfirst($model)][$model]['id'];
			//,DATE_FORMAT(  Comment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet
			//echo "SELECT *, NOW() - Comment.ngayviet AS TimeSpent FROM  ykien_drugs AS Comment LEFT JOIN  ykien_drug_childs AS CommentChild ON Comment.id = CommentChild.ykien_drugs_id WHERE Comment.drugs_id = '$item_id' ORDER BY Comment.id DESC LIMIT 0,10";
			$result = $this->{$model}->query("SELECT *,DATE_FORMAT(  Comment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet,
			TIMEDIFF (NOW() , Comment.ngayviet) AS TimeSpent FROM  ykien_drugs AS Comment LEFT JOIN members AS Member ON Comment.members_id = Member.id WHERE Comment.drugs_id = '$item_id' ORDER BY Comment.id DESC LIMIT 0,10",array('Ykien_drug'=>'Ykien_drug_child'),array('Ykien_drug'=>'Member'));
		}
		return $result;
	}
	function replypost($idcmt=null,$value=null , $token=null){
		global $inflect;
		$result = array();
		$model = ucfirst($inflect->singularize($this->_controller));
		if( !empty($value) && CommonsController::_checkValues($value))
		{
			if(!empty($token) && $token == $_SESSION['user_token'] && isset($_SESSION['ssid']) && !empty($_SESSION['ssid'])){
				$users_id = $_SESSION['ssid'];
				$this->{$model}->query("INSERT INTO ykien_drug_childs (ykien_drugs_id,members_id,content,ngayviet) VALUES('".$idcmt."','".$users_id."','".$this->_checkValues($value)."','".(date("Y-m-d H:i:s"))."')");
				$result = $this->{$model}->query("SELECT ReplyComment.*, DATE_FORMAT(  ReplyComment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet,TIMEDIFF (NOW() , ReplyComment.ngayviet) AS TimeSpent,Member.ten FROM  ykien_drug_childs as ReplyComment LEFT JOIN members AS Member ON ReplyComment.members_id = Member.id WHERE ReplyComment.ykien_drugs_id = '$idcmt' order by ReplyComment.id desc limit 1");
			}
		}
		echo json_encode($result);
	}

	function afterAction() {

	}
}