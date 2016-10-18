<?php
    $con = mysql_connect("localhost", "root", "root");
    if (!$con) {
        die("链接数据库错误！");
    }

    mysql_query("set names utf8");
    mysql_select_db("chat", $con);
    ?>