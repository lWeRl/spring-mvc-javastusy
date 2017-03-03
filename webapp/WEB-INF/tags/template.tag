<!DOCTYPE html>

<%@tag description="Template Site tag" pageEncoding="UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@attribute name="title" fragment="true" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><jsp:invoke fragment="title"/></title>

    <!-- Bootstrap Core CSS -->
    <spring:url value="resources/css/bootstrap.min.css" var="bootstrap_min"/>
    <link href="${bootstrap_min}" rel="stylesheet">

    <!-- Custom CSS -->
    <spring:url value="resources/css/modern-business.css" var="custom_css"/>
    <link href="${custom_css}" rel="stylesheet">

    <!-- Custom Fonts -->
    <spring:url value="resources/font-awesome/css/font-awesome.min.css" var="custom_font_css"/>
    <link href="${custom_font_css}" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery -->
    <spring:url value="resources/js/jquery.js" var="jquery"/>
    <script src="${jquery}"></script>

    <!-- Bootstrap Core JavaScript -->
    <spring:url value="resources/js/bootstrap.min.js" var="js"/>
    <script src="${js}"></script>

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <c:url value="/index.html" var="index"/>
            <a class="navbar-brand" href="${index}">Start Bootstrap</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <c:url value="/about.html" var="about"/>
                    <a href="${about}">About</a>
                </li>
                <%--<li>--%>
                <%--<a href="services.html">Services</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="contact.html">Contact</a>--%>
                <%--</li>--%>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <c:url value="/file.html" var="file"/>
                            <a href="${file}">Загрузка</a>
                        </li>
                        <li>
                            <a href="portfolio-2-col.html">2 Column Portfolio</a>
                        </li>
                        <li>
                            <a href="portfolio-3-col.html">3 Column Portfolio</a>
                        </li>
                        <li>
                            <a href="portfolio-4-col.html">4 Column Portfolio</a>
                        </li>
                        <li>
                            <a href="portfolio-item.html">Single Portfolio Item</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="blog-home-1.html">Blog Home 1</a>
                        </li>
                        <li>
                            <a href="blog-home-2.html">Blog Home 2</a>
                        </li>
                        <li>
                            <a href="blog-post.html">Blog Post</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="full-width.html">Full Width Page</a>
                        </li>
                        <li>
                            <a href="sidebar.html">Sidebar Page</a>
                        </li>
                        <li>
                            <a href="faq.html">FAQ</a>
                        </li>
                        <li>
                            <c:url value="/404.html" var="error"/>
                            <a href="${error}">404</a>
                        </li>
                        <li>
                            <a href="pricing.html">Pricing Table</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<!-- #################################################################################################################### -->
<jsp:doBody/>
<!-- #################################################################################################################### -->
<div class="container">
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Your Website 2017</p>
            </div>
        </div>
    </footer>

</div>
<!-- /.container -->

</body>

</html>