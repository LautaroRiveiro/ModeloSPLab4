angular.module('miApp')
	.directive('modificarUsuario',function(){
		return {
			restrict:"AECM",
			replace:true,
			templateUrl:"templates/modificarUsuario.html"
		}
	})