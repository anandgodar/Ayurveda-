var essentialApp = angular.module('essentialApp', ['ngRoute']);

essentialApp.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/', {
		templateUrl : 'home',
		controller : 'homeController'
	})

	// route for the about page
	.when('/expenses', {
		templateUrl : 'expenses',
		controller : 'mainController'
	})

	// route for the contact page
	.when('/todo', {
		templateUrl : 'expenses',
		controller : 'main1Controller'
	})

	.otherwise({
		redirectTo : 'home'
	});
} ]);

essentialApp.controller('homeController', function($scope) {
	$scope.message = "Welcome to Contact Page";
	//$scope.items = Model.notes();
	/*$scope.mycontacts = [ {
		"name" : "Anand Godar",
		"age" : 30
	}, {
		"name" : "Ram thapa",
		"age" : 45
	}, {
		"name" : "Jiwan Gurung",
		"age" : 29
	} ]*/
});

essentialApp.controller('mainController', function($scope) {
	$scope.message = "Welcome to About Us Page";

});

essentialApp.controller('main1Controller', ['$scope','$log', function ($scope,$log) {
    $scope.message= "Nepal";
    console.log($scope.message);
}]);
