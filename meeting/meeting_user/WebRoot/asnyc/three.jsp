<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>Document</title>
<style>
</style>
</head>
<body>
	<div id="forms">
		<div class="box">
			<div class="box_border">
				<div class="box_top">
					<b class="pl15">省市县三级联动</b>
				</div>
				<div class="box_center">
					<table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td class="td_right">省：</td>
							<td>
								<select id="province" class="select" onchange="testCity();" style="width: 150px;">
								</select>
							</td>
							<td class="td_right">市：</td>
							<td>
								<select id="city" class="select" onchange="testTown();" style="width: 150px;">
								</select>
							</td>
							<td class="td_right">县：</td>
							<td >
								<select id="town" class="select" style="width: 150px;">
								</select>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        testProvince();
    });
    
    
    function testProvince(){
        load("province","0",testCity);
        
    }
    
    function testCity(){
        //alert($("#province").find("option:selected").text());
        load("city",$("#province").val(),testTown);
    }
    
    function testTown(){
       load("town",$("#city").val());
    }
    function load(selectid,parentid,nextarea){
      $.getJSON("area.do","operation=load&parentid="+parentid,function(result){
         var select=$("#"+selectid);
         select.empty();
         for(var i=0;i<result.length;i++){
            select.append("<option value='"+result[i].areaid+"'>"+result[i].name+"</option>");
         }
         if(nextarea!=null){
            nextarea();
         }
      });
         
    }
</script>
</html>

