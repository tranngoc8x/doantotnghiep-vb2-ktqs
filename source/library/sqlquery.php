<?php

class SQLQuery{
    protected $_dbHandle;
    protected $_result;
	protected $_query;
	protected $_table;
	protected $_fields;

	protected $_describe = array();

	protected $_orderBy;
	protected $_order;
	protected $_extraConditions;
	protected $_hO;
	protected $_hM;
	protected $_hMABTM;
	protected $_page;
	protected $_urlpage;
	protected $_limit;

    /** Connects to database **/

    function connect($address, $account, $pwd, $name) {
        $this->_dbHandle = @mysql_connect($address, $account, $pwd);
        if ($this->_dbHandle != 0) {
            if (mysql_select_db($name, $this->_dbHandle)) {
                return 1;
            }
            else {
                return 0;
            }
        }
        else {
            return 0;
        }
    }

    /** Disconnects from database **/

    function disconnect() {
        if (@mysql_close($this->_dbHandle) != 0) {
            return 1;
        }  else {
            return 0;
        }
    }

    /** Select Query **/

	function where($cond) {
		//$field, $value
		//extract($cond);
		foreach ($cond as $key => $value) {
			$akey = explode(' ', $key);
			//print_r($akey);
			if($key =='extend'){
				$this->_extraConditions .=  $value .' AND ';
			}else{
				if(count($akey) == 1 || (count($akey) > 1 and empty($akey[1]))){
					$this->_extraConditions .= '`'.$this->_model.'`.`'.$key.'` = \''.mysql_real_escape_string($value).'\' AND ';
				}else{
					$f = array_shift($akey);
					$s = implode(' ', $akey);
					$this->_extraConditions .= '`'.$this->_model.'`.`'.$f.'` '.$s.' \''.mysql_real_escape_string($value).'\' AND ';
				}
			}
		}
		#echo $this->_extraConditions;
	}

	function like($field, $value) {
		$this->_extraConditions .= '`'.$this->_model.'`.`'.$field.'` LIKE \'%'.mysql_real_escape_string($value).'%\' AND ';
	}

	function showHasOne() {
		$this->_hO = 1;
	}

	function showHasMany() {
		$this->_hM = 1;
	}

	function showHMABTM() {
		$this->_hMABTM = 1;
	}

	function setLimit($limit) {
		$this->_limit = $limit;
	}

	function setPage($page) {
		$this->_page = $page;
	}

	function orderBy($orderBy, $order = 'ASC') {
		$this->_orderBy = $orderBy;
		$this->_order = $order;
	}
	function currentPage($u = null){
		$url= str_replace('url=','',$_SERVER['QUERY_STRING']);
		$arurl=explode('/', $url);
		if(preg_match('/page:/', $arurl[count($arurl)-1])){
			$p = array_pop($arurl);
			$number=str_replace('page:', '', $p);
			$this->_page = $number;
		}
		if(isset($u) && !empty($u)){
			$this->_urlpage = implode('/', $arurl);
		}

	}
	function _validate($array){
		$session = new Session();
		$result = mysql_query('SHOW COLUMNS FROM  `'.$this->_table. '`');
		if (!$result) {
		    echo 'Could not run query: ' . mysql_error();
		    exit;
		}

		if (mysql_num_rows($result) > 0) {
			$i=0;

			$rturn = '<script src="'.BASE_PATH.'/js/jquery-1.9.1.js"></script>';
			$rturn .= '<script>
				$(document).ready(function(){';
		    while ($row = mysql_fetch_assoc($result)) {
		    	if($row["Null"] == "NO" && $row["Field"] != 'id' && isset($array[$this->_model][$row['Field']])){
		    		if($array[$this->_model][$row['Field']] == null || $array[$this->_model][$row['Field']] == ""){
		    			$rturn .=$session->writeErr("Nội dung không được bỏ trống hoặc không hợp lệ.",$this->_model.$row['Field'],$row['Field']);
		    			$i++;
		    		}else{
		    			if(strpos('email',$array[$this->_model][$row['Field']]) === true){
							if(!filter_var($msg, FILTER_VALIDATE_EMAIL)){
								$i++;
							}
						}
		    			$rturn .=$session->writeErr($array[$this->_model][$row['Field']],$this->_model.$row['Field'],$row['Field'],1);
		    		}
		    	}

		    }
		    $rturn .="});</script>";
		}

		echo $rturn;
		if($i>0) return false;
		else return true;
	}
	function read($id){
		global $inflect;

		$from = '`'.$this->_table.'` as `'.$this->_model.'` ';
		$conditions = '`'.$this->_model.'`.`id` ='. mysql_real_escape_string($id);
		$this->_query = 'SELECT *'.$this->_fields.' FROM '.$from.' WHERE '.$conditions;
		#echo  $this->_query ;
		$this->_result = mysql_query($this->_query, $this->_dbHandle);
		$table = array();
		$field = array();
		$results = array();
		$numOfFields = mysql_num_fields($this->_result);
		for ($i = 0; $i < $numOfFields; ++$i) {
		    array_push($table,mysql_field_table($this->_result, $i));
		    array_push($field,mysql_field_name($this->_result, $i));
		}
		if (mysql_num_rows($this->_result) > 0 ) {
			while ($row = mysql_fetch_row($this->_result)) {
				for ($i = 0;$i < $numOfFields; ++$i) {
					$results[$table[$i]][$field[$i]] = $row[$i];
				}
			}
		}
		return $results;
	}
	function unBindModel($array){
		if(isset($array['hasMany']) && ($array['hasMany'])){
			foreach ($array['hasMany'] as $value) {
				unset($this->hasMany[$value]);
			}
		}
		if(isset($array['hasOne']) && ($array['hasOne'])){
			foreach ($array['hasOne'] as $value) {
				unset($this->hasOne[$value]);
			}
		}
	}
	function BindModel($array){
		if(isset($array['hasMany']) && ($array['hasMany'])){
			foreach ($array['hasMany'] as  $value) {
				$this->hasMany[$value] = $value;
			}
		}
		if(isset($array['hasOne']) && ($array['hasOne'])){
			foreach ($array['hasOne'] as $value) {
				$this->hasOne[$value] = $value;
			}
		}
	}

	function find($fields = null) {
		global $inflect;
		$from = '`'.$this->_table.'` as `'.$this->_model.'` ';
		$conditions = '\'1\'=\'1\' AND ';
		$conditionsChild = '';
		$fromChild = '';

		if ($this->_hO == 1 && isset($this->hasOne)) {

			foreach ($this->hasOne as $alias => $model) {
				$table = strtolower($inflect->pluralize($model));
				//$singularAlias = strtolower($alias);
				$from .= 'LEFT JOIN `'.$table.'` as `'.$alias.'` ';
				$from .= 'ON `'.$this->_model.'`.`'.$table.'_id` = `'.$alias.'`.`id`  ';
			}
		}
		if ($this->id) {
			$conditions .= '`'.$this->_model.'`.`id` = \''.mysql_real_escape_string($this->id).'\' AND ';
		}

		if ($this->_extraConditions) {
			$conditions .= $this->_extraConditions;
		}

		$conditions = substr($conditions,0,-4);

		if (isset($this->_orderBy)) {
			$conditions .= ' ORDER BY `'.$this->_model.'`.`'.$this->_orderBy.'` '.$this->_order;
		}
		if(!isset($this->_page)){
			$this->currentPage();
		}
		if (isset($this->_page)) {
			$offset = ($this->_page-1)*$this->_limit;
			  	$conditions .= ' LIMIT '.$this->_limit.' OFFSET '.$offset;
		}else{
				$conditions .= ' LIMIT '.$this->_limit;
		}
		if($fields == null) $this->_fields = "*";
		else{
			if(is_array($fields)){
					$this->_fields = $this->_model.".id,".implode(",", $fields);
			}else{
				$this->_fields = "*";
			}
		}
		$this->_query = 'SELECT '.$this->_fields.' FROM '.$from.' WHERE '.$conditions;
		 #echo  $this->_query ;
		$this->_result = mysql_query($this->_query, $this->_dbHandle);
		$result = array();
		$table = array();
		$field = array();
		$tempResults = array();
		$numOfFields = mysql_num_fields($this->_result);
		for ($i = 0; $i < $numOfFields; ++$i) {
		    array_push($table,mysql_field_table($this->_result, $i));
		    array_push($field,mysql_field_name($this->_result, $i));
		}
		if (mysql_num_rows($this->_result) > 0 ) {
			while ($row = mysql_fetch_row($this->_result)) {
				for ($i = 0;$i < $numOfFields; ++$i) {
					$tempResults[$table[$i]][$field[$i]] = $row[$i];
				}

				if ($this->_hM == 1 && isset($this->hasMany)) {
					foreach ($this->hasMany as $aliasChild => $modelChild) {
						$queryChild = '';
						$conditionsChild = '';
						$fromChild = '';

						$tableChild = strtolower($inflect->pluralize($modelChild));
						$pluralAliasChild = strtolower($inflect->pluralize($aliasChild));
						$singularAliasChild = strtolower($aliasChild);

						$fromChild .= '`'.$tableChild.'` as `'.$aliasChild.'`';

						$conditionsChild .= '`'.$aliasChild.'`.`'.strtolower($this->_model).'s_id` = \''.$tempResults[$this->_model]['id'].'\'';

						$queryChild =  'SELECT * FROM '.$fromChild.' WHERE '.$conditionsChild;
						#echo $queryChild;
						$resultChild = mysql_query($queryChild, $this->_dbHandle);

						$tableChild = array();
						$fieldChild = array();
						$tempResultsChild = array();
						$resultsChild = array();

						if (mysql_num_rows($resultChild) > 0) {
							$numOfFieldsChild = mysql_num_fields($resultChild);
							for ($j = 0; $j < $numOfFieldsChild; ++$j) {
								array_push($tableChild,mysql_field_table($resultChild, $j));
								array_push($fieldChild,mysql_field_name($resultChild, $j));
							}

							while ($rowChild = mysql_fetch_row($resultChild)) {
								for ($j = 0;$j < $numOfFieldsChild; ++$j) {
									$tempResultsChild[$tableChild[$j]][$fieldChild[$j]] = $rowChild[$j];
								}
								array_push($resultsChild,$tempResultsChild);
							}
						}

						$tempResults[$aliasChild] = $resultsChild;

						mysql_free_result($resultChild);
					}
				}


				if ($this->_hMABTM == 1 && isset($this->hasManyAndBelongsToMany)) {
					foreach ($this->hasManyAndBelongsToMany as $aliasChild => $tableChild) {
						$queryChild = '';
						$conditionsChild = '';
						$fromChild = '';

						$tableChild = strtolower($inflect->pluralize($tableChild));
						$pluralAliasChild = strtolower($inflect->pluralize($aliasChild));
						$singularAliasChild = strtolower($aliasChild);

						$sortTables = array($this->_table,$pluralAliasChild);
						sort($sortTables);
						$joinTable = implode('_',$sortTables);

						$fromChild .= '`'.$tableChild.'` as `'.$aliasChild.'`,';
						$fromChild .= '`'.$joinTable.'`,';

						$conditionsChild .= '`'.$joinTable.'`.`'.$singularAliasChild.'s_id` = `'.$aliasChild.'`.`id` AND ';
						$conditionsChild .= '`'.$joinTable.'`.`'.strtolower($this->_model).'s_id` = \''.$tempResults[$this->_model]['id'].'\'';
						$fromChild = substr($fromChild,0,-1);

						$queryChild =  'SELECT * FROM '.$fromChild.' WHERE '.$conditionsChild;
						#echo '<!--'.$queryChild.'-->';
						$resultChild = mysql_query($queryChild, $this->_dbHandle);

						$tableChild = array();
						$fieldChild = array();
						$tempResultsChild = array();
						$resultsChild = array();

						if (mysql_num_rows($resultChild) > 0) {
							$numOfFieldsChild = mysql_num_fields($resultChild);
							for ($j = 0; $j < $numOfFieldsChild; ++$j) {
								array_push($tableChild,mysql_field_table($resultChild, $j));
								array_push($fieldChild,mysql_field_name($resultChild, $j));
							}

							while ($rowChild = mysql_fetch_row($resultChild)) {
								for ($j = 0;$j < $numOfFieldsChild; ++$j) {
									$tempResultsChild[$tableChild[$j]][$fieldChild[$j]] = $rowChild[$j];
								}
								array_push($resultsChild,$tempResultsChild);
							}
						}

						$tempResults[$aliasChild] = $resultsChild;
						mysql_free_result($resultChild);
					}
				}

				array_push($result,$tempResults);
			}

			if (mysql_num_rows($this->_result) == 1 && $this->id != null) {
				mysql_free_result($this->_result);
				$this->_clear();
				return($result[0]);
			} else {
				mysql_free_result($this->_result);
				$this->_clear();
				return($result);
			}
		} else {
			mysql_free_result($this->_result);
			$this->_clear();
			return $result;
		}

	}

    /** Custom SQL Query **/

	function query($query,$many=null,$one=null) {
		global $inflect;
		#echo $query;
		// $from="";
		// if (isset($one) && !empty($one)) {

		// 	foreach ($one as $alias => $model) {
		// 		$tableOne = strtolower($inflect->pluralize($model));
		// 		$tableMn = strtolower($inflect->pluralize($alias));
		// 		//$tableOne = strtolower($inflect->singularize($model));
		// 		$from .= 'LEFT JOIN `'.$tableOne.'` as `'.$model.'` ';
		// 		$from .= 'ON `'.$tableMn.'`.`'.$tableOne.'_id` = `'.$model.'`.`id`  ';
		// 	}
		// 	$tempQuery = strtolower($query);
		// 	$arquery = explode('from',$tempQuery);
		// }
		// debug($from);
		$this->_result = mysql_query($query, $this->_dbHandle);
		$result = array();
		$table = array();
		$field = array();
		$tempResults = array();

		if(substr_count(strtoupper($query),"SELECT")>0) {
			$num_of_rows = mysql_num_rows($this->_result);
			if ($num_of_rows > 0) {
				$numOfFields = mysql_num_fields($this->_result);
				for ($i = 0; $i < $numOfFields; ++$i) {
					$tbl = mysql_field_table($this->_result, $i);

					if(empty($tbl)){
						$tblOld = mysql_field_table($this->_result, 0);
						array_push($table,$tblOld);
					}else{
						array_push($table,$tbl);
					}

					array_push($field,mysql_field_name($this->_result, $i));
				}
				while ($row = mysql_fetch_row($this->_result)) {
					for ($i = 0;$i < $numOfFields; ++$i) {
						$table[$i] = ucfirst($inflect->singularize($table[$i]));
						$tempResults[$table[$i]][$field[$i]] = $row[$i];
					}
					if (isset($many) && !empty($many)) {
						foreach ($many as $parent=> $modelChild) {
							$queryChild = '';
							$conditionsChild = '';
							$fromChild = '';

							$tableChild = strtolower($inflect->pluralize($modelChild));
							$tableParent = strtolower($parent);
							$fromChild .= '`'.$tableChild.'` as `'.$modelChild.'`';
							$conditionsChild .= '`'.$modelChild.'`.`'.strtolower($tableParent).'s_id` = \''.$tempResults[$table['0']]['id'].'\'';
							$queryChild =  'SELECT * FROM '.$fromChild.' WHERE '.$conditionsChild;
							#echo $queryChild;
							$resultChild = mysql_query($queryChild, $this->_dbHandle);
							$tableChild = array();
							$fieldChild = array();
							$tempResultsChild = array();
							$resultsChild = array();

							if (mysql_num_rows($resultChild) > 0) {
								$numOfFieldsChild = mysql_num_fields($resultChild);
								for ($j = 0; $j < $numOfFieldsChild; ++$j) {
									array_push($tableChild,mysql_field_table($resultChild, $j));
									array_push($fieldChild,mysql_field_name($resultChild, $j));
								}

								while ($rowChild = mysql_fetch_row($resultChild)) {
									for ($j = 0;$j < $numOfFieldsChild; ++$j) {
										$tempResultsChild[$fieldChild[$j]] = $rowChild[$j];
									}
									array_push($resultsChild,$tempResultsChild);
								}
							}
							$tempResults[$modelChild] = $resultsChild;
							mysql_free_result($resultChild);
						}
					}
					array_push($result,$tempResults);
				}
				//end child
			}

			mysql_free_result($this->_result);
		}
		$this->_clear();
		return($result);
	}
	function lists($table,$cond = null) {
		global $inflect;
		$this->_model = ucfirst($inflect->singularize($table));
		$conditions = '\'1\'=\'1\' AND ';
		if(is_array($cond) and !empty($cond)){
			foreach ($cond as $key => $value) {
				$conditions .= '`'.$this->_model.'`.`'.$key.'` = \''.mysql_real_escape_string($value).'\' AND ';
			}
		}
		$conditions = substr($conditions,0,-4);
		$from = '`'.$table.'` as `'.$this->_model.'` ';
		$query = "SELECT id,ten FROM ".$from."WHERE ".$conditions;
		#echo $query;
		$this->_result = mysql_query($query, $this->_dbHandle);
		$result = array();

		if(substr_count(strtoupper($query),"SELECT")>0) {
			if (mysql_num_rows($this->_result) > 0) {
				while ($row = mysql_fetch_row($this->_result)) {
					$result[$row[0]] = $row[1];
				}
			}
			mysql_free_result($this->_result);
		}
		$this->_clear();
		return($result);
	}
    /** Describes a Table **/

	protected function _describe($array = null) {

		global $cache;
		$this->_describe = $cache->get('describe'.$this->_table);
		if (!$this->_describe) {
			$this->_describe = array();
			$query = 'DESCRIBE '.$this->_table;
			$this->_result = mysql_query($query, $this->_dbHandle);
			while ($row = mysql_fetch_row($this->_result)) {
				 array_push($this->_describe,$row[0]);
			}

			mysql_free_result($this->_result);
			$cache->set('describe'.$this->_table,$this->_describe);
		}
		if(!empty($array)){
			foreach ($this->_describe as $field) {

				if(isset($array[$this->_model][$field]) && $array[$this->_model][$field] != null){
					$this->$field = $array[$this->_model][$field];
				}else{
					if($field != 'id')
						$this->$field = null;
				}
			}
		}else{
			foreach ($this->_describe as $field) {
				if(isset($_POST[$this->_model][$field]) && $_POST[$this->_model][$field] != null ){
					$this->$field = $_POST[$this->_model][$field];
				}else{
					$this->$field = null;
				}
			}
		}
	}

    /** Delete an Object **/

	function delete() {
		if ($this->id) {
			$query = 'DELETE FROM '.$this->_table.' WHERE `id`=\''.mysql_real_escape_string($this->id).'\'';
			$this->_result = mysql_query($query, $this->_dbHandle);
			$this->_clear();
			if ($this->_result == 0) {
			    /** Error Generation **/
				return -1;
		   }
		} else {
			/** Error Generation **/
			return -1;
		}

	}

    /** Saves an Object i.e. Updates/Inserts Query **/

	function save($array = null) {
		if(empty($array)){$array=$_POST;}
		//debug($array);
		$this->_describe($array);
		if($this->_validate($array) == false){
			return ;
		}

		$query = '';
		if (isset($this->id)) {
			$updates = '';
			foreach ($this->_describe as $field) {
				if ($this->$field != null) {
					$updates .= '`'.$field.'` = \''.mysql_real_escape_string($this->$field).'\',';
				}
			}

			$updates = substr($updates,0,-1);

			$query = 'UPDATE '.$this->_table.' SET '.$updates.' WHERE `id`=\''.mysql_real_escape_string($this->id).'\'';
		} else {
			$fields = '';
			$values = '';
			foreach ($this->_describe as $field) {
				if (isset($this->$field))
				{
					$fields .= '`'.$field.'`,';
					$values .= '\''.mysql_real_escape_string($this->$field).'\',';
				}
			}
			$values = substr($values,0,-1);
			$fields = substr($fields,0,-1);
			$query = 'INSERT INTO '.$this->_table.' ('.$fields.') VALUES ('.$values.')';
		}
		#echo $query;
		$this->_result = mysql_query($query, $this->_dbHandle);
		foreach($this->_describe as $field) {
			$this->$field = null;
		}
		if ($this->_result == 0) {
            /** Error Generation **/
			return -1;
        }else return 1;
	}

	/** Clear All Variables **/

	function _clear() {
		$this->_orderby = null;
		$this->_extraConditions = null;
		$this->_hO = null;
		$this->_hM = null;
		$this->_hMABTM = null;
		$this->_page = null;
		$this->_order = null;

	}

	/** Pagination Count **/

	function totalPages() {
		if ($this->_query && $this->_limit) {
			$pattern = '/SELECT (.*?) FROM (.*)LIMIT(.*)/i';
			$replacement = 'SELECT COUNT(*) FROM $2';
			$countQuery = preg_replace($pattern, $replacement, $this->_query);
			$this->_result = mysql_query($countQuery, $this->_dbHandle);
			$count = mysql_fetch_row($this->_result);
			$totalPages = ceil($count[0]/$this->_limit);
			return $totalPages;
		} else {
			/* Error Generation Code Here */
			return -1;
		}
	}
	function paginate(){
		$numberpage = $this->totalPages();
		if($numberpage >1){
			$this->currentPage(true);
			$url = $this->_urlpage;

			$strpage = '<div class="paginate">';
			if(empty($this->_page)) $this->_page = 1;
			for($i=1;$i <= $numberpage;$i++){
				if($i==1){
					$nonedisplay = "";
					if(empty($this->_page) || $this->_page ==1) {$nonedisplay = " hidden";}
					$strpage .= '<a class="number_page'.$nonedisplay.'" href='.BASE_PATH.'/'.$url.'>Đầu</a>';
				}
				if(($i-3) < $this->_page && $this->_page < ($i+3)){
					if($i==$this->_page || (empty($this->_page) && $i==1)){
						$strpage .='<span class="number_page current">'.$i.'</span>';
					}else{
						$strpage .='<a class="number_page" href='.BASE_PATH.'/'.$url.'/page:'.$i.'>'.$i.'</a>';
					}
				}
				if($i==$numberpage){
					$nonedisplay_l = "";
					if($this->_page == $numberpage) {$nonedisplay_l = " hidden";}
					$strpage .='<a class="number_page'.$nonedisplay_l.'" href='.BASE_PATH.'/'.$url.'/page:'.$numberpage.'>Cuối</a>';
				}
			}
			$strpage.='</div>';
			echo $strpage;
		}
	}

    /** Get error string **/

    function getError() {
        return mysql_error($this->_dbHandle);
    }
}