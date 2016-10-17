<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/ptl.js"></script>
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