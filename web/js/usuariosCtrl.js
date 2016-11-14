angular.module('miApp')

.controller('usuariosCtrl', function($scope, $auth){
	$scope.usuario = {};
	//$scope.usuario = $auth.getPayload();
	$scope.usuario.nombre = "**Test**";
});