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

/*添加修改窗口样式*/
.update_data {
	display: none;
	position: absolute;
	right: 10px;
	bottom: 10px;
	width: 300px;
	min-height: 100px;
	background: #FFF;
	border: 1px solid #CCCCCC;
	border-radius: 4px;
	overflow: hidden;
}

.update_data .title {
	text-align: center;
	height: 40px;
	line-height: 40px;
	border-bottom: 1px solid #EEE;
	background: #f3f3f3;
}

.update_data .content {
	margin: 20px;
}

.update_data .content>div {
	margin-bottom: 10px;
}

.update_data .content>div label {
	display: inline-block;
	width: 70px;
	text-align: right;
}

.update_data .submit {
	text-align: center;
	margin-bottom: 20px;
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
				<td colspan="5"><a id="add">添加</a>
					<div id="pageNum" class="pageNum"></div></td>
			</tr>
		</tfoot>
	</table>
	<div id="update_data" class="update_data">
		<div class="title">新增班级信息</div>
		<div class="content">
			<div>
				<label>名称：</label><span><input id="c_name" type="text" />
				</span>
			</div>
			<div>
				<label>班主任：</label><span><input id="c_manager" type="text" />
				</span>
			</div>
			<div>
				<label>人数：</label><span><input id="c_num" type="text" />
				</span>
			</div>
		</div>
		<div class="submit">
			<button id="update_data_btn" type="button">提交</button>
			<button id="cancel_btn" type="button">取消</button>
		</div>
	</div>
</body>
</html>
