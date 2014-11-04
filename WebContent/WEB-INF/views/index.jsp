<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/views/common/tag.jsp"%>
<!DOCTYPE>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="/WEB-INF/views/common/css.jsp"%>
<link href="${ctx }/assets/css/base_common.css" rel="stylesheet" />
<link href="${ctx }/assets/css/base_outer.css" rel="stylesheet" />
<title>首页</title>
</head>
<body class="page_index">
	<!-- navbar -->
	<c:import url="common/header.jsp"></c:import>
	<!-- end narbar -->
	<div id="wrap-all">
		<div id="main" class="inner">
			<div id="index-wrap">
				<div class="index-banner">
					<div class="index-banner-wrap">
						<div class="index-banner-inner">
							<h1>让工作更简单</h1>
							<p>
								一款免费、好用的团队协同工具，让你<br> 的团队随时随地一起工作
							</p>
							<div class="index-banner-action">
								<a class="btn btn-success btn-lg" href="/signup"> 免费注册 </a>
							</div>
							<div ng-controller="index_carousel_ctrl"
								class="index-banner-carousel ng-scope">
								<video controls="" height="281"
									preload="none" width="458">
									<source
										src="https://dn-wt-video.qbox.me/worktile-for-teamwork.mp4"
										type="video/mp4">
									<source
										src="https://dn-wt-video.qbox.me/worktile-for-teamwork.webm"
										type="video/webm">
								</video>
								<!--<carousel interval="myInterval">-->
								<!--<slide ng-repeat="slide in slides" active="slide.active">-->
								<!--<img ng-src="{{slide.image}}?ver=3.3.11" />-->
								<!---->
								<!--</slide>-->
								<!--</carousel>-->
							</div>

						</div>
					</div>
				</div>

				<div class="index-body">
					<h3 class="index-feature-title">
						<span>提升团队生产力</span>
					</h3>
					<ul class="index-feature">
						<li><img
							src="https://dn-wtbox.qbox.me/img/index/i1.png?ver=3.3.11"
							alt="提高效率"> <br>
							<h4>提高效率</h4> 灵活的任务和日程，让团队成员的<br> 效率迅速提升，工作就是这么简单</li>
						<li><img
							src="https://dn-wtbox.qbox.me/img/index/i2.png?ver=3.3.11"
							alt="无缝沟通"> <br>
							<h4>无缝沟通</h4> 简单好用的在线讨论，无处不在的<br> 关注和评论，与团队成员之间无缝沟通</li>
						<li><img
							src="https://dn-wtbox.qbox.me/img/index/i3.png?ver=3.3.11"
							alt="资源共享"> <br>
							<h4>资源共享</h4> 无共享，不协同，完善的文件共享<br> 让你的团队达到真正意义上的协同</li>
						<li><img
							src="https://dn-wtbox.qbox.me/img/index/i4.png?ver=3.3.11"
							alt="帮助记录"> <br>
							<h4>帮助记录</h4> 强大的在线文档编辑，帮助团队<br> 记录，积累沉淀形成团队知识库</li>
					</ul>

					<div class="index-say">
						<div class="index-say-inner">
							<h3 class="index-say-title">他们怎么说</h3>

							<div ng-controller="index_say_ctrl"
								class="index-say-carousel ng-scope">
								<div ng-mouseenter="pause()" ng-mouseleave="play()"
									class="carousel ng-isolate-scope" ng-swipe-right="prev()"
									ng-swipe-left="next()" interval="myInterval">
									<ol class="carousel-indicators" ng-show="slides.length > 1">
										<!-- ngRepeat: slide in slides track by $index -->
										<li ng-repeat="slide in slides track by $index"
											ng-class="{active: isActive(slide)}" ng-click="select(slide)"
											class="ng-scope"></li>
										<!-- end ngRepeat: slide in slides track by $index -->
										<li ng-repeat="slide in slides track by $index"
											ng-class="{active: isActive(slide)}" ng-click="select(slide)"
											class="ng-scope"></li>
										<!-- end ngRepeat: slide in slides track by $index -->
										<li ng-repeat="slide in slides track by $index"
											ng-class="{active: isActive(slide)}" ng-click="select(slide)"
											class="ng-scope active"></li>
										<!-- end ngRepeat: slide in slides track by $index -->
										<li ng-repeat="slide in slides track by $index"
											ng-class="{active: isActive(slide)}" ng-click="select(slide)"
											class="ng-scope"></li>
										<!-- end ngRepeat: slide in slides track by $index -->
									</ol>
									<div class="carousel-inner" ng-transclude="">
										<!-- ngRepeat: slide in slides -->
										<div
											ng-class="{
    'active': leaving || (active &amp;&amp; !entering),
    'prev': (next || active) &amp;&amp; direction=='prev',
    'next': (next || active) &amp;&amp; direction=='next',
    'right': direction=='prev',
    'left': direction=='next'
  }"
											class="item text-center ng-isolate-scope" ng-transclude=""
											ng-repeat="slide in slides" active="slide.active">
											<span class="people ng-binding ng-scope"> <img
												ng-src="https://dn-wtbox.qbox.me/img/uservoice/maning.png?ver=3.3.11"
												alt="马宁"
												src="https://dn-wtbox.qbox.me/img/uservoice/maning.png?ver=3.3.11"><br>
												马宁 <br>OpenXLive创始人
											</span>

											<p class="ng-binding ng-scope">
												<i class="icon icon-quote-left"></i>
												游戏开发需要高效的沟通和配合，在Worktile，一切任务都在拖拖拽拽中搞定，一切通知和提醒都及时送达，没有学习成本，只有高效协作。简单方便，是我们选择Worktile最重要的理由。
												<i class="icon icon-quote-right"></i>
											</p>
										</div>
										<!-- end ngRepeat: slide in slides -->
										<div
											ng-class="{
    'active': leaving || (active &amp;&amp; !entering),
    'prev': (next || active) &amp;&amp; direction=='prev',
    'next': (next || active) &amp;&amp; direction=='next',
    'right': direction=='prev',
    'left': direction=='next'
  }"
											class="item text-center ng-isolate-scope" ng-transclude=""
											ng-repeat="slide in slides" active="slide.active">
											<span class="people ng-binding ng-scope"> <img
												ng-src="https://dn-wtbox.qbox.me/img/uservoice/ziyan.png?ver=3.3.11"
												alt="徐子岩"
												src="https://dn-wtbox.qbox.me/img/uservoice/ziyan.png?ver=3.3.11"><br>
												徐子岩 <br>微软MVP
											</span>

											<p class="ng-binding ng-scope">
												<i class="icon icon-quote-left"></i>
												我一直在寻找一款适合我们团队使用的协同工具，但因为各种原因最后都放弃了，直到用上Worktile，才感觉找到了我的真爱，我愿意把它推荐给我们身边每一位有团队协同需求的朋友。
												<i class="icon icon-quote-right"></i>
											</p>
										</div>
										<!-- end ngRepeat: slide in slides -->
										<div
											ng-class="{
    'active': leaving || (active &amp;&amp; !entering),
    'prev': (next || active) &amp;&amp; direction=='prev',
    'next': (next || active) &amp;&amp; direction=='next',
    'right': direction=='prev',
    'left': direction=='next'
  }"
											class="item text-center ng-isolate-scope active"
											ng-transclude="" ng-repeat="slide in slides"
											active="slide.active">
											<span class="people ng-binding ng-scope"> <img
												ng-src="https://dn-wtbox.qbox.me/img/uservoice/liuyi.png?ver=3.3.11"
												alt="刘佚"
												src="https://dn-wtbox.qbox.me/img/uservoice/liuyi.png?ver=3.3.11"><br>
												刘佚 <br>设计行业
											</span>

											<p class="ng-binding ng-scope">
												<i class="icon icon-quote-left"></i>
												及时快捷的通知，无处不在的关注，还有简单易用的话题，让团队沟通畅通无阻。例如，一个小细节是，通过邮件直接回复即可参与评论和话题，也可以通过邮件创建任务，这简直太爽了。赶紧上线移动端吧，等不急了。
												<i class="icon icon-quote-right"></i>
											</p>
										</div>
										<!-- end ngRepeat: slide in slides -->
										<div
											ng-class="{
    'active': leaving || (active &amp;&amp; !entering),
    'prev': (next || active) &amp;&amp; direction=='prev',
    'next': (next || active) &amp;&amp; direction=='next',
    'right': direction=='prev',
    'left': direction=='next'
  }"
											class="item text-center ng-isolate-scope" ng-transclude=""
											ng-repeat="slide in slides" active="slide.active">
											<span class="people ng-binding ng-scope"> <img
												ng-src="https://dn-wtbox.qbox.me/img/uservoice/emma.png?ver=3.3.11"
												alt="Emma"
												src="https://dn-wtbox.qbox.me/img/uservoice/emma.png?ver=3.3.11"><br>
												Emma <br>不会编码的IT人士
											</span>

											<p class="ng-binding ng-scope">
												<i class="icon icon-quote-left"></i>
												作为一名ProjectManager，我用过各种项目管理工具，要么太复杂，要么体验太差。Worktile足够简单，完全满足我对于项目管理的需求，而且体验也超级棒，最喜欢Worktile中的拖拽操作，太酷了。
												<i class="icon icon-quote-right"></i>
											</p>
										</div>
										<!-- end ngRepeat: slide in slides -->
									</div>
									<a class="left carousel-control" ng-click="prev()"
										ng-show="slides.length > 1"><span
										class="glyphicon glyphicon-chevron-left"></span></a> <a
										class="right carousel-control" ng-click="next()"
										ng-show="slides.length > 1"><span
										class="glyphicon glyphicon-chevron-right"></span></a>
								</div>
							</div>

							<h3 class="index-say-team-title">
								<!--<a href="/customers">-->
								<span><strong>50,000+</strong>个团队的共同选择</span>
								<!--</a>-->
							</h3>
							<ul class="index-say-team-list">
								<li>
									<!--<a rel="nofollow" target="_blank" href="http://www.36kr.com/" title="36氪">-->
									<img
									src="https://dn-wtbox.qbox.me/img/customers/bigname/36kr.png?ver=3.3.11"
									alt="36氪"> <!--</a>-->
								</li>
								<li>
									<!--<a rel="nofollow" target="_blank" href="http://www.enactuschina.cn/" title="创行">-->
									<img
									src="https://dn-wtbox.qbox.me/img/customers/others/enactuschina.png?ver=3.3.11"
									alt="创行"> <!--</a>-->
								</li>
								<li>
									<!--<a rel="nofollow" target="_blank" href="http://www.pactera.com/" title="文思海辉">-->
									<img
									src="https://dn-wtbox.qbox.me/img/customers/bigname/pactera.png?ver=3.3.11"
									alt="文思海辉"> <!--</a>-->
								</li>
								<li>
									<!--<a rel="nofollow" target="_blank" href="http://www.chekucafe.com/" title="车库咖啡">-->
									<img
									src="https://dn-wtbox.qbox.me/img/customers/bigname/cheku.png?ver=3.3.11"
									alt="车库咖啡"> <!--</a>-->
								</li>
								<li>
									<!--<a rel="nofollow" target="_blank" href="http://global.igt.com/" title="igt">-->
									<img
									src="https://dn-wtbox.qbox.me/img/customers/bigname/igt.png?ver=3.3.11"
									alt="igt"> <!--</a>-->
								</li>

								<li>
									<!--<a rel="nofollow" target="_blank" href="http://www.csdn.net/" title="CSDN">-->
									<img
									src="https://dn-wtbox.qbox.me/img/customers/bigname/csdn.png?ver=3.3.11"
									alt="CSDN"> <!--</a>-->
								</li>

								<li>
									<!--<a rel="nofollow" target="_blank" href="http://www.pinguo.us/" title="Camera360">-->
									<img
									src="https://dn-wtbox.qbox.me/img/customers/bigname/camera360.png?ver=3.3.11"
									alt="Camera360"> <!--</a>-->
								</li>
								<li>
									<!--<a rel="nofollow" target="_blank" href="http://www.yinker.com" title="银客网">-->
									<img
									src="https://dn-wtbox.qbox.me/img/customers/bigname/yinker.png?ver=3.3.11"
									alt="银客网"> <!--</a>-->
								</li>

							</ul>
						</div>
					</div>

					<div class="index-who">
						<div class="index-who-inner">
							<h3 class="index-who-title">谁可以用</h3>
							<ul class="index-who-grid">
								<li><i class="icon icon-code"></i>开发者</li>
								<li><i class="icon icon-dribbble"></i>设计师</li>
								<li><i class="icon icon-leaf"></i>创业团队</li>
								<li><i class="icon icon-bug"></i>测试团队</li>
								<li><i class="icon icon-lightbulb"></i>顾问咨询</li>
								<li><i class="icon icon-bullseye"></i>市场人员</li>
								<li><i class="icon icon-suitcase"></i>律师</li>
								<li><i class="icon icon-book"></i>媒体出版</li>
								<li><i class="icon icon-sitemap"></i>分布式团队</li>
								<li><i class="icon icon-building"></i>学生社团</li>
								<li><i class="icon icon-ambulance"></i>公益组织</li>
								<li><i class="icon icon-github-alt"></i>开源团队</li>
							</ul>
							<div class="index-who-footer">不论你身处哪个行业，从事哪个工作，只要您有团队协作的需求，就是Worktile的用户</div>
						</div>
					</div>
					<h3 class="index-other-title">用心做好产品</h3>
					<ul class="index-other-list">
						<li><a href="/plan"> <img
								src="https://dn-wtbox.qbox.me/img/index/index-other-plan.png?ver=3.3.11"
								alt="付费方案">
								<h4>付费方案</h4> 免费版、商业版任您选择
						</a></li>
						<li><a href="/mobile"> <img
								src="https://dn-wtbox.qbox.me/img/index/index-other-mobile.png?ver=3.3.11"
								alt="移动版">
								<h4>移动版</h4> iPhone、Android全平台支持
						</a></li>
						<li><a href="/security"> <img
								src="https://dn-wtbox.qbox.me/img/index/index-other-security.png?ver=3.3.11"
								alt="数据安全">
								<h4>数据安全</h4> 保护数据安全，是我们的立身之本
						</a></li>
						<li><a href="/club"> <img
								src="https://dn-wtbox.qbox.me/img/index/index-other-feedback.png?ver=3.3.11"
								alt="用户社区">
								<h4>您的声音</h4> 用心倾听您的声音，做好产品
						</a></li>
					</ul>
				</div>
				<footer id="footer-outer" class="hidden-xs">
					<div class="columns">
						<ul class="column mr_210">
							<li><h2>产品</h2></li>
							<li><a href="/tour">功能特性</a></li>
							<li><a href="/security">数据安全</a></li>
							<li><a href="/plan">付费方案</a></li>
							<li><a href="/mobile">移动版本</a></li>
						</ul>
						<ul class="column mr_210">
							<li><h2>媒体</h2></li>
							<li><a href="/uservoice">用户怎么说</a></li>
							<!--<li><a href="/customers">他们也在用</a></li>-->
							<!--<li><a href="/press">媒体报道</a></li>-->
						</ul>
						<ul class="column mr_210">
							<li><h2>支持</h2></li>
							<li><a href="/help">帮助中心</a></li>
							<li><a href="/guide">用户指南</a></li>
							<li><a href="/videos">帮助视频</a></li>
							<li><a href="/blog">官方博客</a></li>
							<li><a href="/club">用户社区</a></li>
							<li><a href="/feedback">在线反馈</a></li>
						</ul>
						<ul class="column">
							<li><h2>更多</h2></li>
							<li><a href="/about">关于我们</a></li>
							<li><a href="/contact">联系我们</a></li>
							<!--<li><a href="javascript:;">工作机会</a></li>-->
							<li><a href="/privacy">隐私声明</a></li>
							<li><a href="/terms">服务条款</a></li>
						</ul>
					</div>
					<div class="text-center">© 2014 worktile.com &nbsp;
						京ICP备13017353号-3 &nbsp; 京公网安备11010802012357号</div>
				</footer>
			</div>
		</div>
	</div>
	</div>
	<%@include file="/WEB-INF/views/common/js.jsp"%>
</body>
</html>