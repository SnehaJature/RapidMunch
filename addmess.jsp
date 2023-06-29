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
<title>Add Mess</title>

</head>

<body >
<jsp:include page="adminheader.jsp"></jsp:include>

<form action="addmessdatabase.jsp" method="post" enctype="multipart/form-data" >
<fieldset><legend><b><center>Food Delivery</center></b></legend></fieldset>
<div class="container">
<div class="row">
<div class="col-md-3">
</div>
<div class="col-md-6"><br>
<legend><strong><label>Add Mess</strong></label></legend>
<b> <label>Name</b></label><br>
<input type="text" placeholder="Enter  Name" id="name" name="name", class="form-control"><br>
<label>Photo:</label><input type="file" id="photo" name="photo"><br>
<b><label>Price</b></label><br>
<input type="number" name="price" placeholder="Price" id="price" name="price", class="form-control"><br>

<b ><label>Description</b></label><br>
<textarea rows="5" cols="40" name="description" class="form-control" placeholder="Enter The Description" id="desc"></textarea><br><br>

<input type="submit" class="btn btn-success" onclick="return gett()" id="submit"><br><br>
</div>
<div class="col-md-3">

</div>

</div>
</div>
</form>
<script>
function gett()
{
var a=document.getElementById("name").value; 
var b=document.getElementById("price").value; 
var c=document.getElementById("desc").value; 
if(a=="")
{
alert("please fill name");
return false;
}
if(b=="")
{
alert("please fill price");
return false;
}
if(c=="")
{
alert("please fill desc");
return false;
}
}
</script>
</body>
</html>