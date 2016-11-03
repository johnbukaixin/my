<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<!-- saved from url=(0024)http://www.xinli001.com/ -->
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><link href="./welcome_files/default.css" rel="stylesheet" id="lhgdialoglink">
<!-- 1478003581 -->
<script async="" src="./welcome_files/analytics.js.下载"></script><script type="text/javascript" id="zhuge-js" async="" src="./welcome_files/zhuge-lastest.min.js.下载"></script><script>
var pageName = 'www/index';
var indexAuthUserUrl = "http://www.xinli001.com/ajax/index-auth-user-div.json";
</script>
<base href="<%=basePath%>">
<!--<base target="_blank">--><base href="." target="_blank">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=yes">
<title>壹心理 - 心理学从这里开始</title>
<meta name="keywords" content="壹心理，心理网，心理测试，心理学，心理咨询，爱情测试，心理课程">
<meta name="description" content="壹心理网 - 心理学从这里开始，国内最大的心理学网络服务平台。提供专业、完善的心理健康服务，包括心理咨询、心理课程培训、心理测试、心理杂志等频道，涵盖了职场心理、亲子家庭、两性心理、情绪管理、心灵探索、心理科普等领域。">
<meta property="qc:admins" content="21604337436016410016375">
<link rel="stylesheet" href="./welcome_files/website_2a5ac33f22.css"><script>
            var headerAuthUserUrl = "http://www.xinli001.com/ajax/header-auth-user-div.json";
    
</script>

<script src="./welcome_files/website_0886f8226d.js.下载"></script><!--html5shiv让ie678支持html5，respond_min让ie支持css3 query-->
<!--[if lt IE 9 ]>
  <script src="http://lapp.xinli001.com/jsmin/html5shiv.min.js"></script><script src="http://lapp.xinli001.com/jsmin/respond.min.js"></script><![endif]-->

    <style>
        .activity-title{
            display: -webkit-box;
            display: -moz-box;
            overflow: hidden;
            -webkit-line-clamp: 2;
            height: 41px;
            /* color: #444; */
            text-align: justify;
            text-overflow: ellipsis;
            word-break: break-all;
            -webkit-box-orient: vertical;
        }
    </style>
</head>
<body><div class="" style="left: 0px; top: 0px; visibility: hidden; position: absolute;"><table class="ui_border"><tbody><tr><td class="ui_lt"></td><td class="ui_t"></td><td class="ui_rt"></td></tr><tr><td class="ui_l"></td><td class="ui_c"><div class="ui_inner"><table class="ui_dialog"><tbody><tr><td colspan="2"><div class="ui_title_bar"><div class="ui_title" unselectable="on" style="cursor: move;"></div><div class="ui_title_buttons"><a class="ui_min" href="javascript:void(0);" title="最小化" style="display: inline-block;"><b class="ui_min_b"></b></a><a class="ui_max" href="javascript:void(0);" title="最大化" style="display: inline-block;"><b class="ui_max_b"></b></a><a class="ui_res" href="javascript:void(0);" title="还原"><b class="ui_res_b"></b><b class="ui_res_t"></b></a><a class="ui_close" href="javascript:void(0);" title="关闭(esc键)" style="display: inline-block;">×</a></div></div></td></tr><tr><td class="ui_icon" style="display: none;"></td><td class="ui_main" style="width: auto; height: auto;"><div class="ui_content" style="padding: 10px;"></div></td></tr><tr><td colspan="2"><div class="ui_buttons" style="display: none;"></div></td></tr></tbody></table></div></td><td class="ui_r"></td></tr><tr><td class="ui_lb"></td><td class="ui_b"></td><td class="ui_rb" style="cursor: se-resize;"></td></tr></tbody></table></div>

<div class="header">
	<div class="wrapper">
		<div class="logo">
			<a href="http://www.xinli001.com/"><img src="./welcome_files/logo.png"></a>
		</div>
		<div class="nav">
			<ul>
				<li class="selected"><a href="http://www.xinli001.com/" class="tit">首页</a></li>
				<li><a href="http://www.xinli001.com/info" class="tit">文章</a></li>
				<li><a href="http://qa.xinli001.com/" class="tit">问答</a></li>
				<li><a href="http://www.xinli001.com/zx" class="tit">咨询</a></li>
				<li><a href="<%=basePath %>module/module.action" class="tit isNew">测试<span class="newBrand"></span></a></li>
				<li><a href="http://fm.xinli001.com/" class="tit">心理FM</a></li>
				<li><a href="http://xy.xinli001.com/" class="tit">课程</a></li>
				<li class="droplist">
					<a href="http://www.xinli001.com/#" class="tit tit-more">更多</a>
					<dl>
						<dd><a href="http://www.xinli001.com/oxygen/">心灵氧吧</a></dd>
						<dd><a href="http://www.xinli001.com/site/">心理圈</a></dd>
						<dd><a href="http://group.xinli001.com/">小组</a></dd>
						<dd><a href="http://app.xinli001.com/">心理应用</a></dd>
						<dd><a href="http://www.xinli001.com/daka/">打卡学习</a></dd>
						<dd><a href="http://www.xinli001.com/dream/">每日一梦</a></dd>
					</dl>
				</li>
			</ul>
		</div>
		<div id="header-auth-user-div"><div class="reg">
			<ul>
				<li class="logIn">
					<a href="http://www.xinli001.com/user">登录</a>
					<i class="icon-logIn"></i>
				</li>
			</ul>
		</div>
		</div>
		<div class="sear">
			<form target="_blank" action="http://so.xinli001.com/cse/search" method="get">
<!--				<input type="hidden" name="s" value="11434743956290276987">-->
				<input type="hidden" name="s" value="14517920152699641259">
				<input type="hidden" name="nsid" value="0">
				<input type="text" class="text" name="q" placeholder="搜索">
				<input type="submit" class="submit" value="">
			</form>
		</div>
	</div>
</div>
<!-- @remark 临时广告位 -->
<div class="wrapper page" style="margin-bottom: -15px;">
    <a target="_blank" href="http://www.xinli001.com/ceshi/fufei?from=shouye"><img src="./welcome_files/095446xvyhgvhecy6bcklf.jpg"></a>
</div>

<div class="wrapper page">
    <div class="main">
        <div class="hslide-wrap">
            <div class="hslide">
                <ul class="slides" style="width: 2475px; transform: translate3d(-495px, 0px, 0px);">
                                                            <li class="slide" style="width: 495px;">
                        <a href="http://www.xinli001.com/info/100351499#lunbo" target="_blank">
                            <div class="img">
                                <img src="./welcome_files/57a49df5e4e854b4860b7d6cc4436f67.jpg">
                            </div>
                            <div class="tip">
                                你活得步履薄冰还是从容洒脱？看成长环境是如何塑造你的                            </div>
                        </a>
                    </li>
                                        <li class="slide slide__item--current" style="width: 495px;">
                        <a href="http://www.xinli001.com/info/100349630#lunbo" target="_blank">
                            <div class="img">
                                <img src="./welcome_files/894da295ff5834e96d1f3c9ff3d58ca9.jpg">
                            </div>
                            <div class="tip">
                                你生命中所有的问题都来自你不够爱自己                            </div>
                        </a>
                    </li>
                                        <li class="slide" style="width: 495px;">
                        <a href="http://www.xinli001.com/info/100016949#lunbo" target="_blank">
                            <div class="img">
                                <img src="./welcome_files/7d3a926cf63bf9a79793a4de37ce95f2.jpg">
                            </div>
                            <div class="tip">
                                原来自信都被它们吃了：打败自信的6个天敌                            </div>
                        </a>
                    </li>
                                        <li class="slide" style="width: 495px;">
                        <a href="http://www.xinli001.com/info/100349492#lunbo" target="_blank">
                            <div class="img">
                                <img src="./welcome_files/ebb3022eeda9e75c5e19a01d907b5a8d.jpg">
                            </div>
                            <div class="tip">
                                表达训练：这样表达，事半功倍！                            </div>
                        </a>
                    </li>
                                        <li class="slide" style="width: 495px;">
                        <a href="http://www.xinli001.com/info/100304633#lunbo" target="_blank">
                            <div class="img">
                                <img src="./welcome_files/2200a10cd7708ae5ca3c3fffbbf83eba.jpg">
                            </div>
                            <div class="tip">
                                正因为敏感脆弱，我才捕捉到生命中这么多美好的瞬间                            </div>
                        </a>
                    </li>
                                                        </ul>
            <div class="slider-arrows"><a href="http://www.xinli001.com/#" class="slider-arrow slider-arrow--right" data-distance="1"></a><a href="http://www.xinli001.com/#" class="slider-arrow slider-arrow--left" data-distance="-1"></a></div><div class="slider-nav" style="left: 50%; width: 75px; margin-left: -280px;"><a href="http://www.xinli001.com/#" class="slider-nav__item" data-distance="0"></a><a href="http://www.xinli001.com/#" class="slider-nav__item slider-nav__item--current" data-distance="1"></a><a href="http://www.xinli001.com/#" class="slider-nav__item" data-distance="2"></a><a href="http://www.xinli001.com/#" class="slider-nav__item" data-distance="3"></a><a href="http://www.xinli001.com/#" class="slider-nav__item" data-distance="4"></a></div></div>
            <div class="hzxtj">
                <div class="head">
                    <h1>一周热文</h1>
                </div>
                <div class="body">
                    <ul>
                                                                        <li><a href="http://www.xinli001.com/info/100303890#tuijian" target="_blank">欲望不可耻，它会带给我们真正的快乐</a></li>
                                                <li><a href="http://www.xinli001.com/info/100302849#tuijian" target="_blank">当你能够爱自己，失恋就会让你成长</a></li>
                                                <li><a href="http://www.xinli001.com/info/100356575#tuijian" target="_blank">用心理学谈一场不分手的恋爱</a></li>
                                                <li><a href="http://www.xinli001.com/ceshi/99897499#tuijian" target="_blank">测试 | 你适合什么工作？</a></li>
                                                <li><a href="http://qa.xinli001.com/100018696#tuijian" target="_blank">问答 | 他跟初恋联系，我无法释怀</a></li>
                                                                    </ul>
                </div>
            </div>
        </div>

        <div class="hblock">
            <div class="head">
                <h2>看文章</h2>
                <div class="btn btn-xwz">
                    <nofollow>
                        <a href="http://www.xinli001.com/user/article/post"></a>
                    </nofollow>
                </div>
                <ul class="nav" style="margin-bottom: 33px;">
                                        <li class="">
                        <a href="http://www.xinli001.com/info">全部</a>
                    </li>
                                        <li class="selected">
                        <a href="http://www.xinli001.com/info/tag_876">婚恋</a>
                    </li>
                                        <li>
                        <a href="http://www.xinli001.com/info/tag_823">健康</a>
                    </li>
                                        <li>
                        <a href="http://www.xinli001.com/info/tag_844">职场</a>
                    </li>
                                        <li>
                        <a href="http://www.xinli001.com/info/tag_733">性心理</a>
                    </li>
                                        <li>
                        <a href="http://www.xinli001.com/info/tag_792">科普</a>
                    </li>
                                        <li>
                        <a href="http://www.xinli001.com/info/tag_862">成长</a>
                    </li>
                                        <li>
                        <a href="http://www.xinli001.com/info/tag_1309">短片·漫画</a>
                    </li>
                                    </ul>
            </div>
                        <div class="body" style="display: none;">
                <ul class="hkwz">
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100353735">
                                <img src="./welcome_files/b7c35605833a7142843d41d7f8599cf0.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100353735">恋爱不就是两人互粉吗？婚姻不就是相互点赞一辈子吗?</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/1004327444">刘蓉</a>
                            </div>
                            <div class="view">
                                <span>6</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100356693">
                                <img src="./welcome_files/0d61f2a6ddc3933c22c5dc10d3ae70f2.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100356693">想换婚姻，不如先换自己的心态</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/271096686">罗近月</a>
                            </div>
                            <div class="view">
                                <span>11</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357572">
                                <img src="./welcome_files/d8a3b62564ad7d7c352f800793f54d44.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357572">为何拥抱如此治愈？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000661612">科普专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>50</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357571">
                                <img src="./welcome_files/8e5941f93c7659cc0a43a8185550fc45.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357571">坚持下来的秘诀是？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000646238">职场专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>53</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100306281">
                                <img src="./welcome_files/1721510y69bclu5j832d2n.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100306281">为什么越努力，越焦虑？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000700645">船长-拖延心理咨询师</a>
                            </div>
                            <div class="view">
                                <span>4279</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357558">
                                <img src="./welcome_files/58191c956eb0d1a34a0237b31ccc5c01.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357558">心理学中，说服别人有哪些黑科技？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000646238">职场专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>738</span>
                            </div>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot" style="display: none;">
               <nofollow>
                 <a href="http://www.xinli001.com/info">更多全部文章</a>
               </nofollow>
                </div>
                        <div class="body" style="display: block;">
                <ul class="hkwz">
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100353735">
                                <img src="./welcome_files/b7c35605833a7142843d41d7f8599cf0.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100353735">恋爱不就是两人互粉吗？婚姻不就是相互点赞一辈子吗?</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/1004327444">刘蓉</a>
                            </div>
                            <div class="view">
                                <span>6</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100356693">
                                <img src="./welcome_files/0d61f2a6ddc3933c22c5dc10d3ae70f2.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100356693">想换婚姻，不如先换自己的心态</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/271096686">罗近月</a>
                            </div>
                            <div class="view">
                                <span>11</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357493">
                                <img src="./welcome_files/aae1971453996841d047c56555aea10c.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357493"> 婚姻最需要什么样的男人？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/2285865">卢悦</a>
                            </div>
                            <div class="view">
                                <span>584</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357516">
                                <img src="./welcome_files/a5edfaa869eb79b38cf52e8095c2b9bb.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357516">男人搞不懂女人？ 其实，男人也搞不懂他们自己</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/59828">婚恋专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>1309</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100351783">
                                <img src="./welcome_files/0724301by26f7ttv1eoaq4.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100351783">为什么你在亲密关系中处于弱势？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1001854488">邵琪「心灵花园nice」</a>
                            </div>
                            <div class="view">
                                <span>9540</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100014715">
                                <img src="./welcome_files/0926174c0ok8x3j3amhgif.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100014715">谈异地恋前必须具备的6种姿势， 你知道吗？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/59828">婚恋专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>26127</span>
                            </div>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot" style="display: block;">
               <nofollow>
                 <a href="http://www.xinli001.com/info/tag_876">更多婚恋文章</a>
               </nofollow>
                </div>
                        <div class="body" style="display: none">
                <ul class="hkwz">
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100306281">
                                <img src="./welcome_files/1721510y69bclu5j832d2n.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100306281">为什么越努力，越焦虑？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000700645">船长-拖延心理咨询师</a>
                            </div>
                            <div class="view">
                                <span>4279</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100309531">
                                <img src="./welcome_files/100234m5p6ey9hq6q555mo.png!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100309531">面对压力，放松能力和压力管理，哪个更重要？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1818">健康专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>2532</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357517">
                                <img src="./welcome_files/eba24832c24a498010fc92d7f48bd89a.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357517">15分钟卸下压力的7个方法</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1818">健康专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>794</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100010808">
                                <img src="./welcome_files/114906526a2b0c5393861d.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100010808">胖就胖在最后几口</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1818">健康专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>8998</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100012215">
                                <img src="./welcome_files/095411bf4c3c6245cebfe4.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100012215">失眠都是月亮惹的祸？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1818">健康专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>14334</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100002096">
                                <img src="./welcome_files/1816039c4fa3e9fe454eed.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100002096">致害怕成为焦点的你</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1818">健康专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>16231</span>
                            </div>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot" style="display: none">
               <nofollow>
                 <a href="http://www.xinli001.com/info/tag_823">更多健康文章</a>
               </nofollow>
                </div>
                        <div class="body" style="display: none">
                <ul class="hkwz">
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357571">
                                <img src="./welcome_files/8e5941f93c7659cc0a43a8185550fc45.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357571">坚持下来的秘诀是？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000646238">职场专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>53</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357558">
                                <img src="./welcome_files/58191c956eb0d1a34a0237b31ccc5c01.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357558">心理学中，说服别人有哪些黑科技？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000646238">职场专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>738</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357208">
                                <img src="./welcome_files/d1e17b99b25dcc00347c6f94b02102ee.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357208">合群的意义是什么？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1001512097">赵晓璃</a>
                            </div>
                            <div class="view">
                                <span>1947</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357499">
                                <img src="./welcome_files/34e0d005d104d479d260582666f9fcfa.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357499">有哪些好的工作习惯值得学习？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000646238">职场专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>2108</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357278">
                                <img src="./welcome_files/192eaf396fa958b49c0cdc428ffd0588.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357278">应该如何进行头脑风暴？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000646238">职场专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>1886</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357252">
                                <img src="./welcome_files/6d2c1118637ad42a45139e85ba9395ef.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357252">跟谁一起工作，到底有多重要</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1004388151">圈外</a>
                            </div>
                            <div class="view">
                                <span>4512</span>
                            </div>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot" style="display: none">
               <nofollow>
                 <a href="http://www.xinli001.com/info/tag_844">更多职场文章</a>
               </nofollow>
                </div>
                        <div class="body" style="display: none">
                <ul class="hkwz">
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357553">
                                <img src="./welcome_files/d033f229678f059f666c3642c43354c7.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357553">为什么人们喜欢在睡前做爱？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/1000668092">张少华</a>
                            </div>
                            <div class="view">
                                <span>910</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100013984">
                                <img src="./welcome_files/18121374ee131865be8bff.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100013984">性幻想，你心中不能说的小烦恼</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/1036732">Doris</a>
                            </div>
                            <div class="view">
                                <span>29727</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357205">
                                <img src="./welcome_files/85c2a6209b891d52c605ec1c391efa0c.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357205">每月性生活次数多少才是健康的？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/9262007">Vita</a>
                            </div>
                            <div class="view">
                                <span>2472</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357192">
                                <img src="./welcome_files/a3f7ce2ceab7cf9301502abf34eb8861.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357192">无性恋是一种性取向，不是性无能   </a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/9262007">Vita</a>
                            </div>
                            <div class="view">
                                <span>1375</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100350506">
                                <img src="./welcome_files/064408zgycmw23ebyc3jg3.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100350506">性行为过多就是性成瘾？ </a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1002498539">王小凡</a>
                            </div>
                            <div class="view">
                                <span>9262</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357058">
                                <img src="./welcome_files/2f2cdac14519be64613099521eaa88ab.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357058">关于男性的十大性误解</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000661612">科普专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>4679</span>
                            </div>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot" style="display: none">
               <nofollow>
                 <a href="http://www.xinli001.com/info/tag_733">更多性心理文章</a>
               </nofollow>
                </div>
                        <div class="body" style="display: none">
                <ul class="hkwz">
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357572">
                                <img src="./welcome_files/d8a3b62564ad7d7c352f800793f54d44.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357572">为何拥抱如此治愈？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000661612">科普专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>50</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357527">
                                <img src="./welcome_files/50537a7239af970c449a0106bca33020.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357527">为什么心情不好会想摔手机？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/1000119284">高浩容</a>
                            </div>
                            <div class="view">
                                <span>455</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357515">
                                <img src="./welcome_files/7d8423e83c8c9b0229819d26bc38ce27.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357515">什么叫低智商的善良？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000661612">科普专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>2549</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100319017">
                                <img src="./welcome_files/07094041ku8vifcv4e6mdy.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100319017">为什么看书时脑子里总有个小人儿在说话？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1002196672">Anonymous</a>
                            </div>
                            <div class="view">
                                <span>9967</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100357277">
                                <img src="./welcome_files/165cb1559038d2610712e102ebcc9f06.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100357277">心理学研究揭示打字错误为何难以发现？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000661612">科普专栏·壹心理</a>
                            </div>
                            <div class="view">
                                <span>1226</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100306159">
                                <img src="./welcome_files/110046pfgrb0ui9r0qtt3a.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100306159">为什么越自卑的人，越会瞧不起他人？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/557037">安然calm</a>
                            </div>
                            <div class="view">
                                <span>14418</span>
                            </div>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot" style="display: none">
               <nofollow>
                 <a href="http://www.xinli001.com/info/tag_792">更多科普文章</a>
               </nofollow>
                </div>
                        <div class="body" style="display: none">
                <ul class="hkwz">
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100356249">
                                <img src="./welcome_files/001ea62888f335ac67f3b0145cc8a7f2.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100356249">父母老了病了，为何子女还会怨恨？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/1000507035">苏剑锋</a>
                            </div>
                            <div class="view">
                                <span>4586</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100350976">
                                <img src="./welcome_files/064643o0wnxrv9vhn7slu2.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100350976">你敢说自己没有受虐倾向？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/1001175429">苟娟</a>
                            </div>
                            <div class="view">
                                <span>6770</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100353393">
                                <img src="./welcome_files/034259uhr25u1rmswq3cnp.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100353393">妈妈说：从没想过有一天我会抱不动你</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000560289">成长专栏</a>
                            </div>
                            <div class="view">
                                <span>7496</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100353329">
                                <img src="./welcome_files/0a3b9c65649764f0c89fa1fcc74229a9.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100353329">开学首日，宝宝哭闹怎么办？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/7181083">王大侠</a>
                            </div>
                            <div class="view">
                                <span>3076</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100353223">
                                <img src="./welcome_files/110004p6qoplt2k1obbwpn.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100353223">黄磊：中国很多父母的教育都是"混蛋"逻辑</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/1000560289">成长专栏</a>
                            </div>
                            <div class="view">
                                <span>14281</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100353212">
                                <img src="./welcome_files/085521ru9tfipbx8oe66b4.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100353212">若儿女是父母的傀儡，反目成仇也就不足为奇</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/expert/547693">田莉（安之）</a>
                            </div>
                            <div class="view">
                                <span>5074</span>
                            </div>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot" style="display: none">
               <nofollow>
                 <a href="http://www.xinli001.com/info/tag_862">更多成长文章</a>
               </nofollow>
                </div>
                        <div class="body" style="display: none">
                <ul class="hkwz">
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100005091">
                                <img src="./welcome_files/37e848069b2132f07bad261026a81c66.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100005091">精神病有什么好笑的?</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/98399939">壹心理·短片漫画专栏</a>
                            </div>
                            <div class="view">
                                <span>7194</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100355878">
                                <img src="./welcome_files/2405e7f6211b3be86aad28ee12427069.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100355878">你究竟是什么人格？丨性格心理学：你并不了解自己真实的性格</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/98399939">壹心理·短片漫画专栏</a>
                            </div>
                            <div class="view">
                                <span>8289</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100352247">
                                <img src="./welcome_files/0355020rskx44fx9n03510.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100352247">我身材矮小，那又怎样？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/98399939">壹心理·短片漫画专栏</a>
                            </div>
                            <div class="view">
                                <span>2382</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100352239">
                                <img src="./welcome_files/03175906ba2dgco27c0ah0.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100352239">家庭暴力下的爱情会怎么样？</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/98399939">壹心理·短片漫画专栏</a>
                            </div>
                            <div class="view">
                                <span>1641</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100352243">
                                <img src="./welcome_files/0333354zd8zyjwtanu8irz.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100352243">人生最后悔的事</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/98399939">壹心理·短片漫画专栏</a>
                            </div>
                            <div class="view">
                                <span>2979</span>
                            </div>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a target="_blank" href="http://www.xinli001.com/info/100352245">
                                <img src="./welcome_files/034753nuzd3mpmp3un9g2w.jpg!120">
                            </a>
                        </div>
                        <div class="text">
                            <h2><a target="_blank" href="http://www.xinli001.com/info/100352245">死后的四十种生活</a></h2>
                            <div class="name">
                                <a target="_blank" href="http://www.xinli001.com/user/98399939">壹心理·短片漫画专栏</a>
                            </div>
                            <div class="view">
                                <span>3098</span>
                            </div>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot" style="display: none">
               <nofollow>
                 <a href="http://www.xinli001.com/info/tag_1309">更多短片·漫画文章</a>
               </nofollow>
                </div>
                    </div>
        <!--//hblock-->
                <div class="hblock">
            <div class="head">
                <h2>提问题</h2>
                <ul class="nav" style="display: none;">
                                                            <li class="selected">
                        <a href="http://qa.xinli001.com/">全部</a>
                    </li>
                                                                                <li>
                        <a href="http://qa.xinli001.com/amor">爱情测试</a>
                    </li>
                                                                                <li>
                        <a href="http://qa.xinli001.com/personality">性格测试</a>
                    </li>
                                                                                <li>
                        <a href="http://qa.xinli001.com/vocational">能力测试</a>
                    </li>
                                                                                <li>
                        <a href="http://qa.xinli001.com/member">会员测试</a>
                    </li>
                                                                                                </ul>
                <div class="btn btn-tw">
                    <nofollow>
                        <a href="http://qa.xinli001.com/ask/"></a>
                    </nofollow>
                </div>
            </div>
                        <div class="body">
                <ul class="htwt">
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100022615">邻居老外想跟我上床，怎么办？</a>
                            </nofollow>
                        </h2>
                        <h4>用户5968484356 等专家43人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100022612">小三想与我共侍一夫</a>
                            </nofollow>
                        </h2>
                        <h4>陈钢 等专家38人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100022689">碰见以死逼我和他在一起的男人</a>
                            </nofollow>
                        </h2>
                        <h4>段建姬 等专家26人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/99984998">在最没能力的年纪遇见了最想要照顾的你怎么办？</a>
                            </nofollow>
                        </h2>
                        <h4>卢逃涛 等专家34人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100019310">梦见奇怪的“蛇”</a>
                            </nofollow>
                        </h2>
                        <h4>Alex 等专家6人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100019313">大四了，不知道能做什么</a>
                            </nofollow>
                        </h2>
                        <h4>yuyuvicky 等专家18人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100019316">我是不是有抑郁症？</a>
                            </nofollow>
                        </h2>
                        <h4>从朋朋 等专家19人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100014082">我爱的和爱我的，选哪一个？</a>
                            </nofollow>
                        </h2>
                        <h4>范津津 等专家87人回答了</h4>
                    </li>
                                    </ul>
            </div>
            <div class="foot">
                <nofollow>
                    <a target="_blank" href="http://qa.xinli001.com/">更多全部提问</a>
                </nofollow>
            </div>
                        <div class="body" style="display: none">
                <ul class="htwt">
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025657">妈妈不喜欢我的男朋友</a>
                            </nofollow>
                        </h2>
                        <h4>Rachel君 等专家7人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025601">不信任源于什么？</a>
                            </nofollow>
                        </h2>
                        <h4>助人沟通 等专家5人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025268">老婆出轨后我们想和好</a>
                            </nofollow>
                        </h2>
                        <h4>陈叶燕 等专家5人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025158">36岁了，而我却越来越像一个没断奶的孩子</a>
                            </nofollow>
                        </h2>
                        <h4>Rachel君 等专家5人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025066">事业和爱情该选哪个？</a>
                            </nofollow>
                        </h2>
                        <h4>Rachel君 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025059">求助！如何调整，才能走出感情错乱的阴影？</a>
                            </nofollow>
                        </h2>
                        <h4>nemo5172 等专家12人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024803">请大家帮我看看我该怎么办</a>
                            </nofollow>
                        </h2>
                        <h4>Rachel君 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024757">被劈腿怎么走出来</a>
                            </nofollow>
                        </h2>
                        <h4>发挥好胡萝卜 等专家14人回答了</h4>
                    </li>
                                    </ul>
            </div>
            <div class="foot" style="display: none">
                <nofollow>
                    <a target="_blank" href="http://qa.xinli001.com/amor">更多爱情测试提问</a>
                </nofollow>
            </div>
                        <div class="body" style="display: none">
                <ul class="htwt">
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025144">我不知道自己究竟想怎样</a>
                            </nofollow>
                        </h2>
                        <h4>nemo5172 等专家11人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025044">刚步入社会的大学生，一年半换了7份工作</a>
                            </nofollow>
                        </h2>
                        <h4>吴立敏 等专家10人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024814">我的清史著录的悲剧</a>
                            </nofollow>
                        </h2>
                        <h4>李乾 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024616">我对自己的未来和工作很苦恼</a>
                            </nofollow>
                        </h2>
                        <h4>顾薇巍 等专家5人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100023989">毕业后赋闲在家意志消沉</a>
                            </nofollow>
                        </h2>
                        <h4>这个杀手不太冷HEROZORO 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100023864">孩子专注力不集中怎么办</a>
                            </nofollow>
                        </h2>
                        <h4>顾薇巍 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100023861">越努力，领导越不满意，还随便骂我</a>
                            </nofollow>
                        </h2>
                        <h4>顾薇巍 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100023856">要不要辞职啊，几百次想辞，当真正想去辞，</a>
                            </nofollow>
                        </h2>
                        <h4>邓康 等专家4人回答了</h4>
                    </li>
                                    </ul>
            </div>
            <div class="foot" style="display: none">
                <nofollow>
                    <a target="_blank" href="http://qa.xinli001.com/personality">更多性格测试提问</a>
                </nofollow>
            </div>
                        <div class="body" style="display: none">
                <ul class="htwt">
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025640"> 社交焦虑症</a>
                            </nofollow>
                        </h2>
                        <h4>顾薇巍 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025586">大叔老说想我了，我都不知道咋回复</a>
                            </nofollow>
                        </h2>
                        <h4>仁爱心理工作室❤ 等专家16人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025190">害怕向别人提要求 问问题 怎么办</a>
                            </nofollow>
                        </h2>
                        <h4>易练 等专家5人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024855">拒绝社交</a>
                            </nofollow>
                        </h2>
                        <h4>袁晓吉 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024821">我这一辈子就得在鄙视里度过吗</a>
                            </nofollow>
                        </h2>
                        <h4>夜野兔子8928 等专家6人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024282">请问自己觉得没有太大意义的圈子需要进入吗？</a>
                            </nofollow>
                        </h2>
                        <h4>牛约纳 等专家7人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100022885">我总是不敢与人说话，网络上也是，一句话总</a>
                            </nofollow>
                        </h2>
                        <h4>李乾 等专家5人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100022799">为什么有些人明明很优秀，却经常表现的有点</a>
                            </nofollow>
                        </h2>
                        <h4>助人沟通 等专家8人回答了</h4>
                    </li>
                                    </ul>
            </div>
            <div class="foot" style="display: none">
                <nofollow>
                    <a target="_blank" href="http://qa.xinli001.com/vocational">更多能力测试提问</a>
                </nofollow>
            </div>
                        <div class="body" style="display: none">
                <ul class="htwt">
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025651">我感觉自己总是会惹人生气，尤其是跟亲近的</a>
                            </nofollow>
                        </h2>
                        <h4>陈义萍 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025561">嫉妒心</a>
                            </nofollow>
                        </h2>
                        <h4>牛约纳 等专家6人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025159">性格越来越冷了这么办？</a>
                            </nofollow>
                        </h2>
                        <h4>易练 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024889">我今年27了，我生活在一个非常畸形的家庭</a>
                            </nofollow>
                        </h2>
                        <h4>beyond3731 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024749">关于人自身的缺点或不足</a>
                            </nofollow>
                        </h2>
                        <h4>杨湛德 等专家5人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100023949">缺乏安全感，一直做着老好人和讨好者，别人</a>
                            </nofollow>
                        </h2>
                        <h4>L、K.rz 等专家6人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100022867">觉得每天就像行尸走肉一样活着，对生忽略没</a>
                            </nofollow>
                        </h2>
                        <h4>杨湛德 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100022805">我现在整天很痛苦，好害怕失去母亲，我该怎么办</a>
                            </nofollow>
                        </h2>
                        <h4>福种 等专家5人回答了</h4>
                    </li>
                                    </ul>
            </div>
            <div class="foot" style="display: none">
                <nofollow>
                    <a target="_blank" href="http://qa.xinli001.com/member">更多会员测试提问</a>
                </nofollow>
            </div>
                        <div class="body" style="display: none">
                <ul class="htwt">
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025581">妈妈家族精神病，对我的伤害很深！我无法释怀</a>
                            </nofollow>
                        </h2>
                        <h4>Bettina✨ 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025551">负能量爆棚的时候该怎么办</a>
                            </nofollow>
                        </h2>
                        <h4>南海大虾 等专家15人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100025043">什么是边缘人格障碍</a>
                            </nofollow>
                        </h2>
                        <h4> 一夏之  等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024999">孩子总觉得手上有东西经常添手该怎么改变它的坏习惯？</a>
                            </nofollow>
                        </h2>
                        <h4>张佳英 等专家4人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024847">我，女，女儿一岁四个月，从女儿半岁开始一</a>
                            </nofollow>
                        </h2>
                        <h4>月棉 等专家8人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024777">感觉自己有忧郁症</a>
                            </nofollow>
                        </h2>
                        <h4>从朋朋 等专家6人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024663">周末结束要面临上班了就会失眠，怎么破？</a>
                            </nofollow>
                        </h2>
                        <h4>从朋朋 等专家5人回答了</h4>
                    </li>
                                        <li>
                        <h2>
                            <nofollow>
                                <a href="http://qa.xinli001.com/100024557">学心理学就应该默默自愈吗</a>
                            </nofollow>
                        </h2>
                        <h4>吴立敏 等专家16人回答了</h4>
                    </li>
                                    </ul>
            </div>
            <div class="foot" style="display: none">
                <nofollow>
                    <a target="_blank" href="http://qa.xinli001.com/professional">更多专业测试提问</a>
                </nofollow>
            </div>
                        <!--//body-->

        </div>
        <!--//hblock-->

        <div class="hblock">
            <div class="head">
                <h2>听心理FM</h2>
            </div>
            <div class="body">
                <ul class="hxlfm">
                                        <li>
                        <div class="img">
                            <img src="./welcome_files/a6e0773504f78099846cef199dfe427f.png!200x200">
                            <a href="http://fm.xinli001.com/99389791" class="play" target="_blank"></a>
                        </div>
                        <h2><a href="http://fm.xinli001.com/99389791">我想你，但不会找你|经典短篇</a></h2>
                        <div class="user">
                            <span>
                                <i><img align="absmiddle" src="./welcome_files/d148d2c12df2c74b22e3051fee12c6f2.jpg!80"></i>
                                Vve小微笑                            </span>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <img src="./welcome_files/4fc5dc09091f730252183a2de6bbd078.jpg!200x200">
                            <a href="http://fm.xinli001.com/99389784" class="play" target="_blank"></a>
                        </div>
                        <h2><a href="http://fm.xinli001.com/99389784">我曾爱过你 想到就心酸</a></h2>
                        <div class="user">
                            <span>
                                <i><img align="absmiddle" src="./welcome_files/4dc51a8d9d0885e818a42b4304dd2ff5.jpg!80"></i>
                                维斯Wace                            </span>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <img src="./welcome_files/a31c49b24fb8fd725e6f82988e485247.jpg!200x200">
                            <a href="http://fm.xinli001.com/99389789" class="play" target="_blank"></a>
                        </div>
                        <h2><a href="http://fm.xinli001.com/99389789">用单身心态过好婚姻生活</a></h2>
                        <div class="user">
                            <span>
                                <i><img align="absmiddle" src="./welcome_files/4c6bbf93556da01ee15a55d6089a77a8.jpg!80"></i>
                                清馨小屋                            </span>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <img src="./welcome_files/f1be339ffee84ecb4c69fa90738ace79.jpg!200x200">
                            <a href="http://fm.xinli001.com/99389795" class="play" target="_blank"></a>
                        </div>
                        <h2><a href="http://fm.xinli001.com/99389795">听说你的男朋友嫌你丑</a></h2>
                        <div class="user">
                            <span>
                                <i><img align="absmiddle" src="./welcome_files/c7102b4f1299893282275a9cc15c436f.png!80"></i>
                                应犹                            </span>
                        </div>
                    </li>
                                    </ul>
            </div>
            <div class="foot">
                <a href="http://fm.xinli001.com/">更多心理FM</a>
            </div>
        </div>
        <!--//hblock-->

        <div class="hblock">
            <div class="head">
                <h2>做测试</h2>
            </div>
            <div class="body">
                <ul class="hxlcs">
                                        <li>
                        <div class="img">
                            <a href="http://www.xinli001.com/ceshi/99897622" target="_blank">
                                <img src="./welcome_files/063556kjvi9hl2d8mlyc5x.jpg!200x134" width="200" height="134">
                            </a>
                        </div>
                        <h2>
                            <a href="http://www.xinli001.com/ceshi/99897622" target="_blank">
                                社交恐惧测试                            </a>
                        </h2>
                        <div class="hits">
                            <span>572</span>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a href="http://www.xinli001.com/ceshi/99897621" target="_blank">
                                <img src="./welcome_files/060641lpozd9jcsqqqmddj.jpg!200x134" width="200" height="134">
                            </a>
                        </div>
                        <h2>
                            <a href="http://www.xinli001.com/ceshi/99897621" target="_blank">
                                测测你有“情感冷漠症”吗？                            </a>
                        </h2>
                        <div class="hits">
                            <span>12278</span>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <a href="http://www.xinli001.com/ceshi/99897620" target="_blank">
                                <img src="./welcome_files/015802cj7yb74ajfxglf2h.jpg!200x134" width="200" height="134">
                            </a>
                        </div>
                        <h2>
                            <a href="http://www.xinli001.com/ceshi/99897620" target="_blank">
                                测你的思想境界有多高？                            </a>
                        </h2>
                        <div class="hits">
                            <span>15907</span>
                        </div>
                    </li>
                                    </ul>
            </div>
            <div class="foot">
                <a href="http://www.xinli001.com/ceshi/">更多心理测试</a>
            </div>
        </div>
        <!--//hblock-->

        <div class="hblock">
            <div class="head">
                <h2>参加活动</h2>

            </div>
            <div class="body">
                <ul class="hxlhd">
                                        <li>
                        <div class="img">
                            <nofollow>
                                <a href="http://www.xinli001.com/event/99911843"><img src="./welcome_files/500220.jpg!huodong"></a>
                            </nofollow>
                        </div>
                        <div class="text">
                            <h2>
                                <nofollow class="activity-title">
                                    <a href="http://www.xinli001.com/event/99911843">2016年度CAPA深圳学术大会</a>
                                </nofollow>
                                </h2>
                            <h4>2016-11-06</h4>
                            <p>网络直播</p>
                            <p class="location-city">
                                <i style="margin-right: 10px;">
                                    <img src="./welcome_files/img40.png" align="absmiddle">
                                </i>
                                深圳市                            </p>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <nofollow>
                                <a href="http://www.xinli001.com/event/99911815"><img src="./welcome_files/525506.jpg!huodong"></a>
                            </nofollow>
                        </div>
                        <div class="text">
                            <h2>
                                <nofollow class="activity-title">
                                    <a href="http://www.xinli001.com/event/99911815">生命整合学院内勒斯老师2016安排|报名</a>
                                </nofollow>
                                </h2>
                            <h4>2016-10-22</h4>
                            <p>北京</p>
                            <p class="location-city">
                                <i style="margin-right: 10px;">
                                    <img src="./welcome_files/img40.png" align="absmiddle">
                                </i>
                                西城区                            </p>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <nofollow>
                                <a href="http://www.xinli001.com/event/99911806"><img src="./welcome_files/003538.jpg!huodong"></a>
                            </nofollow>
                        </div>
                        <div class="text">
                            <h2>
                                <nofollow class="activity-title">
                                    <a href="http://www.xinli001.com/event/99911806">2016中国•《温尼科特全集》发布庆典</a>
                                </nofollow>
                                </h2>
                            <h4>2016-11-02</h4>
                            <p>北京大学医学部跃进厅4楼报告厅</p>
                            <p class="location-city">
                                <i style="margin-right: 10px;">
                                    <img src="./welcome_files/img40.png" align="absmiddle">
                                </i>
                                海淀区                            </p>
                        </div>
                    </li>
                                        <li>
                        <div class="img">
                            <nofollow>
                                <a href="http://www.xinli001.com/event/99911796"><img src="./welcome_files/801907.jpg!huodong"></a>
                            </nofollow>
                        </div>
                        <div class="text">
                            <h2>
                                <nofollow class="activity-title">
                                    <a href="http://www.xinli001.com/event/99911796">竹海四周年庆名师讲坛</a>
                                </nofollow>
                                </h2>
                            <h4>2016-11-20</h4>
                            <p>深圳科学馆</p>
                            <p class="location-city">
                                <i style="margin-right: 10px;">
                                    <img src="./welcome_files/img40.png" align="absmiddle">
                                </i>
                                深圳市                            </p>
                        </div>
                    </li>
                                    </ul>
            </div>
            <!--//body-->
            <div class="foot">
                <a href="http://www.xinli001.com/events/68988118" target="_blank">更多活动</a>
            </div>
        </div>
        <!--//hblock-->
    </div>
    <div class="aside">
        <div id="index-auth-user-div" class="huser huser-sign"><div class="info">
                <div class="img">
                                        <a href="http://account.xinli001.com/login/"><img src="./welcome_files/img44.jpg"></a>
                                    </div>
                <div class="text">
                                        <a href="http://account.xinli001.com/login/" class="btn">登录</a>
                                    </div>
            </div>
            <div class="nav">
                <dl>
                    <dd>
                        <a href="javascript:;">
                            <h2>0</h2>
                            <h4>文章</h4>
                        </a>
                    </dd>
                    <dd>
                        <a href="javascript:;">
                            <h2>0</h2>
                            <h4>提问</h4>
                        </a>
                    </dd>
                    <dd>
                        <a href="javascript:;">
                            <h2>0</h2>
                            <h4>回答</h4>
                        </a>
                    </dd>
                    <dd class="last">
                        <a href="javascript:;">
                            <h2>0</h2>
                            <h4>收藏</h4>
                        </a>
                    </dd>
                </dl>
            </div></div>
        <div class="hmod mgb20">
            <div class="head">
                <ul class="nav">
                    <li class="selected"><a href="http://www.xinli001.com/#">约专家</a></li>
<!--                    <li><a href="#">找机构</a></li>-->
                </ul>
            </div>
            <div class="body">
                    <ul class="hyzj">
                                                <li>
                            <div class="img">
                                <nofollow>
                                    <a target="_blank" href="http://www.xinli001.com/expert/1000690022">
                                        <img src="./welcome_files/75eb6aa873dd8deab4d4b04d468e8a76.png!80">
                                    </a>
                                </nofollow>
                            </div>
                            <div class="text">
                                <h2>
                                    <nofollow>
                                        <a target="_blank" href="http://www.xinli001.com/expert/1000690022">
                                            严林                                        </a>
                                    </nofollow>
                                </h2>
                                <h4>国家二级心理咨询师、催眠师、OH卡执行师</h4>
                                <h5>上海市</h5>
                            </div>
                        </li>
                                                <li>
                            <div class="img">
                                <nofollow>
                                    <a target="_blank" href="http://www.xinli001.com/expert/1000346304">
                                        <img src="./welcome_files/37f7181a9b67ec4005ac613b4190d053.png!80">
                                    </a>
                                </nofollow>
                            </div>
                            <div class="text">
                                <h2>
                                    <nofollow>
                                        <a target="_blank" href="http://www.xinli001.com/expert/1000346304">
                                            金国花                                        </a>
                                    </nofollow>
                                </h2>
                                <h4>国家婚姻家庭咨询师，国际积极心理治疗师</h4>
                                <h5>朝阳区</h5>
                            </div>
                        </li>
                                                <li>
                            <div class="img">
                                <nofollow>
                                    <a target="_blank" href="http://www.xinli001.com/expert/3510061">
                                        <img src="./welcome_files/934382.JPG!80">
                                    </a>
                                </nofollow>
                            </div>
                            <div class="text">
                                <h2>
                                    <nofollow>
                                        <a target="_blank" href="http://www.xinli001.com/expert/3510061">
                                            杨浩波                                        </a>
                                    </nofollow>
                                </h2>
                                <h4>国家二级心咨师 精神分析师 中美班客体组</h4>
                                <h5>长沙市</h5>
                            </div>
                        </li>
                                                <li>
                            <div class="img">
                                <nofollow>
                                    <a target="_blank" href="http://www.xinli001.com/expert/89861948">
                                        <img src="./welcome_files/78dcd650a980faa142f2c801b64fa9ba.png!80">
                                    </a>
                                </nofollow>
                            </div>
                            <div class="text">
                                <h2>
                                    <nofollow>
                                        <a target="_blank" href="http://www.xinli001.com/expert/89861948">
                                            陈琼                                        </a>
                                    </nofollow>
                                </h2>
                                <h4>心理咨询师/家庭治疗师/壹心理专栏作者</h4>
                                <h5>合肥市</h5>
                            </div>
                        </li>
                                                <li>
                            <div class="img">
                                <nofollow>
                                    <a target="_blank" href="http://www.xinli001.com/expert/50014775">
                                        <img src="./welcome_files/7f61938de13316c6c807d11c7862e29b.png!80">
                                    </a>
                                </nofollow>
                            </div>
                            <div class="text">
                                <h2>
                                    <nofollow>
                                        <a target="_blank" href="http://www.xinli001.com/expert/50014775">
                                            邓美娅                                        </a>
                                    </nofollow>
                                </h2>
                                <h4>资深心理咨询师  催眠治疗师 专栏作者</h4>
                                <h5>广州市</h5>
                            </div>
                        </li>
                                            </ul>
            </div>
            <!--//body-->
            <div class="foot">
                <nofollow>
                    <a href="http://www.xinli001.com/zx/">更多专家</a>
                </nofollow>
            </div>
            <div class="foot" style="display: none;">
                <a href="http://www.xinli001.com/site/">更多机构</a>
            </div>
        </div>
        <div class="hmod">
            <div class="head">
                <h2>订阅心理学</h2>
            </div>
            <div class="body">
                <ul class="hdyxl">
                    <li><nofollow><a target="_blank" href="http://list.qq.com/cgi-bin/qf_invite?id=6a7a94bf8d2bbaeaec6a1f216a25db1f2e520f0215a42818" class="ico-mail">邮箱</a></nofollow></li>
                    <li>
                        <a href="javascript:;" class="ico-weixin">微信</a>
                        <div class="focus_weixin" style="display: none;">
                            <p class="weixin_arrow"></p>
                            <div class="fw_content">
                                <img src="./welcome_files/w_1.1.jpg">
                                <p>
                                    微信扫描，关注心理学与生活，在这里找到你内心的答案！
                                </p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;" class="ico-phone">手机</a>
                        <div class="focus_mobile" style="display: none;">
                            <p class="fmo_arrow"></p>
                            <div class="fmo_content">
                                <img src="./welcome_files/w_4.png">
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="zjb-reg">
            <a target="_blank" href="http://www.xinli001.com/zx/apply-new"><i>咨询师申请入驻壹心理</i></a>
        </div>

        <div class="zx-biaozhun">
            <a target="_blank" href="http://www.xinli001.com/info/100352793"><i>壹心理咨询师入驻标准</i></a>
        </div>

    </div>
</div>

<div class="footer">
	<div class="wrapper">
				<div class="nav">
			<ul>
				<li><nofollow><a href="http://www.xinli001.com/about">关于我们</a></nofollow></li>
				<li><nofollow><a href="http://www.xinli001.com/join">加入我们</a></nofollow></li>
				<li><nofollow><a href="http://www.xinli001.com/contact">联系我们</a></nofollow></li>
				<li><nofollow><a href="http://www.xinli001.com/copyright">免责声明</a></nofollow></li>
				<li><nofollow><a href="http://www.xinli001.com/friendlink">友情链接</a></nofollow></li>
				<li><a href="http://www.xinli001.com/sitemap">网站地图</a></li>
				<li><nofollow><a href="http://m.xinli001.com/">手机版</a></nofollow></li>
				<li><nofollow><a href="http://app.xinli001.com/mobile/">手机应用</a></nofollow></li>
				<li><nofollow><a href="http://www.xinli001.com/daohang.html">机构导航</a></nofollow></li>
				<li><nofollow><a href="http://www.xinli001.com/contri/draft-post" style="display: none">投稿</a></nofollow></li>
			</ul>
		</div>
		<div class="links">
			<dl>
				<dt>友情链接：</dt>
												<dt><a target="_blank" href="http://www.nlp.cn/">NLP心理学</a></dt>
								<dt><a target="_blank" href="http://zhidao.baidu.com/daily/">百度知道日报</a></dt>
								<dt><a target="_blank" href="http://xy.xinli001.com/">心理学培训</a></dt>
								<dt><a target="_blank" href="http://www.9939.com/">久久健康网</a></dt>
								<dt><a target="_blank" href="http://iask.sina.com.cn/c/79.html">爱问健康</a></dt>
								<dt><a target="_blank" href="http://iask.fh21.com.cn/">飞华问医生</a></dt>
								<dt><a target="_blank" href="http://www.dxsbb.com/">大学生网</a></dt>
								<dt><a target="_blank" href="http://yuwen.chazidian.com/">语文网</a></dt>
								<dt><a target="_blank" href="http://tag.120ask.com/"> 有问必答</a></dt>
								<dt><a target="_blank" href="http://www.xinli001.com/zx/">心理咨询</a></dt>
								<dt><a target="_blank" href="http://wannianli.tianqi.com/">天气网</a></dt>
								<dt><a target="_blank" href="http://www.pm25.com/">绿色呼吸</a></dt>
								<dt><a target="_blank" href="http://www.vmovier.com/">V电影</a></dt>
								<dt><a target="_blank" href="http://www.99.com.cn/">健康网</a></dt>
											</dl>
		</div>
		<div class="copyright">
			<div>
				<nofollow><a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010602001691"><img alt="公安备案" src="./welcome_files/security_record.png" width="20" height="20" class="img2">粤公网安备 44010602001691号</a></nofollow>
				&nbsp;|&nbsp;
				<nofollow><a target="_blank" href="http://www.miibeian.gov.cn/">粤ICP备12051153号</a></nofollow>
				<div class="img">
					<nofollow>
						<a key="549261433b05a3da0fbcb548" logo_size="83x30" logo_type="business" href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.xinli001.com&amp;at=business" target="_blank"><script src="./welcome_files/aq_auth.js.下载"></script><b id="aqLogoVWTFX" style="display: none;"></b><img src="./welcome_files/hy_83x30.png" alt="安全联盟认证" width="83" height="30" style="border: none;"></a>
					</nofollow>
				</div>
			</div>
			<div class="text">
				©" 2005－2014  xinli001.com  All Rights Reserved. 
			</div>
			
		</div>
	</div>
</div>


<div class="login loginWin" style="display: none;">
    <div class="login-box">
        <div class="login-form">
            <div class="head">
                <div class="tabs">
                    <div class="tab selected js-tab">手机验证登录</div>
                    <div class="tab js-tab">账号密码登录</div>
                </div>
                <a class="close" href="javascript:;"><i></i></a></div>
            <div class="body">
                <form action="http://account.xinli001.com/login-jsonp" method="post">
                    <div class="tabconts">
                        <div class="tabcont selected  js-tabcont">
                            <div class="input-group"><input type="text" name="phone" class="input_full" placeholder="11位手机号" id="login_phone">
                                <p class="tip" id="login_phone-tip"></p></div>
                            <div class="input-group"><input type="text" name="validcode" class="input_sm fl" placeholder="6位验证码" id="login_phonecode"><a data-url="http://account.xinli001.com/send-login-validcode" href="jiavascript:;" class="js-sendPhoneCode inputBtn_sm fr">获取验证码</a>
                                <p class="tip fl" id="login_phonecode-tip"></p></div>
                            <div class="submit-group"><a class="js-submit_phone btn_blue" href="javascript:;">登录</a>
                            </div>
                        </div>
                        <div class="tabcont js-tabcont">
                            <div class="input-group"><input type="text" name="username" class="input_full" placeholder="手机号/邮箱" id="login_accout">
                                <p class="tip" id="login_accout-tip"></p></div>
                            <div class="input-group"><input type="password" name="password" class="input_md fl" placeholder="密码" id="login_password">
                                <a href="http://account.xinli001.com/forgetpwd" class="inputBtn_sm btn_link fr">忘记密码？</a>
                                <p class="tip fl" id="login_password-tip"></p></div>
                            <div class="submit-group"><a class="js-submit_accout btn_blue" href="javascript:;">登录</a>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="thirdParty"><a class="js-showThirdParty" href="javascript:;">第三方登录</a>
                    <div class="thirdParty-cont">
                        <table>
                            <tbody>
                            <tr>
                                <td><a href="http://account.xinli001.com/oauth/weixin" class="wechat"><i></i>微信</a></td>
                                <td><a href="http://account.xinli001.com/oauth/weibo" class="weibo"><i></i>微博</a></td>
                                <td><a href="http://account.xinli001.com/oauth/qq" class="qq"><i></i>QQ</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <a href="javascript:;" class="js-showThirdParty showThirdParty"><i></i></a></div>
            </div>
        </div>
    </div>
</div>
<div style="display: none">
	<div id="fk-form" class="fk-box">
		<div class="hd">
			<h2>问题反馈</h2>
		</div>
		<div class="bd">
			<textarea name="content" class="text"></textarea>
		</div>
		<div class="ft">
			<input name="phone" type="text" placeholder="留下你的手机邮箱">
<!-- 			<span>还可以输入400/400个字符</span> -->
		</div>
	</div>
</div>

<script>
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
//document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd64469e9d7bdbf03af6f074dffe7f9b5' type='text/javascript'%3E%3C/script%3E"));
var _bdurl = unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd64469e9d7bdbf03af6f074dffe7f9b5' type='text/javascript'%3E%3C/script%3E");
document.write(_bdurl);
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-74218902-1', 'auto');
ga('send', 'pageview');
</script><script src="./welcome_files/h.js.下载" type="text/javascript"></script>

<div id="aside-tools" class="aside-tools" style="position: fixed; z-index: 2147483647; display: none;">
	<ul>
		<li class="item1">
			<a href="javascript:void">扫二维码</a>
			<div class="code">
				<img src="./welcome_files/w_1.1.jpg">
				<h2>壹心理公众号</h2>
				<div class="arrow"></div>
			</div>
		</li>
		<li class="item2"><a href="http://www.xinli001.com/#"></a></li>
		<li class="item3"><a href="http://www.xinli001.com/#"></a></li>
	</ul>
</div></body></html>