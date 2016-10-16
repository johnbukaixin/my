<?php
header("Content-type: text/json; charset=utf-8");
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "testbase";
$hasError=false;
$msg="";
$code=0;

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES'utf8';"));
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	//$conn = new PDO("odbc:driver={microsoft access driver (*.mdb)};dbq=".getcwd()."\\#test.mdb"); 
	//$conn = new PDO("odbc:driver={microsoft access driver (*.mdb)};dbq=".realpath("access.mdb")) or die("Connect Error");
	function jsonStr($status,$content){
		if ($status){
			$jsonStr='{"hasError":true,'. $content .'}';
		}else{
			$jsonStr='{"hasError":false,'. $content .'}';
		}
		return $jsonStr;
	}
	$parNum = count($_GET);/*判断参数个数*/
	if ($parNum<1) {$parNum=count($_POST);}
	/*处理逗号隔开的数值ID*/
	$did=isset($_REQUEST["did"]) ? $_REQUEST["did"] : 0;
	$did=str_replace(" ",",",$did);
	$did1=array_filter(explode(",",$did));
	$did="0";
	foreach ($did1 as $var){
		if (is_numeric($var)){
			$did.= "," . $var;
		}
	}
	//die($did);
	/*}*/
	$id=isset($_REQUEST["id"]) ? $_REQUEST["id"] : 0;
	if (!is_numeric($id)){$id=0;}
	$rid=isset($_REQUEST["rid"]) ? $_REQUEST["rid"] : 0;
	if (!is_numeric($rid)){$rid=0;}
	$name=isset($_REQUEST["name"]) ? $_REQUEST["name"] : "";
	$manager=isset($_REQUEST["manager"]) ? $_REQUEST["manager"] : "";
	$num=isset($_REQUEST["num"]) ? $_REQUEST["num"] : 0;
	if (!is_numeric($num)){$num=0;}
	
	/*{分页查询*/
	$pageNumber=isset($_REQUEST["pageNumber"]) ? $_REQUEST["pageNumber"] : 0;
	if (!is_numeric($pageNumber)){$pageNumber=0;}
	if (!$pageNumber && $parNum<1){$pageNumber=1;}/*没有传参，page未传 用作满足执行查询*/
	$pageSize=isset($_REQUEST["pageSize"]) ? $_REQUEST["pageSize"] : 10;
	$pagea=($pageNumber-1)*$pageSize;
	$order =isset($_REQUEST["order"]) ? $_REQUEST["order"] : "id desc";
	$sort="";
	if ($order!="id desc"){
		if ($order!="id"){
			$order="t_" . $order;
		}
		$sort =isset($_REQUEST["sort"])=="desc" ? $_REQUEST["sort"] : "asc";
	}
	$orderBy="";
	$field=Array("t_name","t_manager","t_num","id","id desc");
	if (in_array($order, $field)){
		$orderBy=' order by ' . $order . ' ' . $sort;
	}
	/*}*/
	if (!isset($_REQUEST["did"]) && !$pageNumber & !isset($_REQUEST["id"])){
		if (trim($name)=="" && !$hasError){
			$msg="名称不能为空！";
			$code=1;
			$hasError=true;
		}else if(trim($manager)=="" && !$hasError){
			$msg="管理人不能为空！";
			$code=2;
			$hasError=true;
		}else if((trim($num)=="" || !is_numeric($num)) && !$hasError){
			$msg="数量不能为空！" . is_numeric($num);
			$code=3;
			
			$hasError=true;
		}else if ( (int) $num<1){
			$msg="数量必须是正整数";
			$code=301;
			$hasError=true;
		}
	}
	if ($hasError){
		$content='"errors":[{"msg":"'.$msg.'","code":'. $code .'}]';
	}else{
		$objstr="";
		if ($pageNumber){
		/*优先分页查询*/
			$res = $conn->query("SELECT * FROM t_class $orderBy Limit $pagea,$pageSize",PDO::FETCH_ASSOC);
			//$res = $conn->query("SELECT TOP $pageSize * FROM (SELECT TOP ".$pageSize * $pageNumber." * FROM t_class ORDER BY id DESC) ORDER BY id ASC",PDO::FETCH_ASSOC);
			$recordNumber = $res->rowCount();
			$recordCount = $conn->query("select COUNT(*) from t_class")->fetchColumn();    //取得数据总数
			$pageCount=ceil($recordCount/$pageSize);
			
			$obj=new stdClass();
			/*
			echo '每页'.$pageSize."条<hr>";
			echo '当'.$pageCount."页<hr>";
			echo '共'.$recordCount.'条<hr>';
			echo '第'.$pageNumber.'页<hr>';
			echo '共'.$pagenum.'页<hr>';
			*/
			$k=0;
			$objstr="";
			foreach ($res as $row) {
				// $row是一个关联数组，可以直接显示，如$row['id']
				$obj->id = $row['Id'];
				$obj->name = $row['t_name'];
				$obj->manager = $row['t_manager'];
				$obj->num = $row['t_num'];
				
				if ($k>0) {$objstr.=",";}
				$k++;
				$objstr.=json_encode($obj,JSON_UNESCAPED_UNICODE);
			}
			$content='"list":[' . $objstr . ']';
			$content.=',"pageNumber":'.$pageNumber;
			$content.=',"pageSize":'.$pageSize;
			$content.=',"pageCount":'.$pageCount;
			$content.=',"recordNumber":'.$recordNumber;
			$content.=',"recordCount":'.$recordCount;
			if ($recordCount<1){
				$content.=',"msg":"未找到相关数据！"';
			}
		}else if(isset($_REQUEST["id"])){
			$res = $conn->query("SELECT * FROM t_class where id=".$id,PDO::FETCH_ASSOC);
			$recordNumber = $res->rowCount();
			if ($recordNumber==1){
				$obj=new stdClass();
				foreach ($res as $row) {
				$obj->id = $row['Id'];
				$obj->name = $row['t_name'];
				$obj->manager = $row['t_manager'];
				$obj->num = $row['t_num'];
				$objstr.=json_encode($obj,JSON_UNESCAPED_UNICODE);
				$content='"list":' . $objstr;
				}
			}else{
				$content='"errors":[{"msg":"数据异常或不存在","code":1}]';
			}
			
		}else if (isset($_REQUEST["did"])){
		/*再次有did删除*/
			$sql='delete from t_class where id in('. $did .')';
			$res=$conn->exec($sql);
			//echo '影响行数：'.$res;
			if ($res>0){
				$content='"msg":"'.$res.'条数据删除成功","code":0';
			}else{
				$hasError=true;
				$msg="无相关记录，未删除数据！";
				$code=1;
				$content='"errors":[{"msg":"'.$msg.'","code":'. $code .'}]';
			}
		}else if($rid>0 && !isset($_REQUEST["did"])){
		/*然后有ID值修改*/
			$sql='update t_class set t_name="'.$name.'",t_manager="'.$manager.'",t_num='.$num.' where id in('.$rid.')';
			$res=$conn->exec($sql);
			//echo '影响行数：'.$res;
			if ($res>0){
				$content='"msg":"'.$res.'条数据修改成功","code":0';
			}else{
				$hasError=true;
				$msg="数据无变化或记录已失效，未修改数据！";
				$code=1;
				$content='"errors":[{"msg":"'.$msg.'","code":'. $code .'}]';
			}
		}else if(!isset($_REQUEST["id"]) && !isset($_REQUEST["did"])){
		/*无ID就新增*/
		    $sql = "INSERT INTO t_class (t_name, t_manager, t_num)
		    VALUES ('$name', '$manager', $num)";
		    $conn->exec($sql);
			$content='"msg":"数据新增成功","code":0';
		}else{
			$content='"msg":"参数错误","code":1';
		}
	}
	die(jsonStr($hasError,$content));
}

catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }

$conn = null;
?>