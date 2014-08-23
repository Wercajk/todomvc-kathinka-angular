angular.module('todomvcKathinkaAngular', [
  'ngRoute'
  'todomvcKathinkaAngular.todo'
  'todomvc-kathinka-angular-templates'
  'plRestmod'
])
.run ($rootScope) ->
  $rootScope.apiURL = 'http://0.0.0.0:3777/'
.config ($routeProvider) ->
  'use strict'
  $routeProvider
    .when '/todo',
      controller: 'TodoCtrl'
      templateUrl: '/todomvc-kathinka-angular/todo/todo.html'
    .otherwise
      redirectTo: '/todo'
