<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="zh-CN">
<head>

<base href="<%=basePath%>">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>北京尚学堂学生管理系统</title>
</head>
<body>
	<div id="login_top">
		<div id="welcome">北京尚学堂学生管理系统</div>
		<div id="back">
			<a href="javascript:;">返回首页</a>&nbsp;&nbsp; | &nbsp;&nbsp; <a href="javascript:;">帮助</a>
		</div>
	</div>
	<div id="login_center">
		<div id="login_area">
			<div id="login_form">
				<form action="user.do" method="post" >
					<input type="hidden" name="operation" value="login" />
					<div id="login_tip">用户登录&nbsp;&nbsp;UserLogin</div>
					<div>
						<input type="text" class="username" name="uname" autocomplete="off" placeholder="请输入您的用户名">
					</div>
					<div>
						<input type="password" class="pwd" name="pwd" autocomplete="off" placeholder="请输入您的密码">
					</div>
					<div id="btn_area">
						<input type="submit" name="submit" id="sub_btn" value="登&nbsp;&nbsp;录">&nbsp;&nbsp; <input type="text" class="verify"> <img src="images/login/verify.png" alt="" width="80" height="40">
					</div>
					<div style="height: 50px;line-height: 50px;color: orange;">${msg }</div>
					<c:remove var="msg" scope="session" />
				</form>
			</div>
		</div>
	</div>
	<div id="login_bottom">版权所有</div>
</body>
</html>