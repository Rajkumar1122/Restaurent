<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <form:form action="category.do" method="POST" modelAttribute="category" commandName="category">
    <div class="page-header">
        <h1>Category !! <small>Enter The Category Details.</small></h1></div>
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-1 col-sm-6 col-sm-offset-6">
                    <form:label path="categoryId">Category Id</form:label>
                </div>
                <div class="col-md-4 col-sm-6">
                    <form:input path="categoryId" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-1 col-sm-6 col-sm-offset-6">
                    <form:label path="categoryName">Category Name</form:label>
                </div>
                <div class="col-md-4 col-sm-6">
                    <form:input path="categoryName" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-1 col-sm-6 col-sm-offset-6">
                    <form:label path="categorydescription">Category Description</form:label>
                </div>
                <div class="col-md-4 col-sm-6">
                    <form:input path="categorydescription" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-1">
                    <button type="submit" name="action" value="Add" class="btn btn-default" >Add </button>
                </div>
                <div class="col-md-1">
                    <button class="btn btn-default" type="submit" name="action" value="Edit" >Edit </button>
                </div>
                <div class="col-md-1">
                    <button class="btn btn-default" type="submit" name="action" value="Delete" >Delete </button>
                </div>
                <div class="col-md-1">
                    <button class="btn btn-default" type="submit" name="action" value="Search" >Search </button>
                </div>
            </div>
        </div>
    </div>
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>Category name</th>
	<th>Category desc</th>
	
	<c:forEach items="${categoryList}" var="category">
		<tr>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categorydescription}</td>
			
		</tr>
	</c:forEach>
</table>
<script src="assets/js/jquery.min.js"></script>
 <script src="assets/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>