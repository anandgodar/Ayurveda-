<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
          href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css"/>

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
            <ul class="nav navbar-nav navbar-right">
                <li><a
                        href="https://jumpstartthemes.com/demo/v/2.1.0/templates/admin/account-login.html">
                    <i class="fa fa-sign-out"></i> &nbsp;&nbsp;Logout
                </a></li>
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
                            href="#innerdashboard"
                            class="dropdown-toggle" data-toggle="dropdown"
                            data-hover="dropdown"> Dashboards <i class="mainnav-caret"></i>
                    </a>

                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#innerdashboard"> <i
                                    class="fa fa-dashboard dropdown-icon "></i> Analytics
                                Dashboard
                            </a></li>
                        </ul>
                    </li>

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
                    </ul>
                    </li>


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
                    </ul>
                    </li>


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
                            </ul>
                        </li>

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
                            </ul>
                        </li>

                    </ul>
                    </li>


                </ul>

            </nav>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.mainnav -->

    <div class="content">

        <div class="container" ng-view></div>
        <!-- /.container -->

    </div>
    <!-- .content -->

</div>
<!-- /#wrapper -->

<footer class="footer">
    <div class="container">
        <p class="pull-left">Copyright © 2015-16 Ayurveda++.</p>
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

<script
        src="<spring:url value="/resources/js/admin/dataTables.min.js"/>"></script>
<script
        src="<spring:url value="/resources/js/admin/dataTables.bootstrap.js"/>"></script>
<script
        src="<spring:url value="/resources/js/admin/datatables-helper.js"/>"></script>
<!-- App JS -->
<script
        src="<spring:url value="/resources/js/admin/mvpready-core.js"/>"></script>
<script
        src="<spring:url value="/resources/js/admin/mvpready-helpers.js"/>"></script>
<script
        src="<spring:url value="/resources/js/admin/mvpready-admin.js"/>"></script>


<!-- Demo JS -->
<script src="<spring:url value="/resources/js/admin/stack.js"/>"></script>
<script src="<spring:url value="/resources/js/admin/line.js"/>"></script>
<script src="<spring:url value="/resources/js/admin/pie.js"/>"></script>
<script src="<spring:url value="/resources/js/admin/auto.js"/>"></script>
<script src="<spring:url value="/resources/js/admin/vertical.js"/>"></script>

</body>
</html>