<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>  
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
	   <s:form action="user!login.action" namespace="/">  
        <s:textfield name="user.uname" label="username"></s:textfield>  
        <s:password name="user.pwd" label="password"></s:password>  
        <div id="login_button">&nbsp;   
            <input type="submit" value="login"/>   
        </div>  
        <div  id="register_button">  
            <input type="button" value="register"/>  
        </div>  
  
      </s:form> 

</body>
</html>
