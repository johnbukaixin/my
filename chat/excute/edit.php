<?php

$id = $_GET['id'];
include "conn.php";
   

    $result = mysql_query("select * from article where id = $id");

    $result2 = mysql_fetch_array($result);


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="./css.css">
</head>
<body>
    <div class="write"> 
        <form action="./modify.php" method="post">
            <textarea name="content" placeholder="请输入留言内容"><? echo $result2['content']?></textarea>
            <input type="text" name="name" placeholder="请输入姓名" value="<? echo $result2['name']?>">
            <input type="hidden" name="id" value="<? echo $result2['id'];?>">
            <input type="submit">
        </form>
    </div>
</body>
</html>





