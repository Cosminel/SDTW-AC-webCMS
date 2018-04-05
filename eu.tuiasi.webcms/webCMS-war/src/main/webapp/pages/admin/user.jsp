<%--
  Created by IntelliJ IDEA.
  User: C312081
  Date: 04.04.2018
  Time: 09:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>webCMS | Add User</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">AlphaCMS</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li><a href="index.html">Dashboard</a></li>
                <li><a href="pages.html">Pages</a></li>
                <li><a href="categories.html">Categories</a></li>
                <li class="active"><a href="users.html">Users</a></li>

            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control search-form" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">My Account <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Profile</a></li>

                    </ul>
                </li>
                <li><a href="login.html">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<section>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="list-group">
                    <a href="index.html" class="list-group-item">
                        <i class="glyphicon glyphicon-dashboard"></i> Dashboard
                    </a>
                    <a href="pages.html" class="list-group-item"><i class="glyphicon glyphicon-file"></i> Pages</a>
                    <a href="categories.html" class="list-group-item"><i class="glyphicon glyphicon-folder-open"></i> Categories</a>
                    <a href="users.html" class="list-group-item active"><i class="glyphicon glyphicon-user"></i> User Accounts</a>

                </div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="page-header"><i class="glyphicon glyphicon-user"></i> Add User</h1>
                    </div>
                    <div class="col-md-6">
                        <div class="btn-group actions" role="group" aria-label="...">
                            <a href="#" type="button" class="btn btn-default"><i class="glyphicon glyphicon-plus"></i> New</a>
                            <a href="#" type="button" class="btn btn-default"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
                            <a href="#" type="button" class="btn btn-default"><i class="glyphicon glyphicon-remove"></i> Delete</a>
                        </div>
                    </div>
                </div>
                <ol class="breadcrumb">
                    <li><a href="index.html">Dashboard</a></li>
                    <li><a href="pages.html">Users</a></li>
                    <li class="active">User</li>
                </ol>
                <form action ="${pageContext.request.contextPath}/user-manangement/users" method="post">
                    <div class="form-group">
                        <label>FirstName</label>
                        <input type="text" name="firstname" class="form-control" placeholder="Enter FirstName">
                    </div>
                    <div class="form-group">
                        <label>LastName</label>
                        <input type="text" name="lastname" class="form-control" placeholder="Enter LastName">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control" placeholder="Enter Email">
                    </div>
                    <div class="form-group">
                        <label>Date of birth</label>
                        <input type="date" name="dob" class="form-control" placeholder="Enter DOB"></input>
                    </div>

                    <button type="submit" class="btn btn-default">Submit</button>
                </form>


                <hr>


            </div>

        </div>

    </div>

</section>

<footer>
    <p>Copyright 2018 Cosmin Cazacu, All Rights Reserved</p>

</footer>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.js"></script>

</body>
</html>
