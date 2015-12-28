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
		controller : 'reportController'
	})

	.when('/getPatientByDisease/:diseaseName', {
		templateUrl : 'getPatientByDisease',
		controller : 'reportController'
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
		},
		getOverallDiseases : function() {
			return $http.get('/project/diseaseSymptom/getOverallDiseases');
		},
		getOverallPatients : function() {
			return $http.get('/project/diseaseSymptom/getOverallPatients');
		},
		getOverallHerbals : function() {
			return $http.get('/project/diseaseSymptom/getOverallHerbals');
		},
		getOverallSymptoms : function() {
			return $http.get('/project/diseaseSymptom/getOverallSymptoms');
		},
		getPatientByDisease : function(disease) {
			return $http.get('/project/diseaseSymptom/getPatientByDisease/'+disease);
		}
	}

});

/*
 * backendApp.controller('dashboardController', [ '$scope', 'reportService',
 * function($scope, reportService) {
 * 
 * $scope.getOverallStats = function() {
 * reportService.getOverallStats().success(function(data) { $scope.statRecords =
 * data; }); }
 * 
 * $scope.getOverallStats(); } ]);
 */

backendApp.controller('dashboardController', [ '$scope', 'reportService',
		function($scope, reportService) {

			$scope.getOverallStats = function() {
				reportService.getOverallStats().success(function(data) {
					$scope.statRecords = data;
				});
			}

			$scope.getOverallStats();

		} ]);

backendApp.controller('reportController', [ '$scope', '$routeParams',
		'reportService', function($scope, $routeParams, reportService) {

			$scope.getPatientByDisease = function(diseaseName) {
				alert(diseaseName);
				reportService.getPatientByDisease(diseaseName).success(function(data) {
					$scope.patientRecords = data;
				});
			}
			
			$scope.getGenericReports = function() {
				if ($routeParams.reportType == 'patient') {
					reportService.getOverallPatients().success(function(data) {
						$scope.patientRecords = data;
					});
				}
				if ($routeParams.reportType == 'disease') {

					reportService.getOverallDiseases().success(function(data) {
						$scope.diseaseRecords = data;
					});
				}

				if ($routeParams.reportType == 'herbal') {
					reportService.getOverallHerbals().success(function(data) {
						$scope.herbalRecords = data;
					});
				}

				if ($routeParams.reportType == 'symptom') {
					reportService.getOverallSymptoms().success(function(data) {
						$scope.symptomRecords = data;
					});
				}
			}
			/*if($routeParams.diseaseName!=null){
				$scope.getPatientByDisease();
			}*/
			$scope.getGenericReports();
		} ])
