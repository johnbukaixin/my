<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   
<!DOCTYPE html>
<!-- saved from url=(0034)http://www.xinli001.com/ceshi/amor -->
<html class=" js flexbox flexboxlegacy canvas canvastext postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
	<base href="<%=basePath %>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-title" content="">
	<meta name="format-detection" content="telephone=no">
    <title>${module.moduleName }_题_答案_大全-壹心理</title>
<meta name="keywords" content="爱情测试,爱情测试题及答案,爱情测试题,爱情测试大全">
<meta name="description" content="壹心理爱情测试，提供专业的爱情测试题及答案，帮助你了解自己。">

	<link rel="stylesheet" href="./suite_files/index.min.css">	<script async="" src="./suite_files/analytics.js"></script><script src="./suite_files/jquery-1.11.2.min.js"></script>	<script src="./suite_files/common.min.js"></script>	<script src="./suite_files/website-addons.min.js"></script>
	<script>var headerAuthUserUrl = "http://www.xinli001.com/ajax/header-auth-user-div.json";</script>
	
	</head>
<body>
<div class="new-header">
	<div class="wrapper">
		<div class="logo">
			<a href="http://www.xinli001.com/"><img src="./suite_files/logo.png"></a>
		</div>
		<div class="nav">
			<ul>
				<li><a href="<%=basePath %>welcome.jsp" class="tit">首页</a></li>
				<li><a href="http://www.xinli001.com/info" class="tit">文章</a></li>
				<li><a href="http://qa.xinli001.com/" class="tit">问答</a></li>
				<li><a href="http://www.xinli001.com/zx/" class="tit">咨询</a></li>
				<li class="selected"><a href="http://www.xinli001.com/ceshi/" class="tit isNew">测试<span class="newBrand"></span></a></li>
				<li><a href="http://fm.xinli001.com/" class="tit">心理FM</a></li>
				<li><a href="http://xy.xinli001.com/" class="tit">课程</a></li>
				<li class="droplist">
					<a href="http://www.xinli001.com/ceshi/amor#" class="tit tit-more">更多</a>
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
	<div class="list_rmd">
    	<div class="title bor_bot">${module.moduleName }人气推荐</div>
        <div class="lists bor_top fixed">
        	<ul>
        	   <c:forEach items="${recommendSuites}" var="suite">
               <li class="fl payTest">
					<a href="<%=basePath%>suite/suiteInfo.action?suiteCode=${suite.suite_code}">
						<img src="${suite.picture }" width="180" height="120" hover="true" alt="${suite.title }">
						<p>${suite.title }</p>
					</a>
		        </li>
			   </c:forEach>						
            					<!-- <li class="fl payTest">
					<a href="http://www.xinli001.com/ceshi/90">
						<img src="./suite_files/0831425ipnal40zkyk7h27.jpg!180x120" width="180" height="120" hover="true" alt="谁是你的最佳红娘？">
						<p>谁是你的最佳红娘？</p>
											</a>
				</li>
            					<li class="fl payTest">
					<a href="http://www.xinli001.com/ceshi/99897616">
						<img src="./suite_files/074333oeacufmcx2qo097c.jpg!180x120" width="180" height="120" hover="true" alt="测你对爱情的戒备心有多强？">
						<p>测你对爱情的戒备心有多强？</p>
											</a>
				</li> -->
           </ul>
        </div>
    </div>
    <!--推荐-->
        <h2 class="list_title">${module.moduleName }：</h2>
    <div class="list_show">
    	<dl>
    	<c:forEach items="${suiteList }" var="suite">
    		 <dd class="fixed">
            	<p class="pbox fl"><a href="<%=basePath%>???">
            		<img class="lazyload" src="${suite.picture }" width="120" height="80" alt="${suite.title }" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="<%=basePath%>???">${suite.title }</a><br>
                    ${suite.description }<br>
                    <span class="total"><span class="icons" title="测试人数"></span>${suite.testnum }人测试过</span>
					                </p>
            </dd>
        </c:forEach>
                 
                 
                 
                 <!-- <dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/90">
            		<img class="lazyload" src="./suite_files/0831425ipnal40zkyk7h27.jpg!120x80" width="120" height="80" alt="谁是你的最佳红娘？" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/90">谁是你的最佳红娘？</a><br>
                    单身的日子越来越长，为你介绍对象的热心人也越来越多。可是，不是所有的人都适合担当红娘这个艰巨的角色，而且不同的人需要的红娘也有所不同。要想尽早脱离单身的行列，你一定要知道谁才是你生命当中的最佳红娘。（...<br>
                    <span class="total"><span class="icons" title="测试人数"></span>39841人测试过</span>
					                </p>
            </dd>
                    	<dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/99897616">
            		<img class="lazyload" src="./suite_files/074333oeacufmcx2qo097c.jpg!120x80" width="120" height="80" alt="测你对爱情的戒备心有多强？" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/99897616">测你对爱情的戒备心有多强？</a><br>
                    有的人谈恋爱，感觉来了就能立马陷入爱恋，不管不顾，因此在爱情里栽跟头的次数比较多，甚至听到人家几句甜言蜜语就乖乖上钩，那么你呢？你对感情的戒备心又有多强？（图片来源：pixabay）<br>
                    <span class="total"><span class="icons" title="测试人数"></span>26578人测试过</span>
					                </p>
            </dd>
                    	<dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/501">
            		<img class="lazyload" src="./suite_files/091031fsfejom5s40vdphi.jpg!120x80" width="120" height="80" alt="测你有可能网恋吗？" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/501">测你有可能网恋吗？</a><br>
                    《微微一笑很倾城》中，从网络到现实的恋爱让不少少女为之倾倒。你有没有可能谈一场网恋呢？做个测试看看吧~（图片来源：pixabay）<br>
                    <span class="total"><span class="icons" title="测试人数"></span>52592人测试过</span>
					                </p>
            </dd>
                    	<dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/72404793">
            		<img class="lazyload" src="./suite_files/040024z14wesntszuepelg.jpg!120x80" width="120" height="80" alt="测测另一半的性格长相" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/72404793">测测另一半的性格长相</a><br>
                    你有想过自己的另一半会是什么样的人吗？来来看看这个测试的结果和你预想的有没有出入吧~（图片来源：123RF.com.cn图片库）<br>
                    <span class="total"><span class="icons" title="测试人数"></span>124638人测试过</span>
					                </p>
            </dd>
                    	<dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/67478603">
            		<img class="lazyload" src="./suite_files/025554432dzzgcxueh2gyk.jpg!120x80" width="120" height="80" alt="婚姻测试：如果不幸福你敢离婚吗？" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/67478603">婚姻测试：如果不幸福你敢离婚吗？</a><br>
                    婚姻，是两个人自愿结合成为夫妻的一个仪式，但是没有谁能保证它的幸福与长久。假如在婚姻中，你发现对方对你不再有吸引力，你对这样的生活不再有期待，你是会毅然离开还是将就等待呢？（图片来源：pixabay）<br>
                    <span class="total"><span class="icons" title="测试人数"></span>53115人测试过</span>
					                </p>
            </dd>
                    	<dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/99897600">
            		<img class="lazyload" src="./suite_files/123525il0omtwn4ydm3jru.jpg!120x80" width="120" height="80" alt="测测你的恋爱观正确吗？（女性版）" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/99897600">测测你的恋爱观正确吗？（女性版）</a><br>
                    能否和恋人长久地交往下去，三观是否一致是很重要的因素。那么你的爱情观是怎么样的呢？（图片来源：pixabay）<br>
                    <span class="total"><span class="icons" title="测试人数"></span>75357人测试过</span>
					                </p>
            </dd>
                    	<dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/30288855">
            		<img class="lazyload" src="./suite_files/12350369zurc9rni966gla.jpg!120x80" width="120" height="80" alt="测测你的恋爱观正确吗？（男性版）" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/30288855">测测你的恋爱观正确吗？（男性版）</a><br>
                    能否和恋人长久地交往下去，三观是否一致是很重要的因素。那么你的爱情观是怎么样的呢？（图片来源：pixabay）<br>
                    <span class="total"><span class="icons" title="测试人数"></span>30032人测试过</span>
					                </p>
            </dd>
                    	<dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/99897379">
            		<img class="lazyload" src="./suite_files/082146ssf7znnfdaexlf7x.jpg!120x80" width="120" height="80" alt="测今年七夕你能成功脱单吗？" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/99897379">测今年七夕你能成功脱单吗？</a><br>
                    七夕又来了，你还是单身吗？想知道七夕脱单的成功率有多大吗？快来测一测。（图片来源：123RF.com.cn图片库）<br>
                    <span class="total"><span class="icons" title="测试人数"></span>131151人测试过</span>
					                </p>
            </dd>
                    	<dd class="fixed">
            	<p class="pbox fl"><a href="http://www.xinli001.com/ceshi/533">
            		<img class="lazyload" src="./suite_files/072302ry37kt3cr1hcehqo.jpg!120x80" width="120" height="80" alt="测测你的另一半对你的表露程度" hover="true">
            	</a></p>
                <p class="linfo fl">
                	<a href="http://www.xinli001.com/ceshi/533">测测你的另一半对你的表露程度</a><br>
                    你觉得你的另一半重视你吗？一个人是否重视另外一个人其实可以从他们的相处模式中看出来，回答接下来的问题，测测ta有多重视你吧~（测试由壹心理原创编译，测试来源：BuzzFeed，图片来源：123RF）<br>
                    <span class="total"><span class="icons" title="测试人数"></span>54220人测试过</span>
					                </p>
            </dd> -->
                	</dl>
    </div>
    <!--列表分页-->
    <div class="pagebar" id="pages">
		<span>1</span> |<a href="http://www.xinli001.com/ceshi/amor?page=2" target="_self">2</a> |<a href="http://www.xinli001.com/ceshi/amor?page=3" target="_self">3</a> |<a href="http://www.xinli001.com/ceshi/amor?page=4" target="_self">4</a> |<a href="http://www.xinli001.com/ceshi/amor?page=5" target="_self">5</a> |<a href="http://www.xinli001.com/ceshi/amor?page=6" target="_self">6</a> |<a href="http://www.xinli001.com/ceshi/amor?page=7" target="_self">7</a> |<a href="http://www.xinli001.com/ceshi/amor?page=8" target="_self">8</a> |<span>...</span> |<a href="http://www.xinli001.com/ceshi/amor?page=47" target="_self">47</a> |<a href="http://www.xinli001.com/ceshi/amor?page=48" target="_self">48</a> |<a href="http://www.xinli001.com/ceshi/amor?page=2" class="next" target="_self">下一页</a></div>
</div>
<!--left-->
<div class="fish-left main-right">
		<div class="multi_ads fixed">
	<div class="mt"><strong>编辑推荐<span class="mq">：</span><span class="ms">······ </span></strong></div>
    <dl>
    	        <dd>
        	<a href="http://www.xinli001.com/ceshi/99897499" title="职业性格测评" target="_blank">
                <img src="./suite_files/0309148be1diw4sa2oy3pb.jpg" width="135" height="135" hover="true" title="职业性格测评" alt="职业性格测评">        	
            </a>
        </dd>
        
               <dd>
        	<a href="http://www.xinli001.com/ceshi/99897526" title="心理需求测评" target="_blank">
                <img src="./suite_files/030954q4tnzb0jb0nyq06s.jpg" width="135" height="135" hover="true" title="心理需求测评" alt="心理需求测评">        	
            </a>
        </dd>
        
                <dt>
        	<a href="http://www.xinli001.com/ceshi/99897572?from=ceshi" title="抑郁症测试" target="_blank">
                <img src="./suite_files/16f19e49dab19387649e80eae35df090.jpg" width="280" height="135" hover="true" title="抑郁症测试" alt="抑郁症测试">
            </a>
        </dt>
        <br class="clear">
    </dl>
</div>
	<!-- 1-->
<div class="test_rmd_list fixed">
	<div class="st rbor"><span class="fb">${module.moduleName }测试推荐 ：</span><span class="more"><a href="http://www.xinli001.com/ceshi">更多»</a></span></div>
	<dl>
	    <dd>
	        <c:forEach items="${suiteList }" var="suite" begin="0" end="4">
        	<p class="pbox fl">
        		<a href="<%=basePath%>??">
            		<img src="${suite.picture }" width="90" height="60" hover="true" alt="${suite.title }">
				</a></p>
            <p class="tinfo fl">
            	<a href="<%=basePath%>??">${suite.title }</a>
                <span class="total"><span class="icons" title="测试人数"></span>${suite.testnum }人测试过</span>
            </p>
            </c:forEach>
          </dd>
            	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/90">
            		<img src="./suite_files/0831425ipnal40zkyk7h27.jpg!90x60" width="90" height="60" hover="true" alt="谁是你的最佳红娘？">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/90">谁是你的最佳红娘？</a>
                <span class="total"><span class="icons" title="测试人数"></span>39841人测试过</span>
            </p>
        </dd>
            	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/99897616">
            		<img src="./suite_files/074333oeacufmcx2qo097c.jpg!90x60" width="90" height="60" hover="true" alt="测你对爱情的戒备心有多强？">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/99897616">测你对爱情的戒备心有多强？</a>
                <span class="total"><span class="icons" title="测试人数"></span>26578人测试过</span>
            </p>
        </dd>
            	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/501">
            		<img src="./suite_files/091031fsfejom5s40vdphi.jpg!90x60" width="90" height="60" hover="true" alt="测你有可能网恋吗？">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/501">测你有可能网恋吗？</a>
                <span class="total"><span class="icons" title="测试人数"></span>52592人测试过</span>
            </p>
        </dd>
            	<dd>
        	<p class="pbox fl">
        		<a href="http://www.xinli001.com/ceshi/72404793">
            		<img src="./suite_files/040024z14wesntszuepelg.jpg!90x60" width="90" height="60" hover="true" alt="测测另一半的性格长相">
				</a></p>
            <p class="tinfo fl">
            	<a href="http://www.xinli001.com/ceshi/72404793">测测另一半的性格长相</a>
                <span class="total"><span class="icons" title="测试人数"></span>124638人测试过</span>
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
		<a key="549261433b05a3da0fbcb548" logo_size="83x30" logo_type="business" href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.xinli001.com&amp;at=business" target="_blank"><script src="./suite_files/aq_auth.js"></script><b id="aqLogoMPLSJ" style="display: none;"></b><img src="./suite_files/hy_83x30.png" alt="安全联盟认证" width="83" height="30" style="border: none;"></a>

		</p>
	</div>

</div>
	
	<div style="display: none">
<div id="login_popup" class="lpcont">
	<h2>登录壹心理</h2>
	<p class="words">开始心理测试，收听FM，用心理学改变自己！</p>
	<div class="lpbox">
		<div class="lpart">
		    <form id="lp_form" action="http://www.xinli001.com/ceshi/login-jsonp/" method="post">
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
		        <a href="http://www.xinli001.com/ceshi/forgetpwd/" class="forget" target="_blank">忘记密码</a>
		        <a href="http://www.xinli001.com/ceshi/register/" class="signup" target="_blank">没有账号，去注册＞</a>
		    </form>
	    </div>
	    <div class="rpart">
	    	<span>使用其它账号登录</span>
	    	<a href="http://www.xinli001.com/ceshi/qwb/login/" class="qq" target="_blank">使用腾讯账号登录</a>
	        <a href="http://www.xinli001.com/ceshi/xwb/login/" class="wb" target="_blank">使用微博账号登录</a>
	        <a href="http://www.xinli001.com/ceshi/renren/login/" class="rr" target="_blank">使用人人账号登录</a>
	    </div>
	    <br style="clear:both">
    </div>
</div>
</div>
	
	<div id="background"></div>

<script>
var userinfoUrl = 'http://www.xinli001.com/userinfo/';
</script>

<script src="./suite_files/index.min.js"></script>

<script>
$(function(){
	setFocusSlid('#roll_sels', '#rolls_imgs', 229);
	$.get(headerAuthUserUrl, function(resp) {
		$('#header-auth-user-div').html(resp);
	});
});
</script>


<script>
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	//document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd64469e9d7bdbf03af6f074dffe7f9b5' type='text/javascript'%3E%3C/script%3E"));
	var _bdurl = unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd64469e9d7bdbf03af6f074dffe7f9b5' type='text/javascript'%3E%3C/script%3E");
	document.write(_bdurl);
</script><script src="./suite_files/h.js" type="text/javascript"></script>
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-74218902-1', 'auto');
	ga('send', 'pageview');
</script>

<ul id="notifications"></ul></body></html>