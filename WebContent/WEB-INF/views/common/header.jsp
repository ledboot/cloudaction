<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/views/common/tag.jsp"%>
<header id="header">
		<!--[if lte IE 9]>
    <div id="warning_info" class="text-warning fade in mb_0">
        <button data-dismiss="alert" class="close" type="button">×</button>
        <strong>您正在使用低版本浏览器，</strong> 在本页面的显示效果可能有差异。
        建议您升级到
        <a href="http://www.google.cn/intl/zh-CN/chrome/" target="_blank">Chrome</a>
        或以下浏览器：
        <a href="www.mozilla.org/en-US/firefox/‎" target="_blank">Firefox</a> /
        <a href="http://www.apple.com.cn/safari/" target="_blank">Safari</a> /
        <a href="http://www.opera.com/" target="_blank">Opera</a> /
        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie" target="_blank">
            Internet Explorer 10</a>
    </div>
    <![endif]-->
		<nav id="header_outer"
			class="navbar navbar-inverse navbar-default navbar-fixed-top"
			role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-header-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a id="logo" class="navbar-brand" href="/"></a>
			</div>
			<div class="collapse navbar-collapse navbar-header-collapse">

				<ul id="header_menu" class="nav navbar-nav">
					<li><a href="${ctx }/">首页</a></li>
					<li><a href="${ctx }/feature">功能</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right"  id="header_me">
					<li class="divider-vertical hidden-xs"></li>
					<c:if test="${user != null }">
						<li><a class="mr_15" href="#">${user.userName}</a></li>
						<li><a href="${ctx }/loginOut">退出</a></li>
					</c:if>
					<c:if test="${ user == null}">
						<li><a class="mr_15" href="${ctx }/signin">登录</a></li>
						<li><a href="/signup?utm_source=nav_bar">注册</a></li>
					</c:if>
					
				</ul>
			</div>
		</nav>
	</header>