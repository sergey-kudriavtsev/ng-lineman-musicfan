# Controller of search music artist
angular.module('app').controller 'SearchController', ($scope, $http, $rootScope, LocalStoreService) ->


  # Query completion flag
  $scope.q = {stop:false}

  # Query data items
  $scope.q.data = [];

  # Query parametrs
  $scope.q.query = {lm:10,startPage:1,total:0}

  #serch function
  $scope.search = ->

    $scope.q.data = [];

    #check length of text
    if $scope.q.artist.length < 3 or $scope.q.stop
      return

    #TODO: Create a content check in the text !!!

    $scope.q.stop = true


    key = '18a3cf93a5b4e89f173afbb2f2932f93'
    frm = 'json'

    prm = $scope.q.query

    url = 'https://ws.audioscrobbler.com/2.0/?method=artist.search&' +
      'artist='  + $scope.q.artist + '&api_key=' + key +
      '&format=' + frm + '&limit=' + prm.lm.toString() +
      '&page=' + prm.startPage.toString() + "&callback=JSON_CALLBACK"
    #console.log url

    promise = $http.jsonp(url)
    promise.success (data) ->
      $scope.q.stop = false

      if data.results == undefined
        return

      $scope.q.data = data.results.artistmatches.artist
      $scope.q.query = data.results["opensearch:Query"]
      $scope.q.query.lm = prm.lm
      $scope.q.query.total = data.results["opensearch:totalResults"]

      console.log $scope.q
      return

    return


  $scope.nexPage = ->
    $scope.q.query.startPage += 1
    $scope.search
    return

  $scope.addFavorites = LocalStoreService.setDate

  return
