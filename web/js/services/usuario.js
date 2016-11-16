angular.module('miApp')
.factory('usuario', function ($http, $auth, $location, $state){
	var usuario = {};
	usuario.nombreFactory = "factoriaUsuario";
	usuario.usuario = {};
	usuario.Salir = salir;
	usuario.getUsuario = getUsuario;
	usuario.Loguear = Loguear;

	function salir(){
	    $auth.logout()
        .then(function() {
            // Desconectamos al usuario y lo redirijimos
            $location.path("/login");
            //return;
        });
	};

	function getUsuario(){
		return usuario.usuario;
	};

	function Loguear(usuario){
		//$auth.login() hace una llamada de tipo POST al $authProvider.loginUrl establecido en app.js
		//Al combinarlo con Slim Framework es necesario configurar $app->post() y no otro.
		$auth.login(usuario)
		.then(function(resp){
			if($auth.isAuthenticated()){
				console.info("response: ", resp);
				console.info("getPayload: ", $auth.getPayload());
				usuario.usuario = $auth.getPayload();
				//console.info("AAA: ", usuario);
				//$state.go("main.menu");
				$location.path("/main/menu");
			}
			else{
				console.log("Usuario o contraseña incorrecta");
				console.log(resp);
				usuario.password = "";
			}
		})
		.catch(function(error){
			//Error durante logueo
			console.info("Error de conexión", error);
		});
	};


	return usuario;
});