angular.module('app').controller 'LoginController', ($scope, $location, AuthenticationService,LocalStoreService) ->
  $scope.credentials =
    username: ''
    password: ''

  onLoginSuccess = ->
    $location.path '/home'
    return

  $scope.login = ->
    AuthenticationService.login($scope.credentials).success onLoginSuccess
    return

  return
