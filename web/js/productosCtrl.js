angular.module('miApp')

.controller('productosCtrl', function($scope, $http, usuario, $auth){
    $scope.user = usuario.usuario;

    //Este parche cabeza es para evitar el error de que al refrescar, pierdo los datos en el Factory
    $scope.user = $auth.getPayload();

    // Objeto de configuracion de la grilla.
    $scope.gridOptions = {};
    $scope.gridOptions.paginationPageSizes = [10, 50, 75];
    $scope.gridOptions.paginationPageSize = 10;
    //$scope.gridOptions.columnDefs.push({ field: 'company', enableSorting: false });
    $scope.gridOptions.columnDefs = columnDefs();

    console.info("Grilla: ", $scope.gridOptions);

    function columnDefs(){
        if ($scope.user.perfil == "comprador"){
            return [
                { field: 'id', name: '#'},
                { field: 'nombre'},
                { field: 'seccion'},
                { field: 'precio'},
                { field: 'importado'},
                { field: 'pais'},
                { field: 'fecha'} //,
                //{ field: 'Boton', displayName: 'Boton', width: '100', cellTemplate:"<button class='btn btn-info btn-sm' ng-click='grid.appScope.Modificar(row.entity)'>MODIFICAR</button>"}
            ];
        } else{
            return [
                { field: 'id', name: '#'},
                { field: 'nombre'},
                { field: 'seccion'},
                { field: 'precio'},
                { field: 'importado'},
                { field: 'pais'},
                { field: 'fecha'},
                //{ field: 'Boton', displayName: 'Boton', width: '100', cellTemplate:"<button class='btn btn-info btn-sm' ng-click='grid.appScope.Modificar(row.entity)'>MODIFICAR</button>"},
                { field: 'Boton', displayName: 'Boton', width: '100', cellTemplate:"<button class='btn btn-danger btn-sm' ng-click='grid.appScope.Eliminar(row.entity)'>ELIMINAR</button>"}
            ];
        };
    };

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


    $scope.Modificar = function(row){
        alert("Va a modificar #" + row.id);
        console.info("Row: ", row);
    }

    $scope.Eliminar = function(row){
        if(confirm("Eliminar #" + row.id + "?")){
            
            $http.delete("http://localhost/ModeloSPLab4/ws/productos/eliminar/"+row.id)
            .then(function(data){
                console.info("Productos: ", data);
                //alert(data.data.mensaje);
                location.reload();
            }, function(error){
                alert("Error");
                console.info("Error: ", error);
            });
        };
    }
});