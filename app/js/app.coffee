angular.module('app', [
  'ngResource'
  'ngRoute'
  'ngStorage'
]).run ($rootScope) ->
  # adds some basic utilities to the $rootScope for debugging purposes

  $rootScope.log = (thing) ->
    console.log thing
    return

  $rootScope.alert = (thing) ->
    alert thing
    return

  return
