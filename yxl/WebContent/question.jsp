<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<!-- saved from url=(0044)http://www.xinli001.com/ceshi/99897621/start -->
<html class=" js flexbox flexboxlegacy canvas canvastext postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
	<base href="<%=basePath%>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-title" content="">
	<meta name="format-detection" content="telephone=no">
    <title>${suite.title } - 壹心理</title>
<meta name="keywords" content="测测你有“情感冷漠症”吗？">
<meta name="description" content=":content">

	<link rel="stylesheet" href="./question_files/index.min.css">	<script async="" src="./question_files/analytics.js"></script><script src="./question_files/jquery-1.11.2.min.js"></script>	<script src="./question_files/common.min.js"></script>	<script src="./question_files/website-addons.min.js"></script>
	<script>var headerAuthUserUrl = "http://www.xinli001.com/ajax/header-auth-user-div.json";</script>
	
	</head>
<body>
<div class="new-header">
	<div class="wrapper">
		<div class="logo">
			<a href="http://www.xinli001.com/"><img src="./question_files/logo.png"></a>
		</div>
		<div class="nav">
			<ul>
				<li><a href="http://www.xinli001.com/" class="tit">首页</a></li>
				<li><a href="http://www.xinli001.com/info" class="tit">文章</a></li>
				<li><a href="http://qa.xinli001.com/" class="tit">问答</a></li>
				<li><a href="http://www.xinli001.com/zx/" class="tit">咨询</a></li>
				<li class="selected"><a href="http://www.xinli001.com/ceshi/" class="tit isNew">测试<span class="newBrand"></span></a></li>
				<li><a href="http://fm.xinli001.com/" class="tit">心理FM</a></li>
				<li><a href="http://xy.xinli001.com/" class="tit">课程</a></li>
				<li class="droplist">
					<a href="http://www.xinli001.com/ceshi/99897621/start#" class="tit tit-more">更多</a>
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
				<!--
				<input type="hidden" name="s" value="11434743956290276987">
				-->
				<input type="hidden" name="s" value="14517920152699641259">
				<input type="hidden" name="nsid" value="0">
				<input type="text" class="text" name="q" placeholder="搜索">
				<input type="submit" class="submit" value="">
			</form>
		</div>
	</div>
</div>
<!-- nav end -->
<div class="header cleara">
	<div class="wrap">
		<div class="lf_header">
			<a href="http://www.xinli001.com/ceshi" class="headerlogo">心理测试</a>
			<ul class="hd_menu infos-menu">

				<li><a href="http://www.xinli001.com/ceshi/amor">爱情测试</a></li>

				<li><a href="http://www.xinli001.com/ceshi/personality">性格测试</a></li>

				<li><a href="http://www.xinli001.com/ceshi/vocational">能力测试</a></li>

				<li><a href="http://www.xinli001.com/ceshi/member">会员测试</a></li>

				<li><a href="http://www.xinli001.com/ceshi/professional">精选测试</a></li>

				<li class="isNew"><a href="http://www.xinli001.com/ceshi/fufei">专业测试</a>
					<span class="newBrand"></span></li>

			</ul>

		</div>
		<div class="rt_header infos-search">
			<form method="get" action="http://so.xinli001.com/cse/search" target="_blank">
				<p class="hd_searchBox">
					<input name="q" class="hd_searchText" type="text" maxlength="30" placeholder="搜索心理学内容/心理测试/心理圈"> <input type="hidden" name="s" value="14517920152699641259"> <input type="hidden" name="nsid" value="0"> <input class="hd_search_btn" type="submit" value="搜索">
				</p>
			</form>
		</div>
	</div>

</div>
<!-- header end -->

<div class="infos-wrap">

<div class="fish-left main-left">
	<div class="mbox tshow_index">
    	<div class="title bor_bot fixed">
        	<p class="items fl" title="心理测试"></p>
            <div class="tinfo fl">
            	<h2>${suite.title }</h2>
                <span class="icons" title="测试人数"></span>${suite.testnum }人测试过 &nbsp;
                <span class="icons fav" title="收藏次数"></span>${suite.favnum }次收藏 &nbsp;
                <span class="icons tdates" title="发布时间"></span>${suite.create_time } &nbsp;
              	<span class="icons comments" title="评论数"></span> ${suite.reply_num }条评论
                
            </div>
  		</div>
        <div class="ctest bor_top">当前第 <span class="fgreen fb" id="id_cur_index">1</span> &nbsp;题
        	<span class="total">本测试共 <span class="fgreen fb">${suite.question_num }</span> &nbsp;题</span>
        </div>
    </div>
    <!--测试内容头部-->
    
    <form id="id_form" action="<%=basePath %>result/result.action" method="post" onsubmit="return false">
    <c:forEach items="${questionList }" var="question" varStatus="status">
	<c:if test="${status.index==0 }">
	   <div class="test_contents" style="">
	</c:if>
	<c:if test="${status.index!=0 }">
	   <div class="test_contents" style="display:none">
	</c:if>
    <p class="descs fb">
        ${status.index+1 }、${question.title }    </p>
      
     <div class="sels_list">
           <c:forEach items="${question.optionList }" var="option">
           <div class="items">
                <p class="i_top"></p>
                <p class="i_mid">
				<span class="sels">
					<input type="radio" name="question-${status.index+1 }" value="${option.optionCode}">
				</span>${option.title}</p>
                <p class="i_bot"></p>
            </div>
            </c:forEach>
       </div> 
     </div>
</c:forEach>
    <p class="tbtns">
			<a id="id_pre_link" style="display: none" href="javascript:void(0)" class="test_btn" onclick="return do_prev()">上一题</a>
			&nbsp;&nbsp;
			<input id="id_show_result" style="display: none" type="submit" class="btns" value="提 交">
		</p>
    </form>
    <!--测试内容-->
</div>
<!--left-->

<script src="./question_files/show.js"></script>
<script>
var questionLength = ${suite.question_num };
function setTestSels(ele, clickfun){
	var items = $(ele);
	items.hover(function(){
		$(this).addClass('hover');
	},function(){
		$(this).removeClass('hover');
	}).click(function(){
		items.removeClass('act');
		var radio = $(this).find(':radio');
		if(radio.length>0){
			$(this).addClass('act');
			radio.attr('checked', 'checked');
			if(clickfun){
				clickfun(this);
			}
		}
	});
}
var index = 0;
var questions;
$(function(){
	questions = $('.test_contents');
	setTestSels('.sels_list .items', do_next);
	$(questions[index]).show();
});
function do_prev() {
	$('#id_show_result').hide();
	$(questions[index--]).hide();
	$(questions[index]).show();
	$('#id_cur_index').html(index+1);
	if(index==0){
		$('#id_pre_link').hide();
	}
}
function do_next() {
	$('#id_pre_link').show();
	if(index < questionLength-1){
 		$(questions[index++]).hide();
 		$(questions[index]).show();
 		$('#id_cur_index').html(index+1);
 	}else{
 		$('#id_show_result').show();
 	}
}
$(function() {
	$('#id_show_result').click(onCeshiFormSubmit);
});
</script>

<div class="fish-left main-right">
		<div class="multi_ads fixed">
	<div class="mt"><strong>编辑推荐<span class="mq">：</span><span class="ms">······ </span></strong></div>
    <dl>
    	        <dd>
        	<a href="http://www.xinli001.com/ceshi/99897499" title="职业性格测评" target="_blank">
                <img src="./question_files/0309148be1diw4sa2oy3pb.jpg" width="135" height="135" hover="true" title="职业性格测评" alt="职业性格测评">        	
            </a>
        </dd>
        
               <dd>
        	<a href="http://www.xinli001.com/ceshi/99897526" title="心理需求测评" target="_blank">
                <img src="./question_files/030954q4tnzb0jb0nyq06s.jpg" width="135" height="135" hover="true" title="心理需求测评" alt="心理需求测评">        	
            </a>
        </dd>
        
                <dt>
        	<a href="http://www.xinli001.com/ceshi/99897572?from=ceshi" title="抑郁症测试" target="_blank">
                <img src="./question_files/16f19e49dab19387649e80eae35df090.jpg" width="280" height="135" hover="true" title="抑郁症测试" alt="抑郁症测试">
            </a>
        </dt>
        <br class="clear">
    </dl>
</div>
	<!-- 2-->
<div class="test_rmd_list fixed">
	<div class="st rbor"><span class="fb">性格测试推荐 ：</span><span class="more"><a href="http://www.xinli001.com/ceshi">更多»</a></span></div>
	<dl>
				    	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/99897621">
            		<img src="./question_files/060641lpozd9jcsqqqmddj.jpg!90x60" width="90" height="60" hover="true" alt="测测你有“情感冷漠症”吗？">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/99897621">测测你有“情感冷漠症”吗？</a>
                <span class="total"><span class="icons" title="测试人数"></span>13066人测试过</span>
            </p>
        </dd>
            	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/136">
            		<img src="./question_files/0206543kk6szlc3syu1v5h.jpg!90x60" width="90" height="60" hover="true" alt="测测你有多缺心眼？">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/136">测测你有多缺心眼？</a>
                <span class="total"><span class="icons" title="测试人数"></span>27885人测试过</span>
            </p>
        </dd>
            	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/74">
            		<img src="./question_files/060809wt9uizdzp4sipv5s.jpg!90x60" width="90" height="60" hover="true" alt="测你是《行尸走肉》中的谁？">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/74">测你是《行尸走肉》中的谁？</a>
                <span class="total"><span class="icons" title="测试人数"></span>10624人测试过</span>
            </p>
        </dd>
            	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/99897615">
            		<img src="./question_files/051857bizt5q579i3dtdxk.jpg!90x60" width="90" height="60" hover="true" alt="探测你的核心价值是什么？">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/99897615">探测你的核心价值是什么？</a>
                <span class="total"><span class="icons" title="测试人数"></span>25327人测试过</span>
            </p>
        </dd>
            	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/564">
            		<img src="./question_files/06511160ce1ae9yma9xorr.jpg!90x60" width="90" height="60" hover="true" alt="测你是哪一位唐代大诗人？">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/564">测你是哪一位唐代大诗人？</a>
                <span class="total"><span class="icons" title="测试人数"></span>46371人测试过</span>
            </p>
        </dd>
            </dl>
</div>
	<div class="tags fixed">
	<div class="st rbor"><span class="fb">热门标签 ：</span></div>
    <ul>
    	    	        <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E6%80%A7%E6%A0%BC%E6%B5%8B%E8%AF%95">性格测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E7%88%B1%E6%83%85%E6%B5%8B%E8%AF%95">爱情测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E8%83%BD%E5%8A%9B%E6%B5%8B%E8%AF%95">能力测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E5%BF%83%E7%90%86%E6%B5%8B%E8%AF%95">心理测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E8%B6%A3%E5%91%B3%E6%B5%8B%E8%AF%95">趣味测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E4%B8%93%E4%B8%9A%E6%B5%8B%E8%AF%95">专业测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E5%A7%BB%E7%BC%98%E6%B5%8B%E8%AF%95">姻缘测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E6%B5%8B%E8%AF%95%E7%88%B1%E6%83%85">测试爱情</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E8%81%8C%E4%B8%9A%E6%B5%8B%E8%AF%95">职业测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E9%A2%84%E8%A8%80%E6%B5%8B%E8%AF%95">预言测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E4%BC%9A%E5%91%98%E6%B5%8B%E8%AF%95">会员测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E7%88%B1%E6%83%85">爱情</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E7%BF%BB%E8%AF%91%E6%B5%8B%E8%AF%95">翻译测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E4%B8%93%E4%B8%9A%E9%87%8F%E8%A1%A8">专业量表</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E6%BD%9C%E6%84%8F%E8%AF%86%E6%B5%8B%E8%AF%95">潜意识测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E5%A4%96%E5%9B%BD%E6%B5%8B%E8%AF%95">外国测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E6%80%A7%E6%A0%BC">性格</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E8%81%8C%E5%9C%BA%E6%B5%8B%E8%AF%95">职场测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E5%81%A5%E5%BA%B7%E6%B5%8B%E8%AF%95">健康测试</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E5%BF%83%E7%90%86%E5%81%A5%E5%BA%B7">心理健康</a></li>
                <li class="fl"><a href="http://www.xinli001.com/ceshi/tag?name=%E6%81%8B%E7%88%B1">恋爱</a></li>
            </ul>
</div>
    <!--标签-->
</div>
<!--right-->
</div>

<div class="footer">
	<div class="wrap">
		<div class="flinks">
			<a href="http://www.xinli001.com/about">关于我们</a>
			<a href="http://www.xinli001.com/join">加入我们</a>
			<a href="http://www.xinli001.com/contact">联系我们</a>
			<a href="http://www.xinli001.com/copyright">免责声明</a>
			<a href="http://www.xinli001.com/friendlink">友情链接</a>
			<a href="http://www.xinli001.com/sitemap.html">网站地图</a>
			<a href="http://m.xinli001.com/">手机版</a>
			<a href="http://app.xinli001.com/mobile/">手机应用</a>
		</div>
		<p class="copy_right">
			© 2005－2014 &nbsp;xinli001.com &nbsp;All Rights Reserved. &nbsp; <a href="http://www.miibeian.gov.cn/" class="copy" rel="nofollow">粤ICP备12051153号</a>&nbsp;
		<a key="549261433b05a3da0fbcb548" logo_size="83x30" logo_type="business" href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.xinli001.com&amp;at=business" target="_blank"><script src="./question_files/aq_auth.js"></script><b id="aqLogoMVWTV" style="display: none;"></b><img src="./question_files/hy_83x30.png" alt="安全联盟认证" width="83" height="30" style="border: none;"></a>

		</p>
	</div>

</div>
	
	<div style="display: none">
<div id="login_popup" class="lpcont">
	<h2>登录壹心理</h2>
	<p class="words">开始心理测试，收听FM，用心理学改变自己！</p>
	<div class="lpbox">
		<div class="lpart">
		    <form id="lp_form" action="http://www.xinli001.com/ceshi/99897621/login-jsonp/" method="post">
		        <p class="eml">
			        <label for="email">邮箱</label>
			    	<input type="text" id="lp_username" name="username" class="area">
		        </p> 
		        <p class="psw">
		        <label for="password">密码</label>
		        <input type="password" id="lp_password" name="password" class="area">
		    </p>
		        <input id="lp_submit" type="submit" class="log_btn" value="登 录">
		    <br>
		        <a href="http://www.xinli001.com/ceshi/99897621/forgetpwd/" class="forget" target="_blank">忘记密码</a>
		        <a href="http://www.xinli001.com/ceshi/99897621/register/" class="signup" target="_blank">没有账号，去注册＞</a>
		    </form>
	    </div>
	    <div class="rpart">
	    	<span>使用其它账号登录</span>
	    	<a href="http://www.xinli001.com/ceshi/99897621/qwb/login/" class="qq" target="_blank">使用腾讯账号登录</a>
	        <a href="http://www.xinli001.com/ceshi/99897621/xwb/login/" class="wb" target="_blank">使用微博账号登录</a>
	        <a href="http://www.xinli001.com/ceshi/99897621/renren/login/" class="rr" target="_blank">使用人人账号登录</a>
	    </div>
	    <br style="clear:both">
    </div>
</div>
</div>
	
	<div id="background"></div>

<script>
var userinfoUrl = 'http://www.xinli001.com/userinfo/';
</script>

<script src="./question_files/index.min.js"></script>

<!-- <script>
$(function(){
	setFocusSlid('#roll_sels', '#rolls_imgs', 229);
	$.get(headerAuthUserUrl, function(resp) {
		$('#header-auth-user-div').html(resp);
	});
});
</script> -->


<script>
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	//document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd64469e9d7bdbf03af6f074dffe7f9b5' type='text/javascript'%3E%3C/script%3E"));
	var _bdurl = unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd64469e9d7bdbf03af6f074dffe7f9b5' type='text/javascript'%3E%3C/script%3E");
	document.write(_bdurl);
</script><script src="./question_files/h.js" type="text/javascript"></script>
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-74218902-1', 'auto');
	ga('send', 'pageview');
</script>

<ul id="notifications"></ul></body></html>