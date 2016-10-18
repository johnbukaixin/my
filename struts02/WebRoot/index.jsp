<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
</head>

<body>
	<h1>欢迎 ${loginUser.uname }登陆成功</h1>
	<h3>
		<a href="user!show.action">点我显示信息</a>
	</h3>
	<table id="list" cellpadding="8" border="1" bordercolor="#ccc"style="border-collapse: collapse;">
		<tr style="background: #eee;">
			<td>id</td>
			<td>用户名</td>
			<td>性别</td>
			<td>生日</td>
			<td>操作</td>
		</tr>
		<s:iterator value="#session.userList" id="user" status="status">
			<tr align="center">
				<td><s:property value="#status.index+1" /></td>
				<td><s:property value="#user.uname" /></td>
				<td><s:property value="#user.gender" /></td>
				<td><s:property value="#user.birthday" /></td>
				<!-- //第一种方式,在标签内使用标签时用% -->
				<td><s:a href="register.jsp">添加</s:a>  
				<!-- //第二种方式:使用标签解决  -->
				<s:a href="user!edit.action?user.id=%{id}">编辑</s:a>    
                <s:url id="idUrl" action="user!delete.action">
					<s:param name="user.id" value="%{id}"></s:param>
				</s:url>
				<s:a href="%{idUrl}">删除</s:a>  
              <!--  //第三种:直接加入   -->
               <a href="<s:url action='user!delete.action'>
                    <s:param name='user.id' value='id'></s:param>
                 </s:url>">删除2</a>
				</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
