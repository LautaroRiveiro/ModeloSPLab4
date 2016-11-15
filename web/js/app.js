var app = angular.module("miApp", ['ui.router', 'satellizer', 'ui.grid', 'encuesta.controller', 'login.controllers']);

app.config(function($stateProvider, $urlRouterProvider, $authProvider){
	
    //Configuración del ui-router
	$stateProvider
        .state('inicio', {
            url: '',
            templateUrl: 'templates/inicio.html'
        })
        .state('login', {
        	url: '/login',
        	templateUrl: 'templates/login.html',
            controller: 'loginCtrl'
        })
        .state('main', {
            url: '/main',
            templateUrl: 'templates/main.html',
            controller: 'mainCtrl'
        })
        .state('main.productos', {
            url: '/productos',
            templateUrl: 'templates/productos.html',
            controller: 'productosCtrl'
        })
        .state('main.usuarios', {
            url: '/usuarios',
            templateUrl: 'templates/usuarios.html',
            controller: 'usuariosCtrl'
        })
        .state('main.menu', {
            url: '/menu',
            templateUrl: 'templates/menu.html',
            controller: 'menuCtrl'
        })
        .state('main.cliente', {
            url: '/cliente',
            templateUrl: 'templates/cliente.html'
        })
        .state('encuesta', {
            url: '/encuesta',
            templateUrl: 'templates/encuesta.html',
            controller: 'encuestaCtrl'
        })
	
	$urlRouterProvider.otherwise('');


    //Configuración del Satellizer
    $authProvider.loginUrl = "ModeloSPLab4/ws/auth/login";
    $authProvider.signupUrl = "ModeloSPLab4/ws/auth/signup";
    $authProvider.tokenName = "miToken";
    $authProvider.tokenPrefix = "miApp";
    $authProvider.authHeader = 'data';


});