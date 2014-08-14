angular
  .module 'todomvcKathinkaAngular.todo'
  .factory 'Todo', ($restmod) ->
      return $restmod.model 'http://kathinka.apiary-mock.com/todos'
  .controller 'TodoCtrl', ($scope, $window, Todo) ->
    'use strict'

    # Get all todos
    $scope.todos = Todo.$search()

    $scope.add = ->
      Todo.$create label: $scope.label

    $scope.check = ->
      todo = Todo.$find @todo.label
      todo.isDone = not @todo.isDone
      todo.$save()
