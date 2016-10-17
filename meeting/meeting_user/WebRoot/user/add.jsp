<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/user.js"></script>

<script type="text/javascript">
	$(function() {
		$(".list_table").colResizable({
			liveDrag : true,
			gripInnerHtml : "<div class='grip'></div>",
			draggingClass : "dragging",
			minWidth : 30
		});

	});
</script>
<title>Document</title>
</head>
<body>
	<div id="forms">
		<div class="box">
			<div class="box_border">
				<div class="box_top">
					<b class="pl15">新增用户信息</b>
				</div>
				<div class="box_center">
					<form action="user.do" method="post" class="jqtransform">
						<input type="hidden" name="operation" value="add" /> <input
							type="hidden" name="form2bean" value="user" />
						<table class="form_table pt15 pb15" width="100%" border="0"
							cellpadding="0" cellspacing="0">
							<tr>
								<td class="td_right">用户名：</td>
								<td><input id="uname" type="text" name="uname"
									placeholder="6-12位字母数字下划线用户名" class="input-text lh30" size="40"
									onblur="testUname();"> <span id="unameSpan"></span>
								</td>
							</tr>
							<tr>
								<td class="td_right">密码：</td>
								<td class=""><input id="pwd" type="password" name="pwd"placeholder="密码必须为6-8位"
									class="input-text lh30" size="40" onblur="testPwd();"><span id="pwdSpan"></span>
								</td>
							</tr>
							<tr>
								<td class="td_right">真实姓名：</td>
								<td class=""><input id="realname" type="text" name="realname" placeholder="真实姓名为2-6位汉字"
									class="input-text lh30" size="40" onblur="testRealName();"><span
									id="realnameSpan"></span>
								</td>
							</tr>
							<tr>
								<td class="td_right">电子邮箱：</td>
								<td class=""><input id="email"type="text" name="email"
									class="input-text lh30" size="40" onblur="testEmail();"><span id="emailSpan"></span>
								</td>
							</tr>
							<tr>
								<td class="td_right">年龄：</td>
								<td class=""><input id="age"type="text" name="age"placeholder="请输入你的年龄"
									class="input-text lh30" size="40" onblur="testAge();"><span id="ageSpan"></span>
								</td>
							</tr>
							<tr>
								<td class="td_right">性别：</td>
								<td class=""><input type="radio" name="gender" value="1"
									checked="checked"> 男 <input type="radio" name="gender"
									value="2"> 女</td>
							</tr>
							<tr>
								<td class="td_right">&nbsp;</td>
								<td class=""><input type="submit"
									class="btn btn82 btn_save2" value="保存"> <input
									type="reset" class="btn btn82 btn_res" value="重置">
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
