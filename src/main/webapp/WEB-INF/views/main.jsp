<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="userApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Management</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="https://code.angularjs.org/1.5.0-rc.0/angular.min.js"></script>
<script src="https://code.angularjs.org/1.5.0-rc.0/angular-route.min.js"></script>
<script src="<spring:url value="/resources/js/userApp.js"/>"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />
</head>
<body>
	<header class="navbar navbar-static-top" id="top" role="banner">

	<div class="container">
		<header class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-3"
						ng-click="isCollapsed = !isCollapsed">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand visible-xs" href="#">UI Bootstrap</a>
				</div>
				<nav class="hidden-xs">
				<ul class="nav navbar-nav">
					<a href="/" role="button" class="navbar-brand">Ayurveda ++ </a>
					<li><a role="button" class="dropdown-toggle" href="#users">
							Users </a></li>
					<li><a href="#bookmark"><i class="fa fa-unlock"></i> Bookmark</a></li>
					<li ><a role="button" class="dropdown-toggle" href="#signUp">Sign Up </a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#home"><i class="fa fa-home"></i> Home</a></li>
					<li><a href="#login"><i class="fa fa-unlock"></i> Sign In</a></li>
					<li><a href="#about"><i class="fa fa-shield"></i> About</a></li>
					<li><a href="#contact"><i class="fa fa-comment"></i>
							Contact</a></li>
				</ul>
				</nav>

			</div>
		</div>
		</header>
		<div class="header-placeholder"></div>
	</div>
	</header>
	<div class="container">
		<div ng-view></div>
	</div>
</body>
</html>