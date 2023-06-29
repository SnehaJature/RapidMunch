<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration form</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<body>
<jsp:include page="header1.jsp"></jsp:include>

<div class="container">
<div class="row">
<div class="col-md-5">

<br>
<Center><legend><strong><label style="color:red;">Registration Form</label></strong></legend></Center>

<form  action="registrationdatabase.jsp" method="post" class="form-container  pd" style="-webkit-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
-moz-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
box-shadow: 7px 7px 6px 7px rgba(10,4,4,0.65);  padding:50px;">
<label>Name</label><br>
<input type="text" placeholder="Enter your Name" id="name" name="name" class="form-control"><br>
<label>Mobile Number</label><br>
<input type="number" name="mobile" placeholder="Mobile" id="mobile" name="mobile" class="form-control"><br>
<label>Email</label><br>
<input type="email" placeholder="Email" id="email" name="email" class="form-control"><br>
<label>City</label><br>
<input type="text" placeholder="Enter City Name" id="city" name="city" class="form-control"><br>
<label>Address</label><br>
<textarea rows="5" cols="40" name="address" class="form-control" placeholder="Enter Your Address" id="address"></textarea>
<label>Gender</label><br>

<input type="radio"  name="gender" value="male" style="margin-left:50px;">&nbsp;<label>male</label>
<input type="radio"  name="gender" value="female">&nbsp;<label>female<br></label><br>

<label>Password</label>
<input type="password" placeholder="Password" id="password" name="password" class="form-control"><br>
<label>Confirm Password</label><br>
<input type="password" placeholder="Confirm Password" id="confirmp" name="confirm"  class="form-control"><br>
<input type="submit" class="btn btn-success" onclick="return gett()">
<input type="reset" class="btn btn-danger" value="Cancel"><br><br>

</form>
</div>
<script>
function gett()
{
var a=document.getElementById("name").value; 
var b=document.getElementById("mobile").value; 
var c=document.getElementById("email").value;
var d=document.getElementById("city").value;
var e=document.getElementById("address").value;
var password=document.getElementById("password").value; 
var confirm=document.getElementById("confirmp").value; 
if(a=="")
{
alert("please fill your name");
return false;
}
else if(b.length!=10)
{
alert("please enter only ten digit of mobile number");
return false;
}
else if(c=="")
{
alert("please enter your email");
return false;
}
if(d=="")
{
alert("please enter your city");
return false;
}
else if(e=="")
{
alert("please enter your address");
return false;
}

else if(password.length<=7)
{
alert("please enter password of more than eight character");
return false;
}
else if(password!= confirm)
{
alert("Password and confirm Password not matched!!");
return false;
}
else
{
return true;
}
}
</script>
<div class="col-md-2"></div>
<div class="col-md-5"><br>
<center><legend><strong><label style="color:red;">Login Form</label></strong></legend></center>
		

<form action="logindatabase.jsp" method="post" style="-webkit-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
-moz-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
box-shadow: 7px 7px 6px 7px rgba(10,4,4,0.65);  padding:50px;">
<label>Email</label>
<input type="email" name="email" id="email1" placeholder="Enter Your Email" class="form-control"><br>
<label>Password</label><br>
<input type="password" name="password" placeholder=" Enter Password" id="password1" class="form-control"><br><br>
<input type="submit" value="Login" class="form-control btn btn-info" onclick="return Regform1()"><br><br>
</form>
</div>


</div>
</div>

<script>
function Regform1()
{
var i=document.getElementById("email1").value;
var j=document.getElementById("password1").value;
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