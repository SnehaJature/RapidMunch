<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="bootstrapcss.css">

<title>Admin login</title>
</head>
<body>
<fieldset><legend><b><center>Food Delivery</center></b></legend></fieldset>

<div class="container">

<div class="col-md-3"></div>
<div class="col-md-6">

<form class="form-container  pd" action="admin_loginChk.jsp" style="-webkit-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
-moz-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
box-shadow: 7px 7px 6px 7px rgba(10,4,4,0.65); margin-top:80px; padding:50px;">


<center><h2><u style="font-family:Times New Roman;"><label>Admin Login</label></u></h2></center><br>
<label><span class="glyphicon glyphicon-envelope"></span>&nbsp;Email id</label><br>
<input type="text" value="" name="email" placeholder="Enter Your Email id" id="email" class="form-control"><br>

<label ><i class="glyphicon glyphicon-lock"></i>&nbsp;Password</label><br>
<input type="password" value="" name="password" id="password" class="form-control" placeholder="Password"><br>
<center><input type="submit" value="Login" onclick="return Regform1()" class="btn btn-success" id="submit"><br><br>
</div>
<div class="col-md-3">
</div>
</form>
<script>
function Regform1()
{
var i=document.getElementById("email").value;
var j=document.getElementById("password").value;
if(i=="")
   {
   alert("please fill email");
   return false;
   }
   else if(j=="")
   {
   alert("plese enter the password");
   return false;
   }
   else {
	   
     return true;
   }
   }
</script> 


</body>
</html>