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
	function _type($id){
		switch ($id) {
			case 't1': $temp = 'drugs'; break;
			case 't2': $temp = 'drugstores'; break;
			case 't3': $temp = 'clinics'; break;
			case 't4': $temp = 'hopitals'; break;
			case 't5': $temp = 'equips'; break;
			default: break;
		}
		return $temp;
	}
	//hiển thị lần đầu tiên khi load trang web
	function showpost($id){
		$this->doNotRenderHeader=1;
		global $inflect;
		$result = array();
		$model = ucfirst($inflect->singularize($this->_controller));
		//$item_id = $this->variables[lcfirst($model)][$model]['id'];
		$item_id = $id;
		$temp = lcfirst($this->_controller);
		$temp2 = lcfirst($model);
		$tbl = 'ykien_'.$temp;//bảng comment
		$key = ucfirst('Ykien_'.$temp2); //Alias bảng comment
		$val = ucfirst('ykien_'.$temp2.'_child');//Alias bảng trả lời
		$fieldid = "Comment.".$temp.'_id';

		$sql = "SELECT *,DATE_FORMAT(  Comment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet,
			TIMEDIFF (NOW() , Comment.ngayviet) AS TimeSpent,Member.id,Member.ten FROM  $tbl AS Comment LEFT JOIN members AS Member ON Comment.members_id = Member.id WHERE $fieldid = '$item_id' ORDER BY Comment.id DESC LIMIT 0,10";
		$result = $this->{$model}->query($sql,array($key=>$val));
		return $result;
	}
	//khi bấm nút bình luận
	function writePost($value=null , $token=null,$item = null){
		$arr = explode('_', $item);
		$item_id = $arr[1];
		$table = $this->_type($arr[0]);
		$temp = lcfirst($table);
		$tbl = 'ykien_'.$temp;//bảng comment
		$key = ucfirst('Ykien_'.$temp); //Alias bảng comment
		$val = ucfirst('ykien_'.$temp.'_child');//Alias bảng trả lời
		$fieldid = $temp.'_id';
		$result = array();
		if( !empty($value) && CommonsController::_checkValues($value))
		{
			if(!empty($token) && $token == $_SESSION['user_token'] && isset($_SESSION['ssid']) && !empty($_SESSION['ssid'])){
				$users_id = $_SESSION['ssid'];
				$sql = "INSERT INTO $tbl ($fieldid,members_id,content,ngayviet) VALUES('".$item_id."','".$users_id."','".$this->_checkValues($value)."','".(date("Y-m-d H:i:s"))."')";
				$this->Common->query($sql);
				$sql2 = "SELECT Comment.*, DATE_FORMAT(  Comment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet,TIMEDIFF (NOW() , Comment.ngayviet) AS TimeSpent,Member.ten FROM  $tbl as Comment LEFT JOIN members AS Member ON Comment.members_id = Member.id WHERE Comment.$fieldid = '$item_id' order by Comment.id desc limit 1";
				$result = $this->Common->query($sql2);

			}
		}
		$this->set(compact('result'));
	}
	//BẤM NÚT XEM THÊM
	function morepost($data=null,$item = null){
		$this->doNotRenderHeader=1;
		global $inflect;
		$next = $data;
		$comments = array();

		$arrx = explode('_', $item);
		$item_id = $arrx[1];
		$table = $this->_type($arrx[0]);

		if(!empty($next))
		{
			$next_records = $next;
			$temp = $inflect->singularize($table);
			$tbl = 'ykien_'.$table;//bảng comment
			$key = ucfirst('ykien_'.$temp); //Alias bảng comment
			$val = ucfirst('ykien_'.$temp.'_child');//Alias bản trả lời
			$fieldid = "Comment.".$table.'_id';

			$sql = "SELECT *,DATE_FORMAT(  Comment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet,
			TIMEDIFF (NOW() , Comment.ngayviet) AS TimeSpent,Member.id,Member.ten FROM  $tbl AS Comment LEFT JOIN members AS Member ON Comment.members_id = Member.id WHERE $fieldid = '$item_id' ORDER BY Comment.id DESC LIMIT ".$next_records.", 10";
			$comments = $this->Common->query($sql,array($key=>$val));

			$check_res = $this->Common->query("SELECT id as TotalCmt FROM  $tbl AS MoreCmt order by id desc limit ".$next_records.", 10");
			$comments['TotalCmt'] = count($check_res);
		}
		$this->set(compact('comments','next','val'));
		//return $result;
	}
	//BẤM NÚT TRẢ LỜI
	function replypost($item = null,$cmt=null,$value=null , $token=null){
		$this->doNotRenderHeader=1;
		global $inflect;
		$result = array();
		$item_id = $cmt;
		$table = $this->_type($item);

		$temp = lcfirst($table);
		$temp2 = $inflect->singularize($table);
		$ctbl = 'ykien_'.$temp2.'_childs';// bảng trả lời
		$val = ucfirst('ykien_'.$temp2.'_child');//Alias bảng trả lời
		$fieldid = $temp.'_id';
		$cfieldid = 'ykien_'.$temp.'_id';


		if( !empty($value) && CommonsController::_checkValues($value))
		{
			if(!empty($token) && $token == $_SESSION['user_token'] && isset($_SESSION['ssid']) && !empty($_SESSION['ssid'])){
				$users_id = $_SESSION['ssid'];
				$sql = "INSERT INTO $ctbl ($cfieldid,members_id,content,ngayviet) VALUES('".$item_id."','".$users_id."','".$this->_checkValues($value)."','".(date("Y-m-d H:i:s"))."')";
				$this->Common->query($sql);
				$sql2 = "SELECT ReplyComment.*, DATE_FORMAT(  ReplyComment.ngayviet ,  '%d/%m/%Y' ) AS ngayviet,TIMEDIFF (NOW() , ReplyComment.ngayviet) AS TimeSpent,Member.ten FROM  $ctbl as ReplyComment LEFT JOIN members AS Member ON ReplyComment.members_id = Member.id WHERE ReplyComment.$cfieldid = '$item_id' order by ReplyComment.id desc limit 1";
				$result = $this->Common->query($sql2);
			}
		}
		// echo json_encode($result);
		// unset($result);
		$this->set(compact('result'));
	}

	//BẤM NÚT XÓA BÌNH LUẬN
	function deleteCmt($id,$item,$token=null){
		global $inflect;
		$this->doNotRenderHeader=1;
		if(!isset($id) || empty($id)) exit();
		if(!empty($token) && $token == $_SESSION['user_token'] && isset($_SESSION['ssid']) && !empty($_SESSION['ssid'])){
			$table = $this->_type($item);
			$temp = lcfirst($table);
			$temp2 = $inflect->singularize($table);
			$tbl = 'ykien_'.$temp;
			$ctbl = 'ykien_'.$temp2.'_childs';// bảng trả lời
			$fieldid = 'ykien_'.$temp.'_id';
			$sql = "DELETE FROM $ctbl WHERE $fieldid ='".$id."' AND members_id ='".$_SESSION['ssid']."'";
			$result = $this->Common->query($sql);
			$sqlx = "DELETE FROM $tbl WHERE id ='".$id."' AND members_id ='".$_SESSION['ssid']."'";
			$result = $this->Common->query($sqlx);
		}
	}
	//BẤM NÚT XÓA TRẢ LỜI
	function deleteCmtChild($id,$item,$token=null){
		global $inflect;
		$this->doNotRenderHeader=1;
		if(!isset($id) || empty($id)) exit();
		if(!empty($token) && $token == $_SESSION['user_token'] && isset($_SESSION['ssid']) && !empty($_SESSION['ssid'])){
			$table = $this->_type($item);
			$temp2 = $inflect->singularize($table);
			$ctbl = 'ykien_'.$temp2.'_childs';// bảng trả lời
			$result = $this->Common->query("DELETE FROM $ctbl WHERE id ='".$id."' AND members_id ='".$_SESSION['ssid']."'");
		}
	}

	function afterAction() {

	}
}