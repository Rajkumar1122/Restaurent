<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
                <form:form method="POST" action="product.do" enctype="multipart/form-data" modelAttribute="product"/>
            </div>
        </div>
    </nav>
    <div class="page-header">
        <h1> Welcome !!<small> Enter The Product Details.</small></h1></div>
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                    <form:label path="productid">ProductId</form:label>
                </div>
                <div class="col-md-6">
                    <form:input class="form-control input-sm" path="productid" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                    <form:label path="productName">Product Name</form:label>
                </div>
                <div class="col-md-6">
                    <form:input class="form-control input-sm" path="productName" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                    <form:label path="productid">Product Description</form:label>
                </div>
                <div class="col-md-6">
                     <form:input class="form-control input-sm" path="productDescription" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                   <form:label path="productid">Price</form:label>
                </div>
                <div class="col-md-6">
                <form:input class="form-control input-sm" path="price" type="text"/>
                    
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                   <form:label path="productid">Stock</form:label>
                </div>
                <div class="col-md-6">
                     <form:input class="form-control input-sm" path="Stock" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                     <form:label path="productid">Image</form:label>
                </div>
                <div class="col-md-6">
                     <form:input class="form-control input-sm" path="Image" type="text"/>
                </div>
            </div>
            <input type="file">
        </div>
    </div>
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                   <form:label path="Catid">category</form:label>
                </div>
                <div class="col-md-4">
                   <form:select class="form-control" path="Catid" required ="true">
                    <c:forEach items="${categoryList}" var="category">
									<form:option class="form-control" value="${category.categoryId}">${category.categoryName}</form:option>
								</c:forEach>
								</form:select>
								
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                    <form:label path="Supid">supplier</form:label>
                </div>
                <div class="col-md-4">
             <form:select class="form-control input-sm" path="supid" required="true">       
             <c:forEach items="${supplierList}" var="supplier">
			 <form:option class="form-control" value="${supplier.supplierid}">${supplier.supplierName}</form:option>
			   </c:forEach>  
				</form:select>
                    </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <input type="submit" name="action" value="Add" />
                     <input type="submit" name="action" value="Edit" />
                      <input type="submit" name="action" value="Delete" />
                       <input type="submit" name="action" value="Search" />
                </div>
            </div>
        </div>
    </div>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>