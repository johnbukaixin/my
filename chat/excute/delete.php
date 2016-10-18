<?php
   include "conn.php";

    $id = $_GET['id'];

    $query = "delete from article where id = $id";
    $result = mysql_query($query);

    if ($result) {
        echo "删除成功";
        header('Location: index.php');
    } else {
        echo "删除失败";
    }




?>