# Controller of search music artist
angular.module('app').controller 'FavoriteContentController', ($scope, $http,$rootScope ) ->

  $scope.data = $rootScope.data

  return
