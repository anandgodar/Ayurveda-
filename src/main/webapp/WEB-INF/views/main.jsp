<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en" ng-app="userApp">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>2 column Google maps, foursquare (outer scroll)</title>
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
				<li><a href="#users"><i class="fa fa-user"></i> User</a></li>
			</ul>
			<form class="navbar-form" action="admin/verify" method="post">
				<div class="form-group" style="display: inline;">
					<div class="input-group">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<span class="glyphicon glyphicon-chevron-down"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Category 1</a></li>
								<li><a href="#">Category 2</a></li>
								<li><a href="#">Category 3</a></li>
								<li><a href="#">Category 4</a></li>
								<li><a href="#">Category 5</a></li>
							</ul>
						</div>
						
							<div class="form-group">
								<label class="sr-only" for="exampleInputEmail3">Username</label> <input type="text" class="form-control"
									id="" placeholder="Username" name="username">
							</div>
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

			<div class="account-wall">
				<img class="profile-img"
					src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
					alt="">
				<form class="form-signin">
					<input type="text" class="form-control" placeholder="Email"
						required autofocus> <input type="password"
						class="form-control" placeholder="Password" required>
					<button class="btn btn-lg btn-primary btn-block" type="submit">
						Sign in</button>
					<label class="checkbox pull-left"> <input type="checkbox"
						value="remember-me"> Remember me
					</label> <a href="#" class="pull-right need-help">Need help? </a><span
						class="clearfix"></span>
				</form>
			</div>
			<a href="#" class="text-center new-account">Create an account </a>
		</div>
	</div>
	<div class="container-fluid" id="main" ng-view></div>
	<!-- end template -->


</body>
</html>