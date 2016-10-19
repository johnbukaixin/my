<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>demo</title>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<style type="text/css">
.pageNum {
	text-align: right;
}

.pageNum span {
	display: inline-block;
	min-width: 20px;
	height: 20px;
	line-height: 20px;
	border: 1px solid #ccc;
	text-align: center;
	font-size: 12px;
	color: #666;
	cursor: pointer;
}

.pageNum span:hover {
	background: #f3f3f3;
	font-weight: bold;
}
</style>
</head>
<body>
	<table id="list" cellpadding="8" border="1" bordercolor="#ccc"
		style="border-collapse: collapse;">
		<thead>
		<tr style="background: #eee;">
			<td>id</td>
			<td>班级名称</td>
			<td>班主任</td>
			<td>人数</td>
			<td>操作</td>
		</tr>
		</thead>
		<tbody>
		</tbody>
		<tfoot>
		  <tr>
		   <td colspan="5">
		    <a href="" id="add">添加</a>
			<div id="pageNum" class="pageNum">
			</div>
			</td>
		</tr>
		</tfoot>
	</table>
</body>
</html>
