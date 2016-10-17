<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>遇见课堂后台管理中心</title>
</head>
<body>
	<div id="login_top">
		<div id="welcome">欢迎使用遇见课堂后台管理中心</div>
		<div id="back">
			<a href="javascript:void(0);">返回首页</a>
			&nbsp;&nbsp; | &nbsp;&nbsp;
			<a href="javascript:void(0);">帮助</a>
		</div>
	</div>
	<div id="login_center">
		<div id="login_area">
			<div id="login_form">
				<form action="user.do" method="post" autocomplete="off">
					<input type="hidden" name="operation" value="login" />
					<div id="login_tip">用户登录&nbsp;&nbsp;UserLogin</div>
					<div>
						<input type="text" class="username" name="uname" placeholder="请输入您的用户名">
					</div>
					<div>
						<input type="password" class="pwd" name="pwd" placeholder="请输入您的密码">
					</div>
					<div id="btn_area">
						<input type="submit" name="submit" id="sub_btn" value="登&nbsp;&nbsp;录">
						&nbsp;&nbsp;
						<input type="text" class="verify">
						<images src="images/login/verify.png" alt="" width="80" height="40">
						<br />
						<font style="color: red;height: 30px;line-height: 30px;font-size: 20px;">${msg }</font>
						<c:remove var="msg" scope="session" />
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="login_bottom">Copyright 2007-2016 遇见课堂</div>
</body>
</html>