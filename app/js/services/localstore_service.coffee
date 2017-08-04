# service of Local Store
angular.module('app').factory 'LocalStoreService', ($q, $http,$rootScope, $localStorage, FavoriteResource) ->
  {


    initData: ->
      #TODO:Downloading user data from the default server!!
      $rootScope.data = $localStorage.$default({data:{}}).data

      #console.log FavoriteResource.get()
      console.log $rootScope.data
      return

    getData: ->
      $rootScope.data

    setDate: (item) ->
      id =  'g.' + (item.mbid or item.name)
      $rootScope.data[id.toString()] = item
      return


  }
