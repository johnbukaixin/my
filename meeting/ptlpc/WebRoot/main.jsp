<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!doctype html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>后台首页面</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<style type="text/css">
.container {
	background-image: url("images/ds_u0.png");
	background-repeat: no-repeat;
	background-position: center;
	height: 300px;
}
</style>
</head>
<body>
	<div class="container"></div>
</body>
</html>
