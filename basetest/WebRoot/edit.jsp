<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
     <style type="text/css">
       #content{
           width:400px;
           height:400px;
           text-align:center;
       }
       .text{
           height:30px;
       }
    </style>
  </head>
  
  <body>
    <div id="content">
       <h1>用户修改</h1>
        <form action="user.do" method="post">
             <input type="hidden" name="operation"value="edit2">
             <input type="hidden" name="id" value="${user.id }">
             <div class="text">username:<input name="uname" value="${user.uname }"/></div>
             <div class="text">password:<input name="pwd" value="${user.pwd }" /></div>
             <input type="submit" value="register">
             <input type="reset" value="reset"> 
        </form>
    </div>
  </body>
</html>
