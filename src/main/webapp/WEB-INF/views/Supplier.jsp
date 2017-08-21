<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
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



<body>
<h1></h1>
<form;form action="supplier.do" method="POST" modelAttribute="supplier" commandName="supplier">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="active" role="presentation"><a href="#">Category </a></li>
                    <li role="presentation"><a href="#">Supplier </a></li>
                    <li role="presentation"><a href="#">Product </a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="page-header">
        <h1>Supplier !! <small>Enter The Supplier Details</small></h1></div>
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                    <label>Supplier Id</label>
                </div>
                <div class="col-md-5">
                    <input type="text">
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                    <label>Supplier Name</label>
                </div>
                <div class="col-md-5">
                    <input type="text">
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <button class="btn btn-default" type="button">Add </button>
                    <button class="btn btn-default" type="button">Delete </button>
                    <button class="btn btn-default" type="button">Edit </button>
                    <button class="btn btn-default" type="button">Search </button>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>