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
<link href="${ctx}/assets/css/base_common.css" rel="stylesheet" />
<link href="${ctx}/assets/css/base_outer.css" rel="stylesheet" />
<link id="linkRoot" href="/cloudaction">
<script type="text/javascript">
	/* angular.module('loginModule').config(['$httpProvider', '$provide',function ($httpProvider,$provide) {    
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
					//console.log("success:"+data);
					window.location.href ='${pageContext.request.contextPath}';
				})
				.error(function(data,status){
					console.log('error:'+status);
					$scope.errors.push(status);
				});
			}
		};
	}]); */
</script>
<title>首页</title>
</head>
<body class="page_index">
	<!-- navbar -->
	<c:import url="common/header.jsp"></c:import>
	<!-- end narbar -->
	<div id="wrap-all">
		<div id="main" class="inner">
			<div class="other-warp login-wrap">
				<div data-minheight="58" class="single-panel clearfix"
					style="min-height: 275px;">
					<div class="single-panel-inner login-mini ng-scope">
						<div class="single-panel-header">
							<h3>登录</h3>
						</div>
						<div class="single-panel-body">
							<div class="single-panel-section">
								<form name="login_form"  method="post" action="${ctx }/login"
									class="form-horizontal wt-form ng-pristine ng-invalid ng-invalid-required">
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="icon icon-user"></i></span> <input
												class="form-control ng-pristine ng-invalid ng-invalid-required valid"
												type="text" placeholder="输入用户名/邮箱" name="name" >
										</div>
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon fs_17"><i
												class="icon icon-lock"></i></span> <input
												class="form-control ng-pristine ng-valid-minlength ng-invalid ng-invalid-required valid"
												type="password" placeholder="输入密码" name="password" >
										</div>
									</div>
									
									<c:if test=" ${CoreLoginFailure ne '' }">
										<div class="form-group">
										<div class="alert alert-danger">
											<i class="icon-remove-sign mr_5"></i>${CoreLoginFailure}
										</div>
									</div>
									</c:if>
									
									
									<div class="form-group">
										<input type="submit" class="btn btn-success btn-lg btn-block"
											value="登 录" />
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