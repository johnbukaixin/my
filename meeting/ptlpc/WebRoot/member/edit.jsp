<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh-CN">
<head>
<title>Document</title>
<meta charset="UTF-8">
<base href="<%=basePath%>">
<script type="text/javascript" src="/ptlpc/My97DatePicker/WdatePicker.js"></script>
<%@ include file="../util/rapid.jsp"%>
<%@ include file="../util/base.jsp"%>
<script type="text/javascript">
	$(function() {
		$.loadDict("nation","nation","${updateMember.nation}");
		$.loadDict("zzmm","political","${updateMember.political}");
		$.loadDict("marry","marriage","${updateMember.marriage}");
	});
</script>
</head>
<body>
	<div id="forms">
		<div class="box">
			<div class="box_border">
				<div class="box_top">
					<b class="pl15">成员信息</b>
				</div>
				<div class="box_center">
					<form action="member.do" method="post" class="jqtransform required-validate">
						<input type="hidden" name="operation" value="updateSecond" />
						<input type="hidden" name="id" value="${updateMember.id }">
						<input type="hidden" name="form2bean" value="member" />

						<input type="hidden" name="createtime" value='<fmt:formatDate value="${updateMember.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/>'/>
						<table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td class="td_right">真实姓名：</td>
								<td class="">
									<input type="text" name="realname" value="${updateMember.realname }" class="input-text lh30 required validate-chinese length-range-2-6" size="40">
								</td>
							</tr>
							<tr>
								<td class="td_right">性别：</td>
								<td class="">
									<input type="radio" name="gender" value="1" checked=" ${updateMember.gender }==1?checked:''">
									男
									<input type="radio" name="gender" value="2" checked=" ${updateMember.gender }==2?checked:''">
									女
								</td>
							</tr>
							<tr>
								<td class="td_right">生日：</td>
								<td class="">
									<input type="text" name="birthday" value='<fmt:formatDate value="${updateMember.birthday }" pattern="yyyy-MM-dd" />' class="input-text lh30 Wdate required" size="40" onClick="WdatePicker({isShowWeek:true,readOnly:true,dateFmt:'yyyy-MM-dd',maxDate:'%y-%M-%d'})"/>
								</td>
							</tr>
							<tr>
								<td class="td_right">身份证号：</td>
								<td class="">
									<input type="text" name="idnumber"value="${updateMember.idnumber }" class="input-text lh30 required validate-id-number" size="40">
								</td>
							</tr>
							<tr>
								<td class="td_right">民族：</td>
								<td class="">
									<select name="nation" id="nation" class="select" style="width: 266px;">
									</select>
								</td>
							</tr>
							<tr>
								<td class="td_right">政治面貌：</td>
								<td class="">
									<select name="political" id="political" class="select" style="width: 266px;">
									</select>
								</td>
							</tr>
							<tr>
								<td class="td_right">婚姻状况：</td>
								<td class="">
									<select name="marriage" id="marriage" class="select" style="width: 266px;">
									</select>
								</td>
							</tr>
							<tr>
								<td class="td_right">个人介绍：</td>
								<td class="">
									<textarea name="introduction" cols="30" rows="10" class="textarea length-range-0-40">${updateMember.introduction }</textarea>
								</td>
							</tr>
							<tr>
								<td class="td_right">家庭住址：</td>
								<td class="">
									<input type="text" name="address" value="${updateMember.address }" class="input-text lh30 length-range-0-20" size="80">
								</td>
							</tr>
							<tr>
								<td class="td_right">类型：</td>
								<td class="">
									<input type="radio" name="type" value="s" checked="${updateMember.type }==s?checked:''">
									学生
									<input type="radio" name="type" value="t" checked="${updateMember.type }==t?checked:''">
									教师
								</td>
							</tr>
							<tr>
								<td class="td_right">&nbsp;</td>
								<td class="">
									<input type="submit" class="btn btn82 btn_save2" value="保存">
									<input type="reset" class="btn btn82 btn_res" value="重置">
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
