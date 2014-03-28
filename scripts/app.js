var app = angular.module('domainApp', ['ngResource']);

app.controller("usernameCtrl", ["$scope", "$log", "$resource",
	function ($scope, $log, $resource){
		$scope.username = "N/A"
		$log.info("Initialize username")


		var domainService = $resource('/api/faculties/:Faculty/timetables/:Id.json',
			{Faculty:'mmf', Id:'tt123'},
			{getTimetables: {method:'GET'

		$scope.load = function(){
		var domains = domainService.getTimetables(function(){
			$log.info("Get has passed" + domains[0])
			$scope.username = domains.username
			 }); 
		});
	}
	}])