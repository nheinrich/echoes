'use strict'

describe 'Controller: EntriesCtrl', () ->

  # load the controller's module
  beforeEach module 'echoes'

  EntriesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    EntriesCtrl = $controller 'EntriesCtrl', {
      $scope: scope
    }

  it 'should attach a list of entries to the scope', () ->
    expect(scope.entries).toExist
