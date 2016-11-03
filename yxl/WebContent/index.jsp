<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!-- saved from url=(0029)http://www.xinli001.com/ceshi -->
<html
	class=" js flexbox flexboxlegacy canvas canvastext postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 根路径 -->
<base href="<%=basePath %>">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="">
<meta name="format-detection" content="telephone=no">
<title>心理测试_心理测试题_答案_大全-壹心理</title>
<meta name="keywords" content="心理测试,心理测试题及答案,心理测试题,心理测试大全">
<meta name="description"
	content="壹心理心理测试频道，这里有爱情测试、性格测试、能力测试、会员测试、精选测试、专业测评，包含了心理测试题及答案。">

<link rel="stylesheet" href="./index_files/index.min.css">
<script async="" src="./index_files/analytics.js"></script>
<script src="./index_files/jquery-1.11.2.min.js"></script>
<script src="./index_files/common.min.js"></script>
<script src="./index_files/website-addons.min.js"></script>
<script>
	var headerAuthUserUrl = "http://www.xinli001.com/ajax/header-auth-user-div.json";
</script>

</head>
<body>
	<div class="new-header">
		<div class="wrapper">
			<div class="logo">
				<a href="http://www.xinli001.com/"><img
					src="./index_files/logo.png"></a>
			</div>
			<div class="nav">
				<ul>
					<li><a href="<%=basePath %>welcome.jsp" class="tit">首页</a></li>
					<li><a href="http://www.xinli001.com/info" class="tit">文章</a></li>
					<li><a href="http://qa.xinli001.com/" class="tit">问答</a></li>
					<li><a href="http://www.xinli001.com/zx/" class="tit">咨询</a></li>
					<li class="selected"><a href="http://www.xinli001.com/ceshi/"
						class="tit isNew">测试<span class="newBrand"></span></a></li>
					<li><a href="http://fm.xinli001.com/" class="tit">心理FM</a></li>
					<li><a href="http://xy.xinli001.com/" class="tit">课程</a></li>
					<li class="droplist"><a href="http://www.xinli001.com/ceshi#"
						class="tit tit-more">更多</a>
						<dl>
							<dd>
								<a href="http://www.xinli001.com/oxygen/">心灵氧吧</a>
							</dd>
							<dd>
								<a href="http://www.xinli001.com/site/">心理圈</a>
							</dd>
							<dd>
								<a href="http://group.xinli001.com/">小组</a>
							</dd>
							<dd>
								<a href="http://app.xinli001.com/">心理应用</a>
							</dd>
							<dd>
								<a href="http://www.xinli001.com/daka/">打卡学习</a>
							</dd>
							<dd>
								<a href="http://www.xinli001.com/dream/">每日一梦</a>
							</dd>
						</dl></li>
				</ul>
			</div>
			<div id="header-auth-user-div">
				<div class="reg">
					<ul>
						<li class="logIn"><a href="http://www.xinli001.com/user">登录</a>
							<i class="icon-logIn"></i></li>
					</ul>
				</div>
			</div>
			<div class="sear">
				<form target="_blank" action="http://so.xinli001.com/cse/search"
					method="get">
					<!--
				<input type="hidden" name="s" value="11434743956290276987">
				-->
					<input type="hidden" name="s" value="14517920152699641259">
					<input type="hidden" name="nsid" value="0"> <input
						type="text" class="text" name="q" placeholder="搜索"> <input
						type="submit" class="submit" value="">
				</form>
			</div>
		</div>
	</div>
	<!-- nav end -->
	<div class="header cleara">
		<div class="wrap">
			<div class="lf_header">
				<ul class="hd_menu infos-menu">
					<a href="http://www.xinli001.com/ceshi" class="headerlogo">心理测试</a>
					<c:forEach items="${moduleList }" var="module">
						<li
							<c:if test="${module.isNew==1 }">
                       class="isNew"
                    </c:if>><a
							href="<%=basePath%>suite/suite.action?moduleCode=${module.moduleCode}">${module.moduleName }</a> <c:if
								test="${module.isNew==1 }">
								<span class="newBrand"></span>
							</c:if></li>
					</c:forEach>

					<!-- <li><a href="http://www.xinli001.com/ceshi/personality">性格测试</a></li>

				<li><a href="http://www.xinli001.com/ceshi/vocational">能力测试</a></li>

				<li><a href="http://www.xinli001.com/ceshi/member">会员测试</a></li>

				<li><a href="http://www.xinli001.com/ceshi/professional">精选测试</a></li>

				<li class="isNew"><a href="http://www.xinli001.com/ceshi/fufei">专业测试</a>
					<span class="newBrand"></span></li>
 -->
				</ul>

			</div>
			<div class="rt_header infos-search">
				<form method="get" action="http://so.xinli001.com/cse/search"
					target="_blank">
					<p class="hd_searchBox">
						<input name="q" class="hd_searchText" type="text" maxlength="30"
							placeholder="搜索心理学内容/心理测试/心理圈"> <input type="hidden"
							name="s" value="14517920152699641259"> <input
							type="hidden" name="nsid" value="0"> <input
							class="hd_search_btn" type="submit" value="搜索">
					</p>
				</form>
			</div>
		</div>

	</div>
	<!-- header end -->

	<div class="infos-wrap">
		<div class="fish-left main-left">
			<div class="focus">
				<h2>发现未知的自己 ：</h2>
				<div class="focus_box">
					<div class="focus_show" id="rolls_imgs">
						<div id="rolls">
							<div class="roll_box">
								<dl>
									<dt>
										<p class="pbox">
											<a href="http://www.xinli001.com/ceshi/99897621"><img
												src="./index_files/060641lpozd9jcsqqqmddj.jpg!200x134"
												width="200" height="134" hover="true" alt="测测你有“情感冷漠症”吗？"></a>
										</p>
										<p class="pinfo">
											<a href="http://www.xinli001.com/ceshi/99897621" class="t">测测你有“情感冷漠症”吗？</a><br>
											<span class="fgrey">测试人数：</span>11433人<br> <span
												class="fgrey">评论：</span>127条<br> <a
												href="http://www.xinli001.com/ceshi/99897621/start"
												class="start">开始测试</a>
										</p>

									</dt>
									<dd>
										不善于情感表达的你总是把情绪和想法收藏起来，面对朋友或伴侣却变得沉默，你患上“情感冷漠症”了吗？（图... <a
											href="http://www.xinli001.com/ceshi/99897621">[详细]</a>
									</dd>
								</dl>
							</div>
							<div class="roll_box">
								<dl>
									<dt>
										<p class="pbox">
											<a href="http://www.xinli001.com/ceshi/99897620"><img
												src="./index_files/015802cj7yb74ajfxglf2h.jpg!200x134"
												width="200" height="134" hover="true" alt="测你的思想境界有多高？"></a>
										</p>
										<p class="pinfo">
											<a href="http://www.xinli001.com/ceshi/99897620" class="t">测你的思想境界有多高？</a><br>
											<span class="fgrey">测试人数：</span>15076人<br> <span
												class="fgrey">评论：</span>100条<br> <a
												href="http://www.xinli001.com/ceshi/99897620/start"
												class="start">开始测试</a>
										</p>

									</dt>
									<dd>
										“思想境界决定人生高度”——思想境界指的是一个人的思域范围，包括看待问题的广度和深度，你的思想境界有... <a
											href="http://www.xinli001.com/ceshi/99897620">[详细]</a>
									</dd>
								</dl>
							</div>
							<div class="roll_box">
								<dl>
									<dt>
										<p class="pbox">
											<a href="http://www.xinli001.com/ceshi/74"><img
												src="./index_files/060809wt9uizdzp4sipv5s.jpg!200x134"
												width="200" height="134" hover="true" alt="测你是《行尸走肉》中的谁？"></a>
										</p>
										<p class="pinfo">
											<a href="http://www.xinli001.com/ceshi/74" class="t">测你是《行尸走肉》中的谁？</a><br>
											<span class="fgrey">测试人数：</span>10338人<br> <span
												class="fgrey">评论：</span>60条<br> <a
												href="http://www.xinli001.com/ceshi/74/start" class="start">开始测试</a>
										</p>

									</dt>
									<dd>
										该剧主要讲述的是主人公瑞克在执行公务的过程中遭到枪击，被人紧急送往当地医院进行抢救。但当瑞克醒来之后... <a
											href="http://www.xinli001.com/ceshi/74">[详细]</a>
									</dd>
								</dl>
							</div>
							<div class="roll_box">
								<dl>
									<dt>
										<p class="pbox">
											<a href="http://www.xinli001.com/ceshi/99897507"><img
												src="./index_files/091224ai7uojjs438v2n0f.jpg!200x134"
												width="200" height="134" hover="true" alt="气质类型测评"></a>
										</p>
										<p class="pinfo">
											<a href="http://www.xinli001.com/ceshi/99897507" class="t">气质类型测评</a><br>
											<span class="fgrey">测试人数：</span>1983人<br> <span
												class="fgrey">评论：</span>5条<br> <a
												href="http://www.xinli001.com/ceshi/99897507/start"
												class="start">开始测试</a>
										</p>

									</dt>
									<dd>
										气质是一个人从内到外的一种人格魅力。不同的人有不同的气质，你知道自己的气质是什么样的吗？ <a
											href="http://www.xinli001.com/ceshi/99897507">[详细]</a>
									</dd>
								</dl>
							</div>
							<!--part-->
						</div>
					</div>
					<!--滚动集-->
					<div id="roll_sels">
						<ul>
							<li class="">
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897621" hover="true">
										<img src="./index_files/060641lpozd9jcsqqqmddj.jpg!90x60"
										width="60" height="40" alt="测测你有“情感冷漠症”吗？">
									</a>
								</p>
								<p class="pinfo">
									<a href="http://www.xinli001.com/ceshi/99897621"
										title="测测你有“情感冷漠症”吗？">测测你有“情感冷漠症”吗...</a> <br>测试人数：11433人
								</p> <br class="clear"> <span class="arrow"></span>
							</li>
							<li class="">
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897620" hover="true">
										<img src="./index_files/015802cj7yb74ajfxglf2h.jpg!90x60"
										width="60" height="40" alt="测你的思想境界有多高？">
									</a>
								</p>
								<p class="pinfo">
									<a href="http://www.xinli001.com/ceshi/99897620"
										title="测你的思想境界有多高？">测你的思想境界有多高？</a> <br>测试人数：15076人
								</p> <br class="clear"> <span class="arrow"></span>
							</li>
							<li class="act">
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/74" hover="true"> <img
										src="./index_files/060809wt9uizdzp4sipv5s.jpg!90x60"
										width="60" height="40" alt="测你是《行尸走肉》中的谁？">
									</a>
								</p>
								<p class="pinfo">
									<a href="http://www.xinli001.com/ceshi/74"
										title="测你是《行尸走肉》中的谁？">测你是《行尸走肉》中的谁...</a> <br>测试人数：10338人
								</p> <br class="clear"> <span class="arrow"></span>
							</li>
							<li class="">
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897507" hover="true">
										<img src="./index_files/091224ai7uojjs438v2n0f.jpg!90x60"
										width="60" height="40" alt="气质类型测评">
									</a>
								</p>
								<p class="pinfo">
									<a href="http://www.xinli001.com/ceshi/99897507" title="气质类型测评">气质类型测评</a>
									<br>测试人数：1983人
								</p> <br class="clear"> <span class="arrow"></span>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="category">
				<h2 class="title">
					<a href="http://www.xinli001.com/ceshi/fufei">专业测评</a>
				</h2>
				<div class="lists">
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897590"> <img
										class="lazyload"
										src="./index_files/113136758vmxzquncdwz2y.jpg!120x80"
										width="120" height="80" alt="人际心理边界评估丨你以为别人真的跟你这么熟吗？"
										hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/99897590"
										title="人际心理边界评估丨你以为别人真的跟你这么熟吗？">人际心理边界评估丨你以为别人真的跟你这么熟吗？</a><br>
									有些人会擅自踏入他人的领域而不自知，模糊了自己与他人的心... <span class="testers">206人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897563" title="爱的能力评估">爱的能力评估</a>
								<span class="testers">545人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897504"
									title="婚姻质量评估（女性版）丨你对目前的婚姻满意吗？">婚姻质量评估（女性版）丨你对目前的婚...</a> <span
									class="testers">170人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897503"
									title="婚姻质量评估（男性版）丨你对目前的婚姻满意吗？">婚姻质量评估（男性版）丨你对目前的婚...</a> <span
									class="testers">133人测试</span>
							</dd>
						</dl>
					</div>
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897553"> <img
										class="lazyload"
										src="./index_files/034258dbv0fd1wmn1rpzgb.jpg!120x80"
										width="120" height="80" alt="爱情健康指数测评丨你们的爱情足够健康吗？"
										hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/99897553"
										title="爱情健康指数测评丨你们的爱情足够健康吗？">爱情健康指数测评丨你们的爱情足够健康吗？</a><br>
									你很幸运地遇到了爱情，但是爱情就像孩童，需要细心照料才能... <span class="testers">164人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897507" title="气质类型测评">气质类型测评</a>
								<span class="testers">1983人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897588"
									title="拖延行为风格评估丨你为什么总是要等一等？">拖延行为风格评估丨你为什么总是要等一...</a> <span
									class="testers">270人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897593"
									title="父职投入度评估（7-12岁）丨你是一位合格的父亲吗？">父职投入度评估（7-12岁）丨你是一...</a> <span
									class="testers">39人测试</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>

			<div class="category">
				<h2 class="title">
					<a href="http://www.xinli001.com/ceshi/amor">爱情测试</a>
				</h2>
				<div class="lists">
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897620"> <img
										class="lazyload"
										src="./index_files/015802cj7yb74ajfxglf2h.jpg!120x80"
										width="120" height="80" alt="测你的思想境界有多高？" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/99897620"
										title="测你的思想境界有多高？">测你的思想境界有多高？</a><br>
									“思想境界决定人生高度”——思想境界指的是一个人的思域范... <span class="testers">15076人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/90" title="谁是你的最佳红娘？">谁是你的最佳红娘？</a>
								<span class="testers">39533人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897616"
									title="测你对爱情的戒备心有多强？">测你对爱情的戒备心有多强？</a> <span class="testers">26367人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/501" title="测你有可能网恋吗？">测你有可能网恋吗？</a>
								<span class="testers">52540人测试</span>
							</dd>
						</dl>
					</div>
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/72404793"> <img
										class="lazyload"
										src="./index_files/040024z14wesntszuepelg.jpg!120x80"
										width="120" height="80" alt="测测另一半的性格长相" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/72404793"
										title="测测另一半的性格长相">测测另一半的性格长相</a><br>
									你有想过自己的另一半会是什么样的人吗？来来看看这个测试的... <span class="testers">124515人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/67478603"
									title="婚姻测试：如果不幸福你敢离婚吗？">婚姻测试：如果不幸福你敢离婚吗？</a> <span
									class="testers">53062人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897600"
									title="测测你的恋爱观正确吗？（女性版）">测测你的恋爱观正确吗？（女性版）</a> <span
									class="testers">75291人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/30288855"
									title="测测你的恋爱观正确吗？（男性版）">测测你的恋爱观正确吗？（男性版）</a> <span
									class="testers">29996人测试</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>

			<div class="category">
				<h2 class="title">
					<a href="http://www.xinli001.com/ceshi/personality">性格测试</a>
				</h2>
				<div class="lists">
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897621"> <img
										class="lazyload"
										src="./index_files/060641lpozd9jcsqqqmddj.jpg!120x80"
										width="120" height="80" alt="测测你有“情感冷漠症”吗？" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/99897621"
										title="测测你有“情感冷漠症”吗？">测测你有“情感冷漠症”吗？</a><br>
									不善于情感表达的你总是把情绪和想法收藏起来，面对朋友或伴... <span class="testers">11433人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/136" title="测测你有多缺心眼？">测测你有多缺心眼？</a>
								<span class="testers">26662人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/74" title="测你是《行尸走肉》中的谁？">测你是《行尸走肉》中的谁？</a>
								<span class="testers">10338人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897615"
									title="探测你的核心价值是什么？">探测你的核心价值是什么？</a> <span class="testers">24959人测试</span>
							</dd>
						</dl>
					</div>
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/564"> <img
										class="lazyload"
										src="./index_files/06511160ce1ae9yma9xorr.jpg!120x80"
										width="120" height="80" alt="测你是哪一位唐代大诗人？" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/564"
										title="测你是哪一位唐代大诗人？">测你是哪一位唐代大诗人？</a><br>
									要是能重来，我要选李白？（图片来源：123RF.com.... <span class="testers">46003人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897612"
									title="测测你是《釜山行》中的谁？">测测你是《釜山行》中的谁？</a> <span class="testers">35537人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897609"
									title="测测你是《青云志》中的哪个角色？">测测你是《青云志》中的哪个角色？</a> <span
									class="testers">46905人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/60"
									title="潜意识测试：你目前的状态是什么？">潜意识测试：你目前的状态是什么？</a> <span
									class="testers">100746人测试</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>

			<div class="category">
				<h2 class="title">
					<a href="http://www.xinli001.com/ceshi/vocational">能力测试</a>
				</h2>
				<div class="lists">
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897617"> <img
										class="lazyload"
										src="./index_files/040422qrwvnujkeymd8is7.jpg!120x80"
										width="120" height="80" alt="你正在成为你想成为的人吗？" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/99897617"
										title="你正在成为你想成为的人吗？">你正在成为你想成为的人吗？</a><br>
									生活本来是一张白纸，由我自己来涂抹颜色，将人生填充的丰富... <span class="testers">16452人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897415"
									title="世界精神卫生日：你最近心理健康水平怎么样？">世界精神卫生日：你最近心理健康水平怎...</a> <span
									class="testers">106772人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897613"
									title="视觉游戏丨你能找到正确的方块吗？">视觉游戏丨你能找到正确的方块吗？</a> <span
									class="testers">42127人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/290" title="测你是一个多疑的人吗？">测你是一个多疑的人吗？</a>
								<span class="testers">83284人测试</span>
							</dd>
						</dl>
					</div>
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/1591"> <img
										class="lazyload"
										src="./index_files/100826ab8it06hu4bq81d7.jpg!120x80"
										width="120" height="80" alt="心理承受能力测试" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/1591" title="心理承受能力测试">心理承受能力测试</a><br>
									面对突发事件，你是会惊慌失措还是会沉着应战？每个人都有着... <span class="testers">86039人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/2068"
									title="灵异测试：你能和鬼魂交流吗？">灵异测试：你能和鬼魂交流吗？</a> <span class="testers">66569人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/2260" title="测测你的社交障碍是什么？">测测你的社交障碍是什么？</a>
								<span class="testers">74119人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/566"
									title="图形测试丨你能找到正确的图形吗？">图形测试丨你能找到正确的图形吗？</a> <span
									class="testers">67465人测试</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>

			<div class="category">
				<h2 class="title">
					<a href="http://www.xinli001.com/ceshi/member">会员测试</a>
				</h2>
				<div class="lists">
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/2120"> <img
										class="lazyload"
										src="./index_files/1458574d22063cd83211a8.jpg!120x80"
										width="120" height="80" alt="测你是哪位超级英雄" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/2120" title="测你是哪位超级英雄">测你是哪位超级英雄</a><br>
									大性格决定大能力，如果有一天，你的超能力被激活，你会变成... <span class="testers">146384人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897551"
									title="你的内心到底有多孤独？">你的内心到底有多孤独？</a> <span class="testers">106996人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897547"
									title="谁是最适合你的另一半">谁是最适合你的另一半</a> <span class="testers">119897人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897543"
									title="你最在意别人说你什么？">你最在意别人说你什么？</a> <span class="testers">100831人测试</span>
							</dd>
						</dl>
					</div>
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/99897533"> <img
										class="lazyload"
										src="./index_files/112454y8201zcualdga9zt.jpg!120x80"
										width="120" height="80" alt="色彩错觉测试丨不要相信你的眼睛" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/99897533"
										title="色彩错觉测试丨不要相信你的眼睛">色彩错觉测试丨不要相信你的眼睛</a><br>
									当视觉受到周围环境色彩的影响时，就会产生对色彩的错觉现象... <span class="testers">141704人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897532"
									title="测测你的恋爱智商有多高">测测你的恋爱智商有多高</a> <span class="testers">167696人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897524"
									title="测你在异性眼中的第一印象">测你在异性眼中的第一印象</a> <span class="testers">161010人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897523"
									title="测测你不为人知的的缺点是什么？">测测你不为人知的的缺点是什么？</a> <span
									class="testers">118653人测试</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>

			<div class="category nobor">
				<h2 class="title">
					<a href="http://www.xinli001.com/ceshi/professional">精选测试</a>
				</h2>
				<div class="lists">
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/495"> <img
										class="lazyload"
										src="./index_files/02232890pm9d9ml580x9b9.jpg!120x80"
										width="120" height="80" alt="孤独感测试" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/495" title="孤独感测试">孤独感测试</a><br>
									孤独量表评价由于对社会交往的渴望与实际水平的差距而产生的... <span class="testers">163824人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/499" title="标准情商（EQ）测试">标准情商（EQ）测试</a>
								<span class="testers">962485人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/2057" title="爱情依恋模式测评">爱情依恋模式测评</a>
								<span class="testers">141094人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/395" title="心理年龄测试">心理年龄测试</a>
								<span class="testers">404784人测试</span>
							</dd>
						</dl>
					</div>
					<div class="parts">
						<dl>
							<dt>
								<p class="pbox">
									<a href="http://www.xinli001.com/ceshi/39"> <img
										class="lazyload"
										src="./index_files/20111031090940-44.jpg!120x80" width="120"
										height="80" alt="菲尔人格测试" hover="true">
									</a>
								</p>
								<p class="cinfo">
									<a href="http://www.xinli001.com/ceshi/39" title="菲尔人格测试">菲尔人格测试</a><br>
									这是一个目前很多大公司人事部门实际采用的测试。 <span class="testers">234805人测试</span>
								</p>
							</dt>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/99897477"
									title="如何交朋友？先测下自己的交友能力吧">如何交朋友？先测下自己的交友能力吧</a> <span
									class="testers">156791人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/470"
									title="拖延症测试：你拖延到什么程度了？">拖延症测试：你拖延到什么程度了？</a> <span
									class="testers">122734人测试</span>
							</dd>
							<dd>
								<span class="fcn">·</span> <a
									href="http://www.xinli001.com/ceshi/513" title="自信心测试：你有多自信？">自信心测试：你有多自信？</a>
								<span class="testers">67413人测试</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<!--left-->
		<div class="fish-left main-right">
			<div class="multi_ads fixed">
				<div class="mt">
					<strong>编辑推荐<span class="mq">：</span><span class="ms">······
					</span></strong>
				</div>
				<dl>
					<dd>
						<a href="http://www.xinli001.com/ceshi/99897499" title="职业性格测评"
							target="_blank"> <img
							src="./index_files/0309148be1diw4sa2oy3pb.jpg" width="135"
							height="135" hover="true" title="职业性格测评" alt="职业性格测评">
						</a>
					</dd>

					<dd>
						<a href="http://www.xinli001.com/ceshi/99897526" title="心理需求测评"
							target="_blank"> <img
							src="./index_files/030954q4tnzb0jb0nyq06s.jpg" width="135"
							height="135" hover="true" title="心理需求测评" alt="心理需求测评">
						</a>
					</dd>

					<dt>
						<a href="http://www.xinli001.com/ceshi/99897572?from=ceshi"
							title="抑郁症测试" target="_blank"> <img
							src="./index_files/16f19e49dab19387649e80eae35df090.jpg"
							width="280" height="135" hover="true" title="抑郁症测试" alt="抑郁症测试">
						</a>
					</dt>
					<br class="clear">
				</dl>
			</div>
			<div class="test_rmd_list fixed">
				<div class="st rbor">
					<span class="fb">热门测试 ：</span> <span class="more"> <a
						href="javascript:void(0)" data-page="2"
						data-url="http://www.xinli001.com/ceshi/hot-ceshis"
						onclick="changeHotCeshi(this)">换一换</a>
					</span>
				</div>
				<dl id="id_hot_ceshi_list">
					<dd>
						<p class="pbox fl">
							<a href="http://www.xinli001.com/ceshi/422"> <img
								src="./index_files/022811jqm9odk4b73huws9.jpg!90x60" width="90"
								height="60" hover="true" alt="精选测试：MBTI职业性格测试">
							</a>
						</p>
						<p class="tinfo fl">
							<a href="http://www.xinli001.com/ceshi/422">精选测试：MBTI职业性格测试</a> <span
								class="total"><span class="icons" title="测试人数"></span>1719138人测试过</span>
						</p>
					</dd>
					<dd class="rlists">
						<p class="items">
							<span class="fcn">·</span><a
								href="http://www.xinli001.com/ceshi/1822">测你性格最真实的一面</a> <span
								class="total"><span class="icons" title="测试人数"></span>1550734人</span>
						</p>
						<p class="items">
							<span class="fcn">·</span><a
								href="http://www.xinli001.com/ceshi/99897392">测你恋爱时有多投入？</a> <span
								class="total"><span class="icons" title="测试人数"></span>1442433人</span>
						</p>
						<p class="items">
							<span class="fcn">·</span><a
								href="http://www.xinli001.com/ceshi/385">测测你的同性恋潜质</a> <span
								class="total"><span class="icons" title="测试人数"></span>1432648人</span>
						</p>
						<p class="items">
							<span class="fcn">·</span><a
								href="http://www.xinli001.com/ceshi/99897391">测你最容易有哪种负面情绪？</a>
							<span class="total"><span class="icons" title="测试人数"></span>1347236人</span>
						</p>
						<p class="items">
							<span class="fcn">·</span><a
								href="http://www.xinli001.com/ceshi/99897393">弗洛伊德性格测试</a> <span
								class="total"><span class="icons" title="测试人数"></span>1284353人</span>
						</p>
						<p class="items">
							<span class="fcn">·</span><a
								href="http://www.xinli001.com/ceshi/99897390">测你最想要的是什么：职场动机测试</a>
							<span class="total"><span class="icons" title="测试人数"></span>1263076人</span>
						</p>
					</dd>
				</dl>
			</div>
			<div class="tags fixed">
				<div class="st rbor">
					<span class="fb">热门标签 ：</span>
				</div>
				<ul>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E6%80%A7%E6%A0%BC%E6%B5%8B%E8%AF%95">性格测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E7%88%B1%E6%83%85%E6%B5%8B%E8%AF%95">爱情测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E8%83%BD%E5%8A%9B%E6%B5%8B%E8%AF%95">能力测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E5%BF%83%E7%90%86%E6%B5%8B%E8%AF%95">心理测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E8%B6%A3%E5%91%B3%E6%B5%8B%E8%AF%95">趣味测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E4%B8%93%E4%B8%9A%E6%B5%8B%E8%AF%95">专业测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E5%A7%BB%E7%BC%98%E6%B5%8B%E8%AF%95">姻缘测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E6%B5%8B%E8%AF%95%E7%88%B1%E6%83%85">测试爱情</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E8%81%8C%E4%B8%9A%E6%B5%8B%E8%AF%95">职业测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E9%A2%84%E8%A8%80%E6%B5%8B%E8%AF%95">预言测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E4%BC%9A%E5%91%98%E6%B5%8B%E8%AF%95">会员测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E7%88%B1%E6%83%85">爱情</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E7%BF%BB%E8%AF%91%E6%B5%8B%E8%AF%95">翻译测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E4%B8%93%E4%B8%9A%E9%87%8F%E8%A1%A8">专业量表</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E6%BD%9C%E6%84%8F%E8%AF%86%E6%B5%8B%E8%AF%95">潜意识测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E5%A4%96%E5%9B%BD%E6%B5%8B%E8%AF%95">外国测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E6%80%A7%E6%A0%BC">性格</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E8%81%8C%E5%9C%BA%E6%B5%8B%E8%AF%95">职场测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E5%81%A5%E5%BA%B7%E6%B5%8B%E8%AF%95">健康测试</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E5%BF%83%E7%90%86%E5%81%A5%E5%BA%B7">心理健康</a></li>
					<li class="fl"><a
						href="http://www.xinli001.com/ceshi/tag?name=%E6%81%8B%E7%88%B1">恋爱</a></li>
				</ul>
			</div>
			<!--标签-->
		</div>
		<!--right-->
	</div>

	<div class="footer">
		<div class="wrap">
			<div class="flinks">
				<a href="http://www.xinli001.com/about">关于我们</a> <a
					href="http://www.xinli001.com/join">加入我们</a> <a
					href="http://www.xinli001.com/contact">联系我们</a> <a
					href="http://www.xinli001.com/copyright">免责声明</a> <a
					href="http://www.xinli001.com/friendlink">友情链接</a> <a
					href="http://www.xinli001.com/sitemap.html">网站地图</a> <a
					href="http://www.xinli001.com/ceshi">手机版</a> <a
					href="http://app.xinli001.com/mobile/">手机应用</a>
			</div>
			<div class="footer">
				<div class="links">
					<dl>
						<dt>友情链接：</dt>
						<dt>
							<a target="_blank" href="http://xingzuo.piaoliang.com/">星座运势</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c218">深圳心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c168">郑州心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c151">青岛心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c84">南京心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c82">上海心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c43">沈阳心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c2">北京心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c259">成都心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c186">武汉心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.xinli001.com/zx/c98">杭州心理咨询</a>
						</dt>
						<dt>
							<a target="_blank" href="http://www.woniu8.com/">心理测试</a>
						</dt>
					</dl>
				</div>
			</div>
			<p class="copy_right">
				© 2005－2014 &nbsp;xinli001.com &nbsp;All Rights Reserved. &nbsp; <a
					href="http://www.miibeian.gov.cn/" class="copy" rel="nofollow">粤ICP备12051153号</a>&nbsp;
				<a key="549261433b05a3da0fbcb548" logo_size="83x30"
					logo_type="business"
					href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.xinli001.com&amp;at=business"
					target="_blank"><script src="./index_files/aq_auth.js"></script><b
					id="aqLogoQEFBF" style="display: none;"></b><img
					src="./index_files/hy_83x30.png" alt="安全联盟认证" width="83"
					height="30" style="border: none;"></a>

			</p>
		</div>

	</div>

	<div style="display: none">
		<div id="login_popup" class="lpcont">
			<h2>登录壹心理</h2>
			<p class="words">开始心理测试，收听FM，用心理学改变自己！</p>
			<div class="lpbox">
				<div class="lpart">
					<form id="lp_form" action="http://www.xinli001.com/login-jsonp/"
						method="post">
						<p class="eml">
							<label for="email">邮箱</label> <input type="text" id="lp_username"
								name="username" class="area">
						</p>
						<p class="psw">
							<label for="password">密码</label> <input type="password"
								id="lp_password" name="password" class="area">
						</p>
						<input id="lp_submit" type="submit" class="log_btn" value="登 录">
						<br> <a href="http://www.xinli001.com/forgetpwd/"
							class="forget" target="_blank">忘记密码</a> <a
							href="http://www.xinli001.com/register/" class="signup"
							target="_blank">没有账号，去注册＞</a>
					</form>
				</div>
				<div class="rpart">
					<span>使用其它账号登录</span> <a href="http://www.xinli001.com/qwb/login/"
						class="qq" target="_blank">使用腾讯账号登录</a> <a
						href="http://www.xinli001.com/xwb/login/" class="wb"
						target="_blank">使用微博账号登录</a> <a
						href="http://www.xinli001.com/renren/login/" class="rr"
						target="_blank">使用人人账号登录</a>
				</div>
				<br style="clear: both">
			</div>
		</div>
	</div>

	<div id="background"></div>
	<style>
.footer .links {
	text-align: center;
	padding: 15px 30px;
	line-height: 22px;
}

.footer .links dt {
	color: #999999;
	display: inline;
	margin: 0 10px;
	font-weight: normal;
	font-size: 12px;
}

.footer a {
	color: #999;
}
</style>

	<script>
		var userinfoUrl = 'http://www.xinli001.com/userinfo/';
	</script>

	<script src="./index_files/index.min.js"></script>

	<script>
		$(function() {
			setFocusSlid('#roll_sels', '#rolls_imgs', 229);
			$.get(headerAuthUserUrl, function(resp) {
				$('#header-auth-user-div').html(resp);
			});
		});
	</script>


	<script>
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		//document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd64469e9d7bdbf03af6f074dffe7f9b5' type='text/javascript'%3E%3C/script%3E"));
		var _bdurl = unescape("%3Cscript src='"
				+ _bdhmProtocol
				+ "hm.baidu.com/h.js%3Fd64469e9d7bdbf03af6f074dffe7f9b5' type='text/javascript'%3E%3C/script%3E");
		document.write(_bdurl);
	</script>
	<script src="./index_files/h.js" type="text/javascript"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-74218902-1', 'auto');
		ga('send', 'pageview');
	</script>

	<ul id="notifications"></ul>
</body>
</html>