var userApp = angular.module('userApp', [ 'ngRoute' ]);

userApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider

	// route for the home page
	.when('/home', {
		templateUrl : 'home',
		controller : 'mainController'
	})

	// route for the about page
	.when('/about', {
		templateUrl : 'about',
		controller : 'aboutController'
	})

	.when('/users', {
		templateUrl : 'users',
		controller : 'userController'
	})

	// route for the about page
	.when('/bookmark', {
		templateUrl : 'bookmark',
		controller : 'bookmarkController'
	})

	.when('/signUp', {
		templateUrl : 'signUp',
		controller : 'signUpController'
	})

	// route for the contact page
	.when('/contact', {
		templateUrl : 'contact',
		controller : 'contactController'
	})

	.when('/login', {
		templateUrl : 'login',
		controller : 'userController'
	});

	$routeProvider.otherwise({
		redirectTo : '/home'
	});

} ]);

userApp.controller('bookmarkController', function($scope) {
	$scope.bookmark = "this is bookmark page";
})

userApp.factory('userService', function($http) {
	var self = this;
	return {
		getAllUsers : function() {
			return $http.get('user/getAllUsers');
		},
		addUser : function(userData) {

			return $http.post('user/saveUser', userData);
		},
		deleteUser : function(id) {
			return $http.d('/user/deleteUser/' + id);
		}
	}

});

userApp.controller('userController', function($scope, userService) {
	$scope.user = {};
	$scope.findAllUsers = function() {
		userService.getAllUsers().success(function(data) {
			$scope.userRecords = data;
		});
	}

	$scope.add = function() {

		if ($scope.user) {
			userService.addUser($scope.user).success(function(data) {

				$scope.formData = {}; // clear the form so our user is ready
										// to
				$scope.findAllUsers();

			});
		}
	}

	$scope.updateUser = function(user) {
		
		$scope.user = user;
	}
	
	

	$scope.findAllUsers();

});
