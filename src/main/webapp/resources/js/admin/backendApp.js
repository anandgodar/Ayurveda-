var backendApp = angular.module('backendApp', [ 'ngRoute' ]);

backendApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider
	// route for the home page
	.when('/innerdashboard', {
		templateUrl : 'innerdashboard',
		controller : 'dashboardController'
	})
	
	.when('/subreport/:reportType', {
		templateUrl : 'subreport',
		controller : 'dashboardController'
	})
	
	
	$routeProvider.otherwise({
		redirectTo : '/innerdashboard'
	});

} ]);

backendApp.factory('reportService', function($http) {
	var self = this;
	return {
		getOverallStats : function() {
			return $http.get('/project/diseaseSymptom/getOverallStats');
		}
	}

});

backendApp.controller('dashboardController', ['$scope','reportService',function($scope,reportService) {
	
	$scope.getOverallStats = function() {
		reportService.getOverallStats().success(function(data) {
			$scope.statRecords = data;
		});
	}
	
	$scope.getOverallStats();

}]);


