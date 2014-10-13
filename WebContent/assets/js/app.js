var validationApp = angular.module('validationApp',[]);
var errors ={msg:""};
validationApp.controller('user_login_ctrl',function ($scope){
	$scope.signin_user = {name:"",password:""};
	$scope.errors = errors;
	$scope.submitForm = function(){
		alert("xxx");
	}
});