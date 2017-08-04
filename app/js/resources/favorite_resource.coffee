angular.module('app').factory 'FavoriteResource', ($q, $resource, AuthenticationService) ->
  $resource '/api/my_favorite&usid=' + AuthenticationService.usid
