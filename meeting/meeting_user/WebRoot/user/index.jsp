<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<base href="<%=basePath%>">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>

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
	<div id="search_bar">
		<div class="box">
					<form action="user.do">
			<div class="box_border">
				<input type="hidden" name="operation" value="search">
					<div class="box_top">
						<b class="pl15">搜索</b>
					</div>
					<div class="box_center pt10 pb10">
						<table class="form_table" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td>姓名</td>
								<td><input type="text" name="uname" class="input-text lh25"
									size="10">
								</td>
								<td>性别</td>
								<td><span class="fl">
										<div class="select_border">
											<div class="select_containers ">
												<select name="gender" class="select">
													<option value="">--请选择--</option>
													<option value="1">男</option>
													<option value="2">女</option>
												</select>
											</div>
										</div> </span>
								</td>
								<td><input type="submit" name="button"
									class="btn btn82 btn_search" value="查询" onclick="search();">
								</td>
							</tr>
						</table>
						</form>
			</div>
		</div>
	</div>
	<div id="table">
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="list_table">
			<tr>
				<th>序号</th>
				<th>用户名</th>
				<th>真实姓名</th>
				<th>电子邮箱</th>
				<th>性别</th>
				<th>年龄</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${userList }" var="each" varStatus="vars">
				<tr class="tr">
					<td class="td_center">${vars.count }</td>
					<td class="td_center">${each.uname }</td>
					<td class="td_center">${each.realname }</td>
					<td class="td_center">${each.email }</td>
					<td class="td_center">${each.gender==1?"男":"女" }</td>
					<td class="td_center">${each.age }</td>
					<td class="td_center"><input type="button"
						class="ext_btn ext_btn_success" value="修改" onclick="doUserUpdate('${each.id}');"> <input
						type="button" onclick="doUserDelete('${each.id}');"
						class="ext_btn ext_btn_error" value="删除">
					</td>
				</tr>
			</c:forEach>

		</table>
		<div>${msg }</div>
		<div class="page" style="text-align:center">
			<div class="pagination">
				<ul>
					<li class="first-child"><a href="#">首页</a>
					</li>
					<li class="disabled"><span>上一页</span>
					</li>
					<li class="active"><span>1</span>
					</li>
					<li><a href="#">2</a>
					</li>
					<li><a href="#">下一页</a>
					</li>
					<li class="last-child"><a href="#">末页</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function doUserDelete(id) {
		window.location.href = "user.do?operation=delete&id=" + id;
	}
	function search() {
		window.location.href = "user.do?operation=search";
	}
	function doUserUpdate(id){
	   window.location.href = "user.do/update.jsp?operation=update&id=" + id;
	}
</script>
</html>
