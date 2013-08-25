<?php
class Comment{
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
	function index(){
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
			$result = mysql_query("SELECT *,
			NOW() - ngayviet AS TimeSpent FROM  ykien_drugs order by p_id desc limit 0,10");
		}
	}
}