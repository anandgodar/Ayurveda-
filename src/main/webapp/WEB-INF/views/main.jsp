<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en" ng-app="userApp">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Ayurveda++ : Devfest</title>
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="https://code.angularjs.org/1.5.0-rc.0/angular.min.js"></script>
<script src="https://code.angularjs.org/1.5.0-rc.0/angular-route.min.js"></script>
<script src="<spring:url value="/resources/js/userApp.js"/>"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />
<link href="<spring:url value="/resources/css/styles.css"/>"
	rel="stylesheet">
</head>
<body>
	<!-- begin template -->
	<div class="navbar navbar-custom navbar-fixed-top">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Ayurveda ++ </a> <a
				class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#login"><i class="fa fa-unlock"></i> Sign In</a></li>
				<li><a href="#about"><i class="fa fa-shield"></i> About</a></li>
				<li><a href="#diseaseSymptoms"><i class="fa fa-comment"></i>
						Disease</a></li>
				<li><a href="#users"><i class="fa fa-user"></i> Signup</a></li>
			</ul>
			<form class="navbar-form" action="admin/verify" method="post">
				<div class="form-group" style="display: inline;">
					<div class="input-group">
						<div class="input-group-btn">
							<!-- <button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<span class="glyphicon glyphicon-chevron-down"></span>
							</button> -->
							<!-- <ul class="dropdown-menu">
								<li><a href="#">Category 1</a></li>
								<li><a href="#">Category 2</a></li>
								<li><a href="#">Category 3</a></li>
								<li><a href="#">Category 4</a></li>
								<li><a href="#">Category 5</a></li>
							</ul> -->
						</div>
						
							<div class="form-group">
								<label class="sr-only" for="exampleInputEmail3">Username</label> <input type="text" class="form-control"
									id="" placeholder="Username" name="username">
							</div>&nbsp;
							<div class="form-group">
								<label class="sr-only" for="exampleInputPassword3">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword3" placeholder="Password" name="password">
							</div>
							
							<input type="submit" class="btn btn-default" name="submit" value="Sign in">
						
					</div>
				</div>
			</form>
		</div>
	</div>

	<div id="map-canvas">
		<div class="col-md-8">

			<div class="account-wall well">
				<img class="profile-img"
					src="<spring:url value="/resources/slider/img/ayurveda.jpg"/>"
					alt="" height="225px" width="225px">
					
				
			</div>
			<div class="account-wall well">
				<img class="profile-img"
					src="<spring:url value="/resources/slider/img/Ayurvedic-medicine-for-weight-gain.jpg"/>"
					alt="" height="225px" width="225px">
					
				
			</div>
			<div class="account-wall well">
				<img class="profile-img"
					src="<spring:url value="/resources/slider/img/ayurveda.jpg"/>"
					alt="" height="225px" width="225px">
					
				
			</div>
		</div>
	</div>
	<div class="container-fluid" id="main" ng-view></div>
	<!-- end template -->


</body>
</html>