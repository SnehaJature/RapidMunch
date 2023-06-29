<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<body  >


<fieldset><legend><b><center>Food Delivery</center></b></legend></fieldset>
<div class="container">
<div class="row">
<div class="col-md-3">
</div>

<div class="col-md-6">
<legend><strong><label>Enquiry Form</strong></label></legend>

<form  action="enquirydatabase.jsp" method="post" style="-webkit-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
-moz-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
box-shadow: 7px 7px 6px 7px rgba(10,4,4,0.65); padding:50px;">
<b><label>Name</b></label><br>
<input type="text" placeholder="Enter Your Name" id="name" name="name" class="form-control"><br>
<b><label>Email</b></label><br>
<input type="email" placeholder="Email" id="email" name="email" class="form-control"><br>
<b><label>Mobile</b></label><br>
<input type="number" placeholder="Enter Your Mobile" id="mobile" name="mobile" class="form-control"><br>
<b><label>Subject</b></label><br>
<input type="text" class="form-control" placeholder="Subject" name="subject" id="subject"></br>
<b><label>Message</b></label><br>
<textarea rows="5" cols="40" name="message" class="form-control" placeholder="Enter The Message" id="message"></textarea><br><br>

<input type="submit" class="btn btn-success" onclick="return gett()">
<input type="reset" class="btn btn-danger" value="Cancel"><br>
</div>
<div class="col-md-3">

</div>
</div></div>
</form>
<script>
function gett()
{
var a=document.getElementById("name").value; 
var b=document.getElementById("email").value;
var c=document.getElementById("mobile").value;
var d=document.getElementById("subject").value;
var e=document.getElementById("message").value;

if(a=="")
{
alert("please fill your name");
return false;
}
else if(b=="")
{
alert("please enter your email");
return false;
}
else if(c.length!=10)
{
alert("please enter only ten digit of mobile number");
return false;
}
else if(d=="")
{
alert("please enter your subject");
return false;
}
else if(e=="")
{
alert("please enter your message");
return false;
}

else
{
return true;
}
}
</script>

</body>
</html>