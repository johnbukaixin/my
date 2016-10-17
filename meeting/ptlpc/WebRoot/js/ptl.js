/**
 * 项目的公共JS文件
 */

(function($) {
	/**
	 * 加载字典表数据
	 */
	$.loadDict = function(type, id,defaultValue) {
		// 获取字典表数据
		$.getJSON("dict.do", "operation=load&type=" + type, function(data) {
			// 获取要操作的下拉列表
			var select = $("#" + id);
			// 开始遍历字典数据
			for (var i = 0; i < data.length; i++) {
				// 开始拼接下拉选项
				select.append("<option value='" + data[i].value + "'>" + data[i].name + "</option>");
			}
			if(defaultValue!=null){
				select.val(defaultValue);
			}
		});
	}

})($);