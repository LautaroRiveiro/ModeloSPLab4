angular.module('miApp')

.controller('menuCtrl', function($scope, usuario, $state, $auth){
	$scope.usuario = usuario.usuario;

	//Este parche cabeza es para evitar el error de que al refrescar, pierdo los datos en el Factory
	$scope.usuario = $auth.getPayload();

	$scope.Logout = function(){
		usuario.Salir();
	//	$state.go("login");
	}

	
});