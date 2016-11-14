angular.module('miApp')

.controller('productosCtrl', function($scope, $auth){
	$scope.usuario = {};
	//$scope.usuario = $auth.getPayload();
	$scope.usuario.nombre = "**Test**";
});