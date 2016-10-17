<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
  </head>
  
  <body>
    <div>
       <form action="user.do" method="post">
          <input type="text" name="uname" class="input-text lh25">
          <input type="text" name="realname"class="input-text lh25">
          <input type="text" name="email"  class="input-text lh25">
          <select name="gender" class="select">
				<option value="">--请选择--</option>
				<option value="1">男</option>
				<option value="2">女</option>
		</select>
          <input type="date" name="updatetime"class="input-text lh25">
          <input type="submit" value="修改">
       </form>
    </div>
  </body>
</html>
