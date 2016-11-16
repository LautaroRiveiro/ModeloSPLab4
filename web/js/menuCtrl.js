angular.module('miApp')

.controller('menuCtrl', function($scope, usuario, $state){
	$scope.usuario = usuario.usuario;

	$scope.Logout = function(){
		usuario.Salir();
	//	$state.go("login");
	}

	
});