<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en" ng-app="backendApp">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Analytics Dashboard · Ayurveda</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Google Font: Open Sans -->
<link rel="stylesheet"
	href="<spring:url value="/resources/css/admin/css"/>">
<link rel="stylesheet"
	href="<spring:url value="/resources/css/admin/css(1)"/>">

<!-- Font Awesome CSS -->
<%--   <link rel="stylesheet" href="<spring:url value="/resources/css/admin/font-awesome.min.css"/>"> --%>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<spring:url value="/resources/css/admin/bootstrap.min.css"/>">

<script src="<spring:url value="/resources/js/admin/jquery.js"/>"></script>
<script src="<spring:url value="/resources/js/admin/bootstrap.min.js"/>"></script>

<script
	src="<spring:url value="/resources/js/admin/jquery.slimscroll.min.js"/>"></script>

<!-- App CSS -->
<link rel="stylesheet"
	href="<spring:url value="/resources/css/admin/mvpready-admin.css"/>">
<!-- <link rel="stylesheet" href="./css/custom.css"> -->
<script src="https://code.angularjs.org/1.5.0-rc.0/angular.min.js"></script>
<script src="https://code.angularjs.org/1.5.0-rc.0/angular-route.min.js"></script>
<script src="<spring:url value="/resources/js/admin/backendApp.js"/>"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<style type="text/css"></style>
</head>

<body>

	<div id="wrapper">

		<header class="navbar" role="banner">

			<div class="container">

				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <i
							class="fa fa-cog"></i>
					</button>

					<a href=""> </a>
				</div>
				<!-- /.navbar-header -->

				<nav class="collapse navbar-collapse" role="navigation">

					<ul class="nav navbar-nav navbar-left">

						<li class="dropdown navbar-notification"><a
							href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-bell navbar-notification-icon"></i> <span
								class="visible-xs-inline">&nbsp;Notifications</span> <b
								class="badge badge-primary">3</b>
						</a>

							<div class="dropdown-menu">

								<div class="dropdown-header">&nbsp;Notifications</div>

								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 225px;">
									<div class="notification-list"
										style="overflow: hidden; width: auto; height: 225px;">

										<a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
											class="notification"> <span class="notification-icon"><i
												class="fa fa-cloud-upload text-primary"></i></span> <span
											class="notification-title">Notification Title</span> <span
											class="notification-description">Praesent dictum nisl
												non est sagittis luctus.</span> <span class="notification-time">20
												minutes ago</span>
										</a>
										<!-- / .notification -->

										<a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
											class="notification"> <span class="notification-icon"><i
												class="fa fa-ban text-secondary"></i></span> <span
											class="notification-title">Notification Title</span> <span
											class="notification-description">Lorem ipsum dolor sit
												amet, consectetur adipisicing elit...</span> <span
											class="notification-time">20 minutes ago</span>
										</a>
										<!-- / .notification -->

										<a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
											class="notification"> <span class="notification-icon"><i
												class="fa fa-warning text-tertiary"></i></span> <span
											class="notification-title">Storage Space Almost Full!</span>
											<span class="notification-description">Praesent dictum
												nisl non est sagittis luctus.</span> <span
											class="notification-time">20 minutes ago</span>
										</a>
										<!-- / .notification -->

										<a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
											class="notification"> <span class="notification-icon"><i
												class="fa fa-ban text-danger"></i></span> <span
											class="notification-title">Sync Error</span> <span
											class="notification-description">Lorem ipsum dolor sit
												amet, consectetur adipisicing elit...</span> <span
											class="notification-time">20 minutes ago</span>
										</a>
										<!-- / .notification -->

									</div>
									<div class="slimScrollBar"
										style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(0, 0, 0);"></div>
									<div class="slimScrollRail"
										style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
								</div>
								<!-- / .notification-list -->

								<a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
									class="notification-link">View All Notifications</a>

							</div> <!-- / .dropdown-menu --></li>



						<li class="dropdown navbar-notification"><a
							href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-envelope navbar-notification-icon"></i> <span
								class="visible-xs-inline">&nbsp;Messages</span>
						</a>

							<div class="dropdown-menu">

								<div class="dropdown-header">Messages</div>

								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 225px;">
									<div class="notification-list"
										style="overflow: hidden; width: auto; height: 225px;">

										<a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
											class="notification">
											<div class="notification-icon">
												<img src="" alt="">
											</div>
											<div class="notification-title">New Message</div>
											<div class="notification-description">Praesent dictum
												nisl non est sagittis luctus.</div>
											<div class="notification-time">20 minutes ago</div>
										</a>
										<!-- / .notification -->

										<a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
											class="notification">
											<div class="notification-icon">
												<img src="" alt="">
											</div>
											<div class="notification-title">New Message</div>
											<div class="notification-description">Lorem ipsum dolor
												sit amet, consectetur adipisicing elit...</div>
											<div class="notification-time">20 minutes ago</div>
										</a>
										<!-- / .notification -->

										<a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
											class="notification">
											<div class="notification-icon">
												<img src="" alt="">
											</div>
											<div class="notification-title">New Message</div>
											<div class="notification-description">Lorem ipsum dolor
												sit amet, consectetur adipisicing elit...</div>
											<div class="notification-time">20 minutes ago</div>
										</a>
										<!-- / .notification -->

										<a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
											class="notification">
											<div class="notification-icon">
												<img src="" alt="">
											</div>
											<div class="notification-title">New Message</div>
											<div class="notification-description">Lorem ipsum dolor
												sit amet, consectetur adipisicing elit...</div>
											<div class="notification-time">20 minutes ago</div>
										</a>
										<!-- / .notification -->

									</div>
									<div class="slimScrollBar"
										style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(0, 0, 0);"></div>
									<div class="slimScrollRail"
										style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
								</div>
								<!-- / .notification-list -->

								<a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
									class="notification-link">View All Messages</a>

							</div> <!-- / .dropdown-menu --></li>


						<li class="dropdown navbar-notification empty"><a
							href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-warning navbar-notification-icon"></i> <span
								class="visible-xs-inline">&nbsp;&nbsp;Alerts</span>
						</a>

							<div class="dropdown-menu">

								<div class="dropdown-header">Alerts</div>

								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 225px;">
									<div class="notification-list"
										style="overflow: hidden; width: auto; height: 225px;">

										<h4 class="notification-empty-title">No alerts here.</h4>
										<p class="notification-empty-text">Check out what other
											makers are doing on Explore!</p>

									</div>
									<div class="slimScrollBar"
										style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(0, 0, 0);"></div>
									<div class="slimScrollRail"
										style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
								</div>
								<!-- / .notification-list -->

								<a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html"
									class="notification-link">View All Alerts</a>

							</div> <!-- / .dropdown-menu --></li>

					</ul>



					<ul class="nav navbar-nav navbar-right">

						<li><a href="javsacript:;">Projects</a></li>

						<li><a href="javascript:;">Support</a></li>

						<li class="dropdown navbar-profile"><a
							class="dropdown-toggle" data-toggle="dropdown"
							href="javascript:;"> <img src=""
								class="navbar-profile-avatar" alt=""> <span
								class="visible-xs-inline">@peterlandt &nbsp;</span> <i
								class="fa fa-caret-down"></i>
						</a>

							<ul class="dropdown-menu" role="menu">

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-profile.html">
										<i class="fa fa-user"></i> &nbsp;&nbsp;My Profile
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-pricing-plans.html">
										<i class="fa fa-dollar"></i> &nbsp;&nbsp;Plans &amp; Billing
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-settings.html">
										<i class="fa fa-cogs"></i> &nbsp;&nbsp;Settings
								</a></li>

								<li class="divider"></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/account-login.html">
										<i class="fa fa-sign-out"></i> &nbsp;&nbsp;Logout
								</a></li>

							</ul></li>

					</ul>

				</nav>

			</div>
			<!-- /.container -->

		</header>


		<div class="mainnav ">

			<div class="container">

				<a class="mainnav-toggle" data-toggle="collapse"
					data-target=".mainnav-collapse"> <span class="sr-only">Toggle
						navigation</span> <i class="fa fa-bars"></i>
				</a>

				<nav class="collapse mainnav-collapse" role="navigation">

					<form class="mainnav-form" role="search">
						<input type="text"
							class="form-control input-md mainnav-search-query"
							placeholder="Search">
						<button class="btn btn-sm mainnav-form-btn">
							<i class="fa fa-search"></i>
						</button>
					</form>

					<ul class="mainnav-menu">

						<li class="dropdown active"><a
							href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/index.html"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"> Dashboards <i class="mainnav-caret"></i>
						</a>

							<ul class="dropdown-menu" role="menu">
								<li><a href="#innerdashboard"> <i
										class="fa fa-dashboard dropdown-icon "></i> Analytics
										Dashboard
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/dashboard-2.html">
										<i class="fa fa-dashboard dropdown-icon "></i> Sidebar
										Dashboard
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/dashboard-3.html">
										<i class="fa fa-dashboard dropdown-icon "></i> Reports
										Dashboard
								</a></li>
							</ul></li>


						<li class="dropdown"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"> Components <i class="mainnav-caret"></i>
						</a>

							<ul class="dropdown-menu" role="menu">

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/components-tabs.html">
										<i class="fa fa-bars dropdown-icon "></i> Tabs &amp;
										Accordions
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/components-popups.html">
										<i class="fa fa-calendar-o dropdown-icon "></i> Popups &amp;
										Alerts
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/form-plugins.html">
										<i class="fa fa-plug dropdown-icon "></i> Forms Plugins
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/components-datatables.html">
										<i class="fa fa-table dropdown-icon "></i> Data Tables
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/components-charts.html">
										<i class="fa fa-bar-chart-o dropdown-icon "></i> Charts
								</a></li>
							</ul></li>


						<li class="dropdown"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"> Demo Pages <i class="mainnav-caret"></i>
						</a>

							<ul class="dropdown-menu" role="menu">
								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-pricing-plans.html">
										<i class="fa fa-money dropdown-icon "></i> Plans &amp; Billing
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-pricing-table.html">
										<i class="fa fa-dollar dropdown-icon "></i> Pricing Table
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-profile.html">
										<i class="fa fa-user dropdown-icon "></i> Profile
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-settings.html">
										<i class="fa fa-cogs dropdown-icon "></i> Settings
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-faq.html">
										<i class="fa fa-question dropdown-icon "></i> FAQ
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/pages-gallery.html">
										<i class="fa fa-picture-o dropdown-icon "></i> Gallery
								</a></li>
							</ul></li>


						<li class="dropdown"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"> Extras <i class="mainnav-caret"></i>
						</a>

							<ul class="dropdown-menu" role="menu">
								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-notifications.html">
										<i class="fa fa-bell dropdown-icon "></i> Notifications
								</a></li>

								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/extras-icons.html">
										<i class="fa fa-smile-o dropdown-icon "></i> Font Icons
								</a></li>



								<li class="dropdown-submenu"><a tabindex="-1"
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/#">
										<i class="fa fa-wrench dropdown-icon "></i> Utilities
								</a>

									<ul class="dropdown-menu">
										<li><a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-maintenance.html">
												<i class="fa fa-cogs dropdown-icon "></i> Maintenance
										</a></li>

										<li><a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-404.html">
												<i class="fa fa-ban dropdown-icon "></i> 404 Error
										</a></li>

										<li><a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-500.html">
												<i class="fa fa-ban dropdown-icon "></i> 500 Error
										</a></li>

										<li><a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/page-blank.html">
												<i class="fa fa-file-o dropdown-icon "></i> Page Blank
										</a></li>
									</ul></li>

								<li class="dropdown-submenu"><a tabindex="-1"
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/#">
										<i class="fa fa-lock dropdown-icon "></i> Login Pages
								</a>

									<ul class="dropdown-menu">
										<li><a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/account-login.html">
												<i class="fa fa-unlock dropdown-icon "></i> Login
										</a></li>

										<li><a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/account-login-social.html">
												<i class="fa fa-unlock dropdown-icon "></i> Login Social
										</a></li>

										<li><a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/account-signup.html">
												<i class="fa fa-pencil dropdown-icon "></i> Signup
										</a></li>

										<li><a
											href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/account-forgot.html">
												<i class="fa fa-envelope dropdown-icon "></i> Forgot
												Password
										</a></li>
									</ul></li>

							</ul></li>



						<li class="dropdown is-open"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"> Templates <i class="mainnav-caret"></i>
						</a>

							<ul class="dropdown-menu" role="menu">
								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/landing/">
										<i class="fa fa-external-link dropdown-icon "></i> Landing
										Template
								</a></li>
								<li><a
									href="https://jumpstartthemes.com/demo/v/2.1.0/templates/launch/">
										<i class="fa fa-external-link dropdown-icon "></i> Launch
										Template
								</a></li>
							</ul></li>

					</ul>

				</nav>

			</div>
			<!-- /.container -->

		</div>
		<!-- /.mainnav -->

		<div class="content">

			<div class="container" ng-view ng-controller="dashboardController">{{name}}</div>
			<!-- /.container -->

		</div>
		<!-- .content -->

	</div>
	<!-- /#wrapper -->

	<footer class="footer">
		<div class="container">
			<p class="pull-left">Copyright © 2013-15 Jumpstart Themes.</p>
		</div>
	</footer>


	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Core JS -->


	<!-- Plugin JS -->
	<script src="<spring:url value="/resources/js/admin/excanvas.min.js"/>"></script>
	<script src="<spring:url value="/resources/js/admin/jquery.flot.js"/>"></script>
	<script
		src="<spring:url value="/resources/js/admin/jquery.flot.pie.js"/>"></script>
	<script
		src="<spring:url value="/resources/js/admin/jquery.flot.resize.js"/>"></script>
	<script
		src="<spring:url value="/resources/js/admin/jquery.flot.time.js"/>"></script>
	<script
		src="<spring:url value="/resources/js/admin/jquery.flot.tooltip.js"/>"></script>
	<!-- App JS -->
	<script
		src="<spring:url value="/resources/js/admin/mvpready-core.js"/>"></script>
	<script
		src="<spring:url value="/resources/js/admin/mvpready-helpers.js"/>"></script>
	<script
		src="<spring:url value="/resources/js/admin/mvpready-admin.js"/>"></script>


	<!-- Demo JS -->
	<script src="<spring:url value="/resources/js/admin/line.js"/>"></script>
	<script src="<spring:url value="/resources/js/admin/pie.js"/>"></script>
	<script src="<spring:url value="/resources/js/admin/auto.js"/>"></script>

</body>
</html>