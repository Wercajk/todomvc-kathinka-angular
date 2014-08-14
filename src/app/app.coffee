angular.module('todomvcKathinkaAngular', [
  'ngRoute'
  'todomvcKathinkaAngular.todo'
  'todomvc-kathinka-angular-templates'
  'plRestmod'
])
.config ($routeProvider) ->
  'use strict'
  $routeProvider
    .when '/todo',
      controller: 'TodoCtrl'
      templateUrl: '/todomvc-kathinka-angular/todo/todo.html'
    .otherwise
      redirectTo: '/todo'
