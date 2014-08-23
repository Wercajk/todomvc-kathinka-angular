angular
  .module 'todomvcKathinkaAngular.todo'
  .factory 'Todo', ($restmod, $rootScope) ->
    $restmod.model $rootScope.apiURL + 'todos'
  .controller 'TodoCtrl', ($scope, $window, Todo) ->
    'use strict'

    # Get all todos
    $scope.todos = Todo.$search()

    $scope.add = ->
      Todo.$create
        label: $scope.label
        isDone: $scope.isDone


    $scope.check = ->
      checkedTodo = Todo.$find $scope.todo.label
      checkedTodo.isDone = $scope.todo.isDone
      checkedTodo.$save()
