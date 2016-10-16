$(function() {
	load_list(1, 6);
});

function load_list(pageNum, pageSize) {
	if(pageNum == null) {
		pageNum = 1;
	}
	if(pageSize == null) {
		pageSize = 6;
	}
	$.ajax({
		type: "get",
		url: "/ptl_ajax/api/index.php?",
		async: true,
		data: {
			pageNumber: pageNum,
			pageSize: pageSize
		},
		success: function(data) {
			var list = data.list;
			var htmlCode = "";
			$.each(list, function() {
				htmlCode += '<tr>' +
					'<td>' + this.id + '</td>' +
					'<td>' + this.name + '</td>' +
					'<td>' + this.manager + '</td>' +
					'<td>' + this.num + '</td>' +
					'<td><a href="javascript:;">修改</a>' +
					'<a href="javascript:;">删除</a>' +
					'</td>' +
					'</tr>'
			});
			$("#list tbody").html(htmlCode);
			htmlCode = "";
			for(var i = 0; i < data.pageCount; i++) {
				htmlCode += '<span page_num=' + i + '>' + i + '</span>';
			}
			$("#pageNum").html(htmlCode);
		}
	});
}