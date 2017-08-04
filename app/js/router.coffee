angular.module('app').config ($routeProvider, $locationProvider) ->

  $locationProvider.html5Mode enabled: true

  $routeProvider.when '/login',
    templateUrl: 'login.html'
    controller: 'LoginController'

  $routeProvider.when '/home',
    templateUrl: 'home.html'
    controller: 'HomeController'

  $routeProvider.otherwise redirectTo: '/login'
  
  return
