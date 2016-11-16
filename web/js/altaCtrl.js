angular.module('miApp')
.controller('altaCtrl', function($scope, $http){
	$scope.producto = {};
	$scope.producto.importado = true;

	$scope.estado = {};

	//Datos Test
	$scope.producto.nombre = "Test";
	$scope.producto.seccion = "OFICINA";
	$scope.producto.pais = "CHINA";
	$scope.producto.importado = true;
	$scope.producto.precio = 10.50;

	$scope.Nacional = function(){
		if ($scope.estado.nacional){
			$scope.producto.pais = "ARGENTINA";
			$scope.producto.importado = false;
		}
		else{
			$scope.producto.pais = "";
			$scope.producto.importado = true;
		}
	};
	
	$scope.Cargar = function(){
		$http.post("http://localhost/ModeloSPLab4/ws/productos/alta/"+JSON.stringify($scope.producto))
		.then(function(data){
			console.info("Datos: ", data);
			alert("Carga realizada con éxito");
			for (var campo in $scope.producto) {
			    $scope.producto[campo] = "";
			}
		}, function(error){
			console.info("Error: ", error);
		});
	};
});