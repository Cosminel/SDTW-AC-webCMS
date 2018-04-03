<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<?xml version="1.0" encoding="UTF-8"?>

<HTML>

<HEAD>
<title>webCMS</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="resources/bootstrap/css/bootstrap.min.css" />
</HEAD>
<BODY>
	<div id="container">
		<div class="dualbrand">
			<img src="resources/img/webcms.png" width="100px"/>
		</div>
		<div id="content">


			<div class="roles">
				<div class="col-sm-4">
					<div>
						<a href="${pageContext.request.contextPath}/pages/admin/home.jsp"> <img src="resources/img/admin.png"
							class="img-circle img-thumbnail" />
							<h2>Admin</h2>
						</a>
					</div>
				</div>

				<div class="col-sm-4">
					<div>
						<a href="/pages/author"> <img src="resources/img/author.png"
							class="img-circle img-thumbnail" />
							<h2>Author</h2>
						</a>
					</div>
				</div>

				<div class="col-sm-4">
					<div>
						<a href="/pages/editor"> <img src="resources/img/editor.png"
							class="img-circle img-thumbnail" />
							<h2>Editor</h2>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<p></p>
		</div>
	</div>
	<style type="text/css">
.roles {
	padding: 20px 0;
	text-align: center;
}

.roles>div>div {
	padding: 10px;
	border: 1px solid transparent;
	border-radius: 4px;
	transition: 0.2s;
}

.roles>div:hover>div {
	margin-top: -10px;
	border: 1px solid rgb(200, 200, 200);
	box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 5px 2px;
	background: rgba(200, 200, 200, 0.1);
	transition: 0.5s;
}
Core styles for the page
body {
  margin: 0;
  padding: 0;
  background-color: #F1F1F1;
  font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
  font-size: 1.2em;
  color:#363636;
}

#container {
  margin: 0 auto;
  margin-top:100px;
  padding: 0 20px 10px 20px;
  border-top: 5px solid #000000;
  border-left: 5px solid #8c8f91;
  border-right: 5px solid #8c8f91;
  border-bottom: 25px solid #8c8f91;
  width: 865px; subtract 40px from banner width for padding
  background: #FFFFFF;
  background-image: url(resources/gfx/headerbkg.png);
  background-repeat: repeat-x;
  padding-top: 30px;
  box-shadow: 3px 3px 15px #d5d5d5;
}
#content {
  width: 810px;
  margin-top:130px;
  margin-:130px;
}
#aside {
  font-size: 0.9em;
  width: 275px;
  float: left;
  margin: 20px 0px;
  border: 1px solid #D5D5D5;
  background: #F1F1F1;
  background-image: url(resources/gfx/asidebkg.png);
  background-repeat: repeat-x;
  padding: 20px;
}

#aside ul {
  padding-left: 30px;
}
.dualbrand {
  float: right;
  padding-right: 10px;
  margin-top: -50px;
}
#footer {
  clear: both;
  text-align: center;
  color: #666666;
  font-size: 0.85em;
}
code {
  font-size: 1.1em;
}
a {
  color: #4a5d75;
  text-decoration: none;
}
a:hover {
  color: #369;
  text-decoration: underline;
}
h1 {
  color:#243446;
  font-size: 2.25em;
}
h2 {
  font-size: 1em;
}
h3 {
  color:#243446;
}
h4 {
}
h5 {
}
h6 {
}
Member registration styles
span.invalid {
  padding-left: 3px;
  color: red;
}
form {
  padding: 1em;
  font: 80%/1 sans-serif;
  width: 375px;
  border: 1px solid #D5D5D5;
}
label {
  float: left;
  width: 15%;
  margin-left: 20px;
  margin-right: 0.5em;
  padding-top: 0.2em;
  text-align: right;
  font-weight: bold;
  color:#363636;
}
input {
  margin-bottom: 8px;
}
.register {
  float: left;
  margin-left: 85px;
}



.simpletablestyle {
  background-color:#E6E7E8;
  clear:both;
  width: 750px;
}

.filedSet
{
	width:750px;
}

.simpletablestyle img {
  border:0px;
}

.simpletablestyle td {
  height:2em;
  padding-left: 6px;
  font-size:11px;
  padding:5px 5px;
}

.simpletablestyle th {
	background: url(resources/gfx/bkg-blkheader.png) black repeat-x top left;
  font-size:12px;
  font-weight:normal;
  padding:0 10px 0 5px;
  border-bottom:#999999 dotted 1px;
}

.simpletablestyle thead {
  background: url(resources/gfx/bkg-blkheader.png) black repeat-x top left;
  height:31px;
  font-size:10px;
  font-weight:bold;
  color:#FFFFFF;
  text-align:left;
}

.simpletablestyle .header a {
  color:#94aebd;
}

.simpletablestype tfoot {
	height: 20px;
  font-size: 10px;
  font-weight: bold;
  background-color: #EAECEE;
  text-align: center;
}

.simpletablestyle tr.header td {
  padding: 0px 10px 0px 5px;
}


.simpletablestyle .subheader {
  background-color: #e6e7e8;
  font-size:10px;
  font-weight:bold;
  color:#000000;
  text-align:left;
}

Using new CSS3 selectors for styling
.simpletablestyle tr:nth-child(odd) {
  background: #f4f3f3;
}
.simpletablestyle tr:nth-child(even) {
  background: #ffffff;
}

.simpletablestyle td a:hover {
  color:#3883ce;
  text-decoration:none; 
}
</style>
</BODY>
</HTML>
