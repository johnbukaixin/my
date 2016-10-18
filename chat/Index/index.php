<?php
    $con = mysql_connect("localhost", "root", "root");
    if (!$con) {
        die("链接数据库错误！");
    }

    mysql_query("set names utf8");
    mysql_select_db("chat", $con);

    $result = mysql_query("SELECT * FROM article");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>留言</title>
    <link rel="stylesheet" href="./css.css">
</head>
<body>
    <ul class="chat-box">
    <?php    
        while($row = mysql_fetch_array($result))
        {
        ?>
            <li class="chat-item">
                <p>姓名：<?php echo $row["name"]?></p>
               <div class="xianshi"><p >内容：<? echo $row["content"]?></p></div>
                <p><?php echo date("Y-m-d H:i:s", $row["time"])?></p>
                <p><a href="./edit.php?id=<? echo $row['id']?>">修改</a> <a href="./delete.php?id=<? echo $row['id']?>">删除</a></p>
            </li>
    <?php 
    }
    ?>

    </ul>
    <div class="write"> 
        <form action="./insert.php" method="post">
            <textarea name="content" placeholder="请输入留言内容"></textarea>
            <input type="text" name="name" placeholder="请输入姓名">
            <input type="submit">
        </form>
    </div>
    <br>    <br>    <br>    <br>    <br>    <br>    <br>    <br>    <br>
</body>
</html>