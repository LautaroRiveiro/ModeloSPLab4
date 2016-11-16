angular.module('miApp')

.controller('usuariosCtrl', function($scope, $http, usuario){

	$scope.estado = {};
	$scope.user = usuario.usuario;

	$http.get("http://localhost/ModeloSPLab4/ws/usuarios")
	.then(function(data){
		console.info("Data: ", data);
		console.info("Usuarios: ", data.data.usuarios);
		$scope.usuarios = data.data.usuarios;
	}, function(error){
		console.info("Error: ", error);
	});

	$scope.Modificar = function(usuario){
		console.info(usuario);
		$scope.usuario = usuario;
		$scope.estado.habilitarEdicion = true;
	};

	$scope.Eliminar = function(id){
		console.info(id);
		if(confirm("Eliminar #" + id + "?")){
            
            $http.delete("http://localhost/ModeloSPLab4/ws/usuarios/"+id)
            .then(function(data){
                console.info("Usuarios: ", data);
                //alert(data.data.mensaje);
                location.reload();
            }, function(error){
                alert("Error");
                console.info("Error: ", error);
            });
        };
	};

	$scope.Aceptar = function(usuario){
		console.info(usuario);

        $http.put("http://localhost/ModeloSPLab4/ws/usuarios/"+JSON.stringify(usuario))
        .then(function(data){
            console.info("Usuarios: ", data);
            //alert(data.data.mensaje);
            location.reload();
        }, function(error){
            alert("Error");
            console.info("Error: ", error);
        });
	};

	$scope.Cancelar = function(){
		$scope.estado.habilitarEdicion = false;
	};
});