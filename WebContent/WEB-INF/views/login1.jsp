<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/WEB-INF/views/common/tag.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="/WEB-INF/views/common/js.jsp"%>
<%@include file="/WEB-INF/views/common/css.jsp"%>
<script type="text/javascript" src="${ctx}/assets/js/app.js"></script>
<title>首页</title>
</head>
<body class="page_index">
	<!-- navbar -->
	<!-- end narbar -->
	<div id="wrap-all">
		<div class="single-panel-section" style="margin-top: 40px;" ng-app="loginModule">
			<form name="login_form" ng-submit="submit()"
				class="form-horizontal wt-form ng-pristine ng-invalid ng-invalid-required"
				ng-controller="loginCtrl" novalidate>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><i class="icon icon-user"></i></span>
						<input
							class="form-control ng-pristine ng-invalid ng-invalid-required valid"
							type="text" placeholder="输入用户名/邮箱" name="login_name"  ng-minlength="4" ng-maxlength="15"
							ng-model="signin.name" required>
					</div>
				</div>

				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon fs_17"><i
							class="icon icon-lock"></i></span> <input
							class="form-control ng-pristine ng-valid-minlength ng-invalid ng-invalid-required valid"
							type="password" placeholder="输入密码" name="login_password"
							ng-model="signin.password" required ng-minlength="5">
					</div>
				</div>

				<div class="form-group" ng-if="errors.length>0">
					<div class="alert alert-danger">
						<i class="icon-remove-sign mr_5"></i>
					</div>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-success btn-lg btn-block"
						ng-disabled="!login_form.$valid" value="登 录" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>