<?php
   include "conn.php";


    if (empty($_POST['content'])) {
        die("请填写内容");
    }

    if (empty($_POST['name'])) {
        die("请填写姓名");
    }
    $content = $_POST['content'];
    $name = $_POST['name'];
    $time = time();

    $query = "INSERT INTO article (content, name, time)  VALUES ('$content', '$name', $time)";
    $result = mysql_query($query);

    if ($result) {
        echo "插入成功";
        header('Location: index.php');
    } else {
        echo "插入失败";
    }




?>