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


    <title>web CMS</title>

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
              <li class="active"><a href="index.html">Dashboard</a></li>
              <li><a href="pages.jsp">Pages</a></li>
              <li><a href="categories.jsp">Posts</a></li>
              <li><a href="users.jsp">Users</a></li>
            </ul>
            <form class="navbar-form navbar-left">
              <input type="text" class="form-control col-lg-8" placeholder="Search">
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
                      <a href="home.jsp" class="list-group-item active">
                        <i class = "glyphicon glyphicon-dashboard"></i> Dashboard
                      </a>
                      <a href="pages.jsp" class="list-group-item"><i class = "glyphicon glyphicon-file"></i> Pages</a>
                      <a href="categories.jsp" class="list-group-item"><i class = "glyphicon glyphicon-folder-open"></i> Categories</a>
                      <a href="users.jsp" class="list-group-item"><i class = "glyphicon glyphicon-user"></i> User Accounts</a>
                    </div> <!-- ENDof ListGroup-->

                  </div> <!-- ENDof Col-md-4 -->

                   <div class = "col-md-8">
                       <h1 class = "page-header"><i class = "glyphicon glyphicon-dashboard"></i> Dashboard</h1>
                       <h3>Latest Pages</h3>
                        <table class="table table-striped">
                            <tr>
                                <th>Page Title</th>
                                <th>Category</th>
                                <th>Author</th>
                            </tr>

                            <tr>
                                <td><a href = "page.html">Sample Page 1</a></td>
                                <td>Category 1</td>
                                <td>Michael</td>
                            </tr>

                             <tr>
                                <td><a href = "page.html">Sample Page 2</a></td>
                                <td>Category 1</td>
                                <td>Josh</td>
                            </tr>

                             <tr>
                                <td><a href = "page.html">Sample Page 3</a></td>
                                <td>Category 2</td>
                                <td>Roger</td>
                            </tr>

                             <tr>
                                <td><a href = "page.html">Sample Page 4</a></td>
                                <td>Category 3</td>
                                <td>Richard</td>
                            </tr>

                             <tr>
                                <td><a href = "page.html">Sample Page 5</a></td>
                                <td>Category 4</td>
                                <td>John</td>
                            </tr>
                        </table> <!-- ENDof Table table-striped -->

                       <a class = "btn btn-default" href = "pages.html">View All Pages</a>

                       <hr>

                       <h3>Latest User</h3>
                       <table class="table table-striped">
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Group</th>
                            </tr>

                            <tr>
                                <td><a href = "user.html">Josh</a></td>
                                <td>josh@gmail.com</td>
                                <td>Admin</td>
                            </tr>

                             <tr>
                                <td><a href = "user.html">Michael</a></td>
                                <td>Michael@gmail.com</td>
                                <td>Admin</td>
                            </tr>

                             <tr>
                                <td><a href = "user.html">Richard</a></td>
                                <td>Richard@gmail.com</td>
                                <td>Admin</td>
                            </tr>

                             <tr>
                                <td><a href = "user.html">Roger</a></td>
                                <td>roger@gmail.com</td>
                                <td>Registered</td>
                            </tr>

                             <tr>
                                <td><a href = "user.html">John</a></td>
                                <td>John@gmail.com</td>
                                <td>Registered</td>
                            </tr>
                        </table> <!-- ENDof Table table-striped -->

                        <a class = "btn btn-default" href = "users.jsp">View All Users</a>

                  </div> <!-- ENDof Col-md-8 -->
              </div> <!-- ENDof Row -->

          </div> <!-- ENDof Container -->
      </section>

      <footer>
          <p>Copyright 2018 Cosmin Cazacu, All Rights Reserved</p>
      </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src = "js/jquery.tablesorter.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.js"></script>


    <script>
       $(function(){
          $('#sort-table').tablesorter({
            sortList:[[0,0], [1,0]]
          });
        });
    </script>

  </body>

</html>