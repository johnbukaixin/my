$(function() {
	load_list(1, 6);
	$("#pageNum").on("click", "span", function() {
		var pageNum = $(this).attr("page_num");
		var pageSize = $("#pageNum").attr("data-size");
		load_list(pageNum, pageSize);
	});

	/*
	 * 点击显示添加div
	 */
	$("#add").on("click", function() {
		$("#update_data").show().find(".title").text("新增班级信息");
		$("#update_data_btn").removeAttr("data-id");
	});
	/**
	 * 点击取消
	 */
	$("#cancel_btn").on("click",function(){
		$("#update_data").hide();
		$("#c_name,#c_manager,#c_num").val("");
	});
	/**
	 * 增加操作
	 */
	$("#update_data_btn").on("click", function() {
		var id = $(this).attr("data-id");
		var dataValue = "";
		if (id == null) {
			dataValue = {
				name : $("#c_name").val(),
				manager : $("#c_manager").val(),
				num : $("#c_num").val(),
				operation : "add"
			};
		} else {
			dataValue = {
				id : id,
				name : $("#c_name").val(),
				manager : $("#c_manager").val(),
				num : $("#c_num").val(),
				operation : "update"
			};
		}

		$.ajax({
			type : "post",
			url : "ajax.do",
			data : dataValue,
			async : true,
			dataType : "json",
			success : function(data) {
				if (data.msg != null) {
					alert(msg);
				}
				$("#c_name,#c_manager,#c_num").val("");
				load_list(pageNum, $("#pageNum").attr("data-size"));
				$("#add").hide();
			}
		});

	});
	/**
	 * 修改操作,点修改其实是先做查询
	 */
	$("#list").on("click", ".update", function() {
		$("#update_data").show().find(".title").text("修改班级信息");
		var id = $(this).attr("data-id");
		var dataValue={"id":id,"operation":"edit1"};
        $.ajax({
        	type:"get",
        	url:"ajax.do",
        	data:dataValue,
        	dataType:"json",
        	success:function(data){
        		$("#c_name").val(data.name);
        		$("#c_manager").val(data.manager);
        		$("#c_num").val(data.num);
        	}
        });
	});
	
	$("#list").on("click",".delete",function(){
		var id=$(this).attr("data-id");
		var dataValue={"id":id,"operation":"delete"};
		$.ajax({
		    type:"get",
		    url:"ajax.do",
		    data:dataValue,
		    dataType:"json",
		    success:function(data){
		    	load_list(pageNum, $("#pageNum").attr("data-size"));
		    }
		});
	});
});
/**
 * 分页加载数据
 * 
 * @param pageNum
 * @param pageSize
 */
function load_list(pageNum, pageSize) {
	if (pageNum == null) {
		pageNum = 1;
	}
	if (pageSize == null) {
		pageSize = 6;
	}
	$.getJSON("ajax.do","operation=load&num=" + pageNum + "&size=" + pageSize,function(data) {
						var list = data.list;
						htmlCode = "";
						$.each(list,function() {
						    htmlCode += '<tr><td>'+ this.id+ '</td><td>'+ this.name+ '</td><td>'+ this.manager+ '</td><td>'
													+ this.num
													+ '</td><td><a href="javascript:;" class="update" data-id='
													+ this.id
													+ '>修改</a>&nbsp;<a href="javascript:;" class="delete" data-id='+this.id+'>删除</a></td></tr>';
											$("#list tbody").html(htmlCode);
										});
						htmlCode = "";
						for ( var i = 0; i < data.pageCount; i++) {
							htmlCode += '<span page_num=' + (i + 1) + '>'
									+ (i + 1) + '</span>';
						}
						$("#pageNum").html(htmlCode)attr({"data-num":page_number,"data-size":page_size});;
					});
}
