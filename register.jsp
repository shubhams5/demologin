<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
    
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>new registration</title>
    
</head>

<body>
  <link rel="stylesheet" type="text/css" href="style.css">
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-2 col-xs-120">
  <form class="form-container-reg" action="reg-process.jsp" name="myForm" method="post" onsubmit = "return(validate());">
    <div class="imgcontainer">
      <img src="img_avatar1.png" alt="Avatar" class="avatar">
    </div>
    <div class="container">
      <h1>Register</h1>
    <input type="text" name="fname" placeholder="First Name" />
    <input type="text" name="lname" placeholder="Last Name"/>
    <input type="text" name="email" placeholder="Email"/>
    <input type="text" name="userid" placeholder="User ID"/>
    <input type="password" name="password" placeholder="Password"/>
      <button type="submit" value="Submit" onclick="return(validate());">Register Me</button>
      <h1 style="font-size: medium; color: black;">Already a user? <a href="home.jsp">Login Here</h1>

  </div>
  </form>
      </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>    
        <button class="btn btn-light btn5" type="submit"><span class="glyphicon glyphicon-home"></span> Home</button> 
      <script src="validate.js"></script>
</body>

</html>
