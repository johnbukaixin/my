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
<base href="<%=basePath%>">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript">
	$(function() {
		$(".sideMenu").slide({
			titCell : "h3",
			targetCell : "ul",
			defaultIndex : 0,
			effect : 'slideDown',
			delayTime : '500',
			trigger : 'click',
			triggerTime : '150',
			defaultPlay : true,
			returnDefault : false,
			easing : 'easeInQuint',
			endFun : function() {
				scrollWW();
			}
		});
		$(window).resize(function() {
			scrollWW();
		});
		$(".classon").click(function() {
			$("li").removeClass("on");
			this.parentNode.className = "on";
		});
	});
	function scrollWW() {
		if ($(".side").height() < $(".sideMenu").height()) {
			$(".scroll").show();
			var pos = $(".sideMenu ul:visible").position().top - 38;
			$('.sideMenu').animate({
				top : -pos
			});
		} else {
			$(".scroll").hide();
			$('.sideMenu').animate({
				top : 0
			});
			n = 1;
		}
	}

	var n = 1;
	function menuScroll(num) {
		var Scroll = $('.sideMenu');
		var ScrollP = $('.sideMenu').position();
		/*alert(n);
		alert(ScrollP.top);*/
		if (num == 1) {
			Scroll.animate({
				top : ScrollP.top - 38
			});
			n = n + 1;
		} else {
			if (ScrollP.top > -38 && ScrollP.top != 0) {
				ScrollP.top = -38;
			}
			if (ScrollP.top < 0) {
				Scroll.animate({
					top : 38 + ScrollP.top
				});
			} else {
				n = 1;
			}
			if (n > 1) {
				n = n - 1;
			}
		}
	}
	/**
	 * 改变当前位置对应的内容
	 */
	function changeHereArea(mk, oper) {
		document.getElementById("here_area").innerHTML = "当前位置：" + mk + ">>" + oper;
	}
</script>
<title>后台首页</title>
</head>
<body>
	<div class="top">
		<div id="top_t">
			<div id="logo" class="fl">
			</div>
			<div id="photo_info" class="fr">
				<div id="photo" class="fl">
					<a href="#">
						<images src="images/a.png" alt="" width="60" height="60">
					</a>
				</div>
				<div id="base_info" class="fr">
					<div class="help_info">
						<a href="javascript:void(0);" id="hp">&nbsp;</a>
						<a href="javascript:void(0);" id="gy">&nbsp;</a>
						<a href="javascript:void(0);" onclick="doUserLogout();" id="out">&nbsp;</a>
					</div>
					<div class="info_center">
						${loginUser.nickname } <span id="nt">通知</span><span><a href="#" id="notice">3</a></span>
					</div>
				</div>
			</div>
		</div>
		<div id="side_here">
			<div id="side_here_l" class="fl"></div>
			<div id="here_area" class="fl">当前位置：个人信息>>首页</div>
		</div>
	</div>
	<div class="side">
		<div class="sideMenu" style="margin:0 auto">
			<h3>个人信息</h3>
			<ul>
				<li class="on"><a href="main.jsp" onclick="changeHereArea('个人信息','首页');" target="right" class="classon">首页</a></li>
			</ul>
			<h3>用户管理</h3>
			<ul>
				<li><a href="user.sxt?oper=show" onclick="changeHereArea('用户模块','显示用户信息');" target="right" class="classon">显示用户信息</a></li>
				<li><a href="user/add.jsp" onclick="changeHereArea('用户模块','新增用户信息');" target="right" class="classon">新增用户信息</a></li>
			</ul>
			<h3>成员管理</h3>
			<ul>
				<li><a href="member.do?operation=show" onclick="changeHereArea('成员管理','显示成员信息');" target="right" class="classon">显示成员信息</a></li>
				<li><a href="member/add.jsp" onclick="changeHereArea('成员管理','新增成员信息');" target="right" class="classon">新增成员信息</a></li>
			</ul>
		</div>
	</div>
	<div class="main">
		<iframe name="right" id="rightMain" src="main.jsp" frameborder="no" scrolling="auto" width="100%" height="auto" allowtransparency="true"></iframe>
	</div>
	<div class="bottom">
		<div id="bottom_bg">Copyright 2007-2016 北京尚学堂科技有限公司 京ICP备13018289号-1 京公网安备11010802015183 sxt@bjsxt.com</div>
	</div>
</body>
</html>