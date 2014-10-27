<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/views/common/tag.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="/WEB-INF/views/common/js.jsp"%>
<%@include file="/WEB-INF/views/common/css.jsp"%>
<link href="${ctx}/assets/css/base_common.css" rel="stylesheet" />
<link href="${ctx}/assets/css/base_outer.css" rel="stylesheet" />
<link id="linkRoot" href="/cloudaction">
<script type="text/javascript" src="${ctx}/assets/js/app.js"></script>
<script type="text/javascript">
	angular.module('loginModule').config(['$httpProvider', '$provide',function ($httpProvider,$provide) {    
		//$provide.value("webRoot", $("#linkRoot").attr("href"));
		$httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		//$httpProvider.defaults.headers.post['Content-Type'] = 'text/html; charset=utf-8';
	}]);
	angular.module('loginModule').controller('loginCtrl',['$scope','$http',function ($scope,$http){
		$scope.errors = [];
		$scope.submit = function(){
			//console.log("path:"+$location.path());
			if($scope.login_form.$valid){
				var data ="name="+$scope.signin.name+"&password="+$scope.signin.password;
				console.log(data);
				$http({
					method:'post',
					url:'${pageContext.request.contextPath}/login',
					data:data
				})
				.success(function(data,status){
					console.log(data);
				})
				.error(function(data,status){
					console.log('status:'+status);
					$scope.errors.push(status);
				});
			}
		};
	}]);
</script>
<title>首页</title>
</head>
<body class="page_index">
	<!-- navbar -->
	<header id="header">
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

				<ul class="nav navbar-nav navbar-right"  id="header_me">
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
			<div class="other-warp login-wrap" ng-app="loginModule">
				<div data-minheight="58" class="single-panel clearfix"
					style="min-height: 275px;">
					<div class="single-panel-inner login-mini ng-scope">
						<div class="single-panel-header">
							<h3>登录</h3>
						</div>
						<div class="single-panel-body">
							<div class="single-panel-section">
								<form name="login_form" ng-submit="submit()"
									class="form-horizontal wt-form ng-pristine ng-invalid ng-invalid-required"
									ng-controller="loginCtrl" novalidate>
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="icon icon-user"></i></span> <input
												class="form-control ng-pristine ng-invalid ng-invalid-required valid"
												type="text" placeholder="输入用户名/邮箱" name="name"
												ng-model="signin.name" required>
										</div>
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon fs_17"><i
												class="icon icon-lock"></i></span> <input
												class="form-control ng-pristine ng-valid-minlength ng-invalid ng-invalid-required valid"
												type="password" placeholder="输入密码" name="password"
												ng-model="signin.password" required ng-minlength="5">
										</div>
									</div>

									<div class="form-group" ng-if="errors.length>0">
										<div class="alert alert-danger">
											<i class="icon-remove-sign mr_5"></i>{{errors[0]}}
										</div>
									</div>
									<div class="form-group">
										<input type="submit" class="btn btn-success btn-lg btn-block"
											ng-disabled="!login_form.$valid" value="登 录" />
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
			</div>
		</div>
	</div>
</body>
</html>