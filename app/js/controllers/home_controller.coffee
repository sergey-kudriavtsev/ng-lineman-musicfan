angular.module('app').controller 'HomeController', ($scope, $location, AuthenticationService, LocalStoreService) ->
  $scope.title = 'Home'
  $scope.message = 'Mouse Over these images to see a directive at work'

  LocalStoreService.initData()

  onLogoutSuccess = (response) ->
    $location.path '/login'
    return

  $scope.logout = ->
    AuthenticationService.logout().success onLogoutSuccess
    return

  return
