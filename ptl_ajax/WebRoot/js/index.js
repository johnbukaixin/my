$(function() {
	load_list(1, 6);
	//点分页页码时加载数据，采用事件委托?????
	$("#pageNum").on("click","span",function(){
		var pageNum=$(this).attr("page_num");
		var pageSize=$("#pageNum").attr("data-size");
		load_list(pageNum,pageSize );
	});
});

function load_list(pageNum, pageSize) {
	if (pageNum == null) {
		pageNum = 1;
	}
	if (pageSize == null) {
		pageSize = 6;
	}
	$.getJSON("ajax.do", "operation=load&num=" + pageNum + "&size=" + pageSize,
			function(data) {
				var list = data.list;
				htmlCode = "";
				$.each(list, function() {
					htmlCode += '<tr><td>' + this.id + '</td><td>'
							+ this.name + '</td><td>' + this.manager
							+ '</td><td>' + this.num + '</td><td><a href="javascript:;">修改</a>&nbsp;<a href="javascript:;">删除</a></td></tr>';
					$("#list tbody").html(htmlCode);

				});
				htmlCode = "";
				for ( var i = 0; i < data.pageCount; i++) {
					htmlCode += '<span page_num=' + (i +1)+ '>' + (i+1) + '</span>';
				}
				$("#pageNum").html(htmlCode);
			});
}
