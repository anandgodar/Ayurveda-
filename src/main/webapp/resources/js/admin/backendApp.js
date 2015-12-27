var backendApp = angular.module('backendApp', [ 'ngRoute' ]);

backendApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider
	// route for the home page
	.when('/innerdashboard', {
		templateUrl : 'innerdashboard',
		controller : 'dashboardController'
	})
	
	
	$routeProvider.otherwise({
		redirectTo : '/innerdashboard'
	});

} ]);

backendApp.controller('dashboardController', ['$scope',function($scope) {
	
	$scope.name= "Anandg";

}]);


