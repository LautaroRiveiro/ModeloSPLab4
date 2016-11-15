angular.module('miApp')

.controller('productosCtrl', function($scope, $http){
    // Objeto de configuracion de la grilla.
    $scope.gridOptions = {};

    $http.get("http://localhost/ModeloSPLab4/ws/productos")
    .then(function(data){
    	console.info("Productos: ", data);
    	console.info("Productos: ", data.data.productos);
    	// Cargo los datos en la grilla.
		$scope.gridOptions.data = data.data.productos;	
    }, function(error){
    	alert("Error");
    	console.info("Error: ", error);
    })
});