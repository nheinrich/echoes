'use strict'

@app.controller 'EntriesCtrl', ($scope, $routeParams, Entries) ->
  $scope.entries = Entries.query ->

    if $routeParams.id
      $scope.select($scope.entries[($routeParams.id - 1)])
    else
      $scope.select($scope.entries[$scope.entries.length - 1])

  $scope.select = (entry) ->
    $scope.entry = entry
    $scope.id = $scope.entry.id
