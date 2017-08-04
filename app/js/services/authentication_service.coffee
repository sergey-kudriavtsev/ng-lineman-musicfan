angular.module('app').factory 'AuthenticationService', ($http) ->
  # these routes map to stubbed API endpoints in config/server.js
  {
    usid: ''

    login: (credentials) ->
      $http.post '/login', credentials

    logout: ->
      $http.post '/logout'

  }
