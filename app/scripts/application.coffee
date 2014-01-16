'use strict'

@app = angular.module('echoes', ['ngResource','ngRoute'])

@app.config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode(true)
  $routeProvider
    .when '/:id?',
      controller: 'EntriesCtrl'
      templateUrl: 'views/entries.html'
