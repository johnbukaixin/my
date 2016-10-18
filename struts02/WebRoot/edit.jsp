<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>register</title>
  </head>
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
  <body>
     <div>
        <br><s:form action="user!edit2.action" method="post" namespace="/">
        <input type="hidden" name="user.id" value='<s:property value="#session.exUser.id"/>'/>
             <table>
             <tr><th colspan="2"><h2>用户修改</h2></th></tr>
            <tr>
               <td class="label">username：</td>
               <td><input type="text" name="user.uname" value='<s:property value="#session.exUser.uname"/>'/></td>
            </tr>
            <tr>
               <td class="label">password：</td>
               <td><input type="password" name="user.pwd" value='<s:property value="#session.exUser.uname"/>'/></td>
            </tr>
             <tr>
               <td class="label">birthday：</td>
               <td><input type="text" name="user.birthday"value='<s:property value="#session.exUser.birthday"/>'/></td>
            </tr>
             <tr>
               <td class="label">gender：</td>
               <td><input type="radio" name="user.gender" value="1" checked='<s:property value="#session.exUser.gender"/>==1?checked:""'/>男
                   <input type="radio" name="user.gender" value="2" checked='<s:property value="#session.exUser.gender"/>==1?checked:""'/>女
               </td>
            </tr>
            <tr>
               <td align="right"><input type="submit" value="修改" /></td>
               <td align="left"><input type="reset" value="重置"/></td>
            </tr>
         </table>
        </s:form>
      </div>
  </body>
</html>
