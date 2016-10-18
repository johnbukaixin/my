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
    $id = $_POST['id'];
    
    $query = "UPDATE article SET content = '$content', name = '$name'  WHERE id = $id";
    $result = mysql_query($query);

    if ($result) {
        echo "修改成功";
        header('Location: index.php');
    } else {
        echo "修改失败";
    }




?>