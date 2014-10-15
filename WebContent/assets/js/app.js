var loginModule = angular.module('loginModule',[]);
loginModule.config(['$httpProvider', '$provide',function ($httpProvider,$provide) {    
	$provide.value("webRoot", $("#linkRoot").attr("href"));
	//$httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
	$httpProvider.defaults.headers.post['Content-Type'] = 'text/html; charset=utf-8';
}]);
loginModule.controller('loginCtrl',['$scope','$http','webRoot',function ($scope,$http,root){
	$scope.signin_user = {name:"",password:""};
	$scope.errors = [];
	$scope.submit = function(){
		//console.log("path:"+$location.path());
		if($scope.login_form.$valid){
			var data ="name="+$scope.signin_user.name+"&password="+$scope.signin_user.password;
			console.log(data);
			$http({
				method:'post',
				url:root+'/login',
				data:$scope.signin_user
			})
			.success(function(data,status){
				console.log(data);
			})
			.error(function(data,status){
				console.log('status:'+status);
			});
		}
	};
}]);