<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Login</title>

</head>

<body>
<jsp:include page="header1.jsp"></jsp:include>
<div class="container">
<div class="row">
<div class="col-md-3">
</div>
<div class="col-md-6">
<center><legend><strong><label>Login Form</label></strong></legend></center>
		

<form action="logindatabase.jsp" method="post" style="-webkit-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
-moz-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
box-shadow: 7px 7px 6px 7px rgba(10,4,4,0.65);  padding:50px;">
<label><b>Email</b></label>
<input type="email" name="email" id="email" placeholder="Enter Your Email" class="form-control" required><br>
<label><b>Password</b></label><br>
<input type="password" name="password" placeholder=" Enter Password" id="password" class="form-control" required><br><br>
<input type="submit" value="Login" class="form-control btn btn-info" onclick="return Regform1()" id="submit"><br><br>
<center><a href="registration.jsp">Register? New User</a></center>
</div>

<div class="col-md-3">

</div>

</div>
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
<br><br><br>
<jsp:include page="footer.jsp"></jsp:include>

</body>


</html>