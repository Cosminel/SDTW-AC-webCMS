<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Responsive mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


    <title>web CMS: Pages</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Own CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel = "stylesheet">

  </head>

  <body>

        <div class="navbar navbar-default">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">webCMS</a>
          </div>
          <div class="navbar-collapse collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav">
              <li><a href="home.jsp">Dashboard</a></li>
              <li class="active"><a href="pages.html">Pages</a></li>
              <li><a href="categories.html">Categories</a></li>
              <li><a href="users.jsp">Users</a></li>
            </ul>
            <form class="navbar-form navbar-left">
              <input type="text" class="form-control col-lg-8 search-form" placeholder="Search">
            </form>
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Profile</a></li>
                </ul>
              </li>
              <li><a href="login.html">Login</a></li>
            </ul>
          </div>
        </div> <!--ENDof Navbar -->

   <!-- Section -->
      <section>
          <div class = "container">
              <div class = "row">
                  <div class = "col-md-4">
                    <div class="list-group">
                      <a href="index.html" class="list-group-item">
                        <i class = "glyphicon glyphicon-dashboard"></i> Dashboard
                      </a>
                      <a href="pages.html" class="list-group-item active"><i class = "glyphicon glyphicon-file"></i> Pages</a>
                      <a href="categories.html" class="list-group-item"><i class = "glyphicon glyphicon-folder-open"></i> Categories</a>
                      <a href="users.jsp" class="list-group-item"><i class = "glyphicon glyphicon-user"></i> User Accounts</a>
                    </div> <!-- ENDof ListGroup-->

                  </div> <!-- ENDof Col-md-4 -->

                   <div class = "col-md-8">
                       <div class = "row">
                           <div class = "col-md-6">
                                <h1 class = "page-header"><i class = "glyphicon glyphicon-file"></i> Pages</h1>
                           </div> <!-- ENDof col-md-6 -->
                           <div class = "col-md-6">
                                <div class="btn-group actions" role="group" aria-label="...">
                                  <a href = "page.html" class="btn btn-default"><i class = "glyphicon glyphicon-plus"></i> New</a>
                                  <a href = "" class="btn btn-default"><i class = "glyphicon glyphicon-pencil"></i> Edit</a>
                                  <a href = "" class="btn btn-default"><i class = "glyphicon glyphicon-remove"></i> Delete</a>
                                </div>
                           </div> <!-- ENDof col-md-6 -->
                       </div> <!-- ENDof Row -->

                       <!-- breadcrumb -->
                        <ol class="breadcrumb">
                          <li><a href="index.html">Dashboards</a></li>
                          <li class="active">Pages</li>
                        </ol>

                        <table id = "sort-table" class="table table-striped tablesorter">
                            <thead>
                                <tr>
                                    <th><input type = "checkbox"></th>
                                    <th>Page Title <i class="glyphicon glyphicon-chevron-down"></i> </th>
                                    <th>Category<i class="glyphicon glyphicon-chevron-down"></i> </th>
                                    <th>Author<i class="glyphicon glyphicon-chevron-down"></i> </th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td><input type = "checkbox"></td>
                                    <td><a href = "page.html">Sample Page 1</a></td>
                                    <td>Category 1</td>
                                    <td>Michael</td>
                                </tr>

                                 <tr>
                                    <td><input type = "checkbox"></td>
                                    <td><a href = "page.html">Sample Page 2</a></td>
                                    <td>Category 1</td>
                                    <td>Michael</td>
                                </tr>

                                 <tr>
                                    <td><input type = "checkbox"></td>
                                    <td><a href = "page.html">Sample Page 3</a></td>
                                    <td>Category 2</td>
                                    <td>Roger</td>
                                </tr>

                                 <tr>
                                    <td><input type = "checkbox"></td>
                                    <td><a href = "page.html">Sample Page 4</a></td>
                                    <td>Category 3</td>
                                    <td>Richard</td>
                                </tr>

                                 <tr>
                                    <td><input type = "checkbox"></td>
                                    <td><a href = "page.html">Sample Page 5</a></td>
                                    <td>Category 4</td>
                                    <td>John</td>
                                </tr>
                            </tbody>
                        </table> <!-- ENDof Table table-striped -->

                    <!-- Pagination -->
                    <nav>
                      <ul class="pagination">
                        <li>
                          <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                          </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                          <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                          </a>
                        </li>
                      </ul>
                    </nav>

                  </div> <!-- ENDof Col-md-8 -->
              </div> <!-- ENDof Row -->

          </div> <!-- ENDof Container -->
      </section>

      <footer>
          <p>Copyright 2016, All Rights Reserved</p>
      </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.js"></script>
    <script src = "js/script.js"></script>
  </body>
</html>