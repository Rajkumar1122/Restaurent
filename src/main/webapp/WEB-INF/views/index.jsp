<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/home.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Google-Style-Login.css"/>">
</head>

<body><img class="img-responsive" src="<c:url value="/resources/assets/img/Logo-Color.png"/>">
    <div class="div-1">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand navbar-link" href="#"> </a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Menu <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                           <c:forEach items="${categoryList}" var="category">
                            <li role="presentation"><a href="product${category.categoryId}">${category.categoryName}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li role="presentation" class="box"><a href="index">Home </a></li>
                     <sec:authorize access="!isAuthenticated()"> 
                    <li role="presentation" class="box"><a href="login">Login </a></li>
                    <li role="presentation" class="box"><a href="register">Register </a></li>
                    </sec:authorize>
                     <sec:authorize access="isAuthenticated()">
                    <li role="presentation" class="box"><a href="cart">Cart </a></li>
                    <li class="box"> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                              </sec:authorize>
                </ul>
            </div>
        </div>
</nav>
    </div>
    <div class="div-2">
        <div class="carousel slide" data-ride="carousel" id="carousel-1">
            <div class="carousel-inner" role="listbox">
                <div class="item active"><img src="<c:url value="/resources/assets/img/pexels-photo-326278.jpg"/>" alt="Slide Image"></div>
                <div class="item"><img src="<c:url value="/resources/assets/img/img2.jpg"/>" alt="Slide Image"></div>
                <div class="item"><img src="<c:url value="/resources/assets/img/img3.jpg"/>" alt="Slide Image"></div>
            </div>
            <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel-1" role="button"
                data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a></div>
            <ol class="carousel-indicators">
                <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-1" data-slide-to="1"></li>
                <li data-target="#carousel-1" data-slide-to="2"></li>
            </ol>
        </div>
        <div class="jumbotron">
            <h2 class="text-center"> Good Friends,Good Food, Good Time</h2>
            <p class="text-center">A bottle of red, A bottle of white, Whatever kind of mood you are tonight. I'll meet you anytime you want at our algotmahesh restaurent...</p>
            <p></p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/veg biryani1111.jpg"/>">
                <div class="caption">
                    <h3>Veg Biryani</h3>
                    <p>An Indian Preparartion Of Rice, Select Spices And Assorted Vegetables.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/6666.jpg"/>">
                <div class="caption">
                    <h3>Chicken 65</h3>
                    <p>Chicken 65 Recipe Dry , Gravy &amp; Crispy .The Flavour Of The Dish Attributed From Red Chilles.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/sura.jpg"/>">
                <div class="caption">
                    <h3>Sura Wine</h3>
                    <p>Sura Wine is a Strong Distilled Alcoholic Beverge.</p>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h3><a href="#">RESTAURENTE</a></h3>
                <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                <p class="company-name">Company Name © 2017 </p>
            </div>
            <div class="col-md-4 col-sm-6 footer-contacts">
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p><span class="new-line-span">Sai Charan Colony</span> Kukatpally</p>
                </div>
                <div><i class="fa fa-phone footer-contacts-icon"></i>
                    <p class="footer-center-info email text-left"> 8801744202</p>
                </div>
                <div><i class="fa fa-envelope footer-contacts-icon"></i>
                    <p> <a href="#" target="_blank">algotmahesh@gmail.com</a></p>
                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 footer-about">
                <h4>About the company</h4>
                <p>AlgotMahesh restaurente .The Place Where We Can Experience Nice Food. </p>
                <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
            </div>
        </div>
    </footer>
    <footer></footer>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>