angular.module('miApp')

.controller('mainCtrl', function($scope, usuario){
	//$scope.usuario = {};
	$scope.usuario = usuario.usuario;
	console.info("Factory Usuario: ", usuario);
});