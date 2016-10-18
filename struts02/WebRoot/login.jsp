<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    <style>
       div{
         width:100px;
         height:100px;
         text-align:center;
         position:absolute;
         top:30px;
         left:40%;
       }
       table{
         width:100px;
         text-align:center;
       }
       table tr{
         width:100px;
       }
      table tr td .label{
          width:30px;
       }
    </style>
  </head>
  
  <body>
      <div>
        <s:form action="user!login.action" method="post" namespace="/">
             <table>
             <tr><th colspan="2"><h2>用户登录</h2></th></tr>
            <tr>
               <td class="label">username：</td>
               <td><input type="text" name="user.uname"/></td>
            </tr>
            <tr>
               <td class="label">password：</td>
               <td><input type="password" name="user.pwd"/></td>
            </tr>
            <tr>
               <td align="right"><input type="submit" value="登录" /></td>
               <td align="left"><input type="button" value="注册" onclick="register();"/></td>
            </tr>
         </table>
        </s:form>
      </div>
  </body>
  <script type="text/javascript">
    function register(){
      window.location.href="${pageContext.request.contextPath}/register.jsp";
    }
  </script>
</html>
