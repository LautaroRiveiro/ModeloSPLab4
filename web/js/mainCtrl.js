angular.module('miApp')

.controller('mainCtrl', function($scope, $auth){
	//$scope.usuario = {};
	$scope.usuario = $auth.getPayload();
	//$scope.usuario.nombre = "**Test**";
});