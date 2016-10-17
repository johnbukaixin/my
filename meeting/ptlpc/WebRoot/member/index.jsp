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
<title>Document</title>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<%@ include file="../util/base.jsp"%>
<style type="text/css">
   .page{
       text-align:right;
   }
   .pagination{
       margin-top:30px;
       margin-right:20px;
   }
</style>
</head>
<body>
	<div class="box">
		<div class="box_border">
			<div class="box_top">
				<b class="pl15">搜索</b>
			</div>
			<div class="box_center pt10 pb10">
				<table class="form_table" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>姓名</td>
						<td>
							<input type="text" name="name" class="input-text lh25" size="20">
						</td>
						<td>性别</td>
						<td>
							<span class="fl">
								<div class="select_border">
									<div class="select_containers ">
										<select name="gender" class="select">
											<option value="">--请选择--</option>
											<option value="1">男</option>
											<option value="2">女</option>
										</select>
									</div>
								</div>
							</span>
						</td>
						<td>
							<input type="button" name="button" class="btn btn82 btn_search" value="查询">
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div id="table">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_table">
			<tr>
				<th width="60">序号</th>
				<th>真实姓名</th>
				<th>性别</th>
				<th>民族</th>
				<th>政治面貌</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${page.list }" var="each" varStatus="vars">
				<tr class="tr">
					<td class="td_center">${vars.count+page.rowStart }</td>
					<td>${each.realname }</td>
					<td class="td_center">${each.gender==1?"男":"女" }</td>
					<td class="td_center">${each.nation }</td>
					<td class="td_center">${each.political }</td>
					<td class="td_center">
						<input type="button" onclick="doUpdate('${each.id}');" class="ext_btn ext_btn_success" value="修改">
						<input type="button" onclick="doDelete('${each.id}');" class="ext_btn ext_btn_error" value="删除">
					</td>
				</tr>
			</c:forEach>
		</table>
		<div class="page">
			<div class="pagination">
				<ul>
					<c:if test="${page.hasPrevious }">
						<li class="first-child"><a href="javascript:void(0);" onclick="doPage(${page.first},${page.size });">首页</a></li>
						<li><a href="javascript:void(0);" onclick="doPage(${page.previous},${page.size });">上一页</a></li>
					</c:if>
					<c:forEach begin="${page.everyStart }" end="${page.everyEnd }" var="each">
						<c:choose>
							<c:when test="${page.num == each }">
								<li class="disabled"><a href="javascript:void(0);" onclick="doPage(${each},${page.size });">${each }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="javascript:void(0);" onclick="doPage(${each},${page.size });">${each }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${page.hasNext }">
						<li><a href="javascript:void(0);" onclick="doPage(${page.next},${page.size });">下一页</a></li>
						<li class="last-child"><a href="javascript:void(0);" onclick="doPage(${page.last},${page.size });">末页</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function doDelete(id) {
		window.location.href = "member.do?operation=delete&id=" + id;
	};
	function doUpdate(id) {
		window.location.href = "member.do?operation=updateFirst&id=" + id;
	};
	function doPage(num, size) {
		window.location.href = "member.do?operation=page&num=" + num + "&size=" + size;
	};
</script>
</html>
