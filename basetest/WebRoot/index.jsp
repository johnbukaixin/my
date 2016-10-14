<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>show</title>
<style type="text/css">
tr {
	border: 1px;
}
</style>
</head>

<body>
	<div>
		<a onclick="show();">点我显示信息</a> <br>
		<table>
			<tr>
				<th>序号</th>
				<th>用户名</th>
				<th>密码</th>
				<th>操作</th>
			</tr>
			<c:if test="${!empty list }">
				<c:forEach items="${list }" var="user" varStatus="vs">
					<tr>
						<td>${vs.index }</td>
						<td>${user.uname }</td>
						<td>${user.pwd }</td>
						<td><input type="button" value="删除"
							onclick="doDelete(${user.id});" />
						</td>
						<td><input type="button" value="修改"
							onclick="edit(${user.id});" />
						</td>
					</tr>
				</c:forEach>
			<tr>
			    <td><a href="add.jsp">添加</a></td>
			</tr>
			</c:if>
			<c:remove var="list" scope="session" />
		</table>
	</div>
	<div>
		<form action="user.do" method="get">
			<input name="operation" value="check" />
			<textarea rows="5" cols="10" name="content">请输入想说的话
      </textarea>
			<input type="submit" value="提交" />
		</form>

	</div>
</body>
<script type="text/javascript">
      function show(){
          window.location.href="user.do?operation=show";
      }
      
     function doDelete(id){
         window.location.href="user.do?operation=delete&id="+id;
     }
     function edit(id){
         window.location.href="user.do?operation=edit&id="+id;
     }
  </script>
</html>
