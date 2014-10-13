<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/WEB-INF/views/common/tag.jsp"%>
<!DOCTYPE>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="/WEB-INF/views/common/js.jsp"%>
<%@include file="/WEB-INF/views/common/css.jsp"%>
<link href="<%=request.getContextPath()%>/assets/css/base_common.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/assets/css/base_outer.css"
	rel="stylesheet" />
<script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
<title>首页</title>
</head>
<body class="page_index">
	<!-- navbar -->
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
					<li><a href="/">首页</a></li>
					<li><a href="/tour">功能</a></li>
					<li><a href="/plan">付费</a></li>
					<li><a href="/mobile">移动版</a></li>
					<li><a href="/blog">博客</a></li>
					<li><a href="/club">社区</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right" ng-controller="user_ctrl"
					id="header_me">
					<li class="divider-vertical hidden-xs"></li>

					<li><a class="mr_15" href="/signin">登录</a></li>
					<li><a href="/signup?utm_source=nav_bar">注册</a></li>

				</ul>
			</div>
		</nav>
	</header>
	<!-- end narbar -->
	<div id="wrap-all">
		<div id="main" class="inner">
			<div class="other-warp login-wrap" ng-app="validationApp"
				ng-controller="user_login_ctrl">
				<div data-minheight="58" class="single-panel clearfix"
					style="min-height: 275px;">
					<div class="single-panel-inner login-mini ng-scope">
						<div class="single-panel-header">
							<h3>登录</h3>
						</div>
						<div class="single-panel-body">
							<div class="single-panel-section">
								<form novalidate name="login_form"
									class="form-horizontal wt-form ng-pristine ng-invalid ng-invalid-required">
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="icon icon-user"></i></span> <input
												class="form-control ng-pristine ng-invalid ng-invalid-required valid"
												type="text" placeholder="输入用户名/邮箱" name="login_name"
												ng-model="signin_user.name" required>
										</div>
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon fs_17"><i
												class="icon icon-lock"></i></span> <input
												class="form-control ng-pristine ng-valid-minlength ng-invalid ng-invalid-required valid"
												type="password" placeholder="输入密码" name="login_password"
												ng-model="signin_user.password" required ng-minlength="6">
										</div>
									</div>

									<div class="form-group" ng-if="login_form.$errors.length > 0">
										<div class="alert alert-danger">
											<i class="icon-remove-sign mr_5"></i>{{login_form.$errors[0]}}
										</div>
									</div>
									<div class="alert alert-danger">
										<i class="icon-remove-sign mr_5"></i>{{login_form.$errors[0]}}
									</div>
									<div class="form-group">
										<button ng-submit="submitForm()"
											class="btn btn-success btn-lg btn-block" type="button"
											data-loading-text="登录中..."
											loading-status="signin_user.is_login_ing">登 录</button>
									</div>
								</form>
							</div>

						</div>
						<div class="single-panel-footer">
							<div class="pull-right">
								<a href="/forgot">忘记密码？</a>
							</div>
						</div>
					</div>

				</div>
				<script type="text/javascript">
				var validationApp = angular.module('validationApp',[]);
				validationApp.controller('user_login_ctrl',function ($scope){
					$scope.signin_user = {name:"",password:""};
					var errors={msg:"error"};
					$scope.submitForm = function(){
						alert("xxx");
					}
				});
				</script>
			</div>
		</div>
	</div>
</body>
</html>