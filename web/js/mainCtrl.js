angular.module('miApp')

.controller('mainCtrl', function($scope, usuario, $auth){
	//$scope.usuario = {};
	$scope.usuario = usuario.usuario;
	console.info("Factory Usuario: ", usuario);
	//Este parche cabeza es para evitar el error de que al refrescar, pierdo los datos en el Factory
	$scope.usuario = $auth.getPayload();
});