describe 'TodoCtrl', ->
  todoCtrl = null
  scope = null
  $httpBackend = null

  beforeEach module('todomvcKathinkaAngular')

  beforeEach inject ($injector) ->
    $httpBackend = $injector.get '$httpBackend'

  beforeEach inject ($injector) ->
    scope = $injector.get('$rootScope')
    scope.apiURL = 'http://0.0.0.0:3777/'

    todoCtrl = ->
      $injector.get('$controller')('TodoCtrl', $scope:scope)

  it 'should add new todos on add()', ->
    todoCtrl()

    todo =
      label: 'bread'
      isDone: false

    scope.label = todo.label
    scope.isDone = todo.isDone

    newTodo = scope.add()

    newTodo.label.should.equal todo.label
    newTodo.isDone.should.equal todo.isDone


  it 'should set isDone true on check()', ->
    todoCtrl()

    todo =
      label: 'bread'
      isDone: true

    scope.todo = todo

    updatedTodo = scope.check()
    updatedTodo.isDone.should.equal todo.isDone
