<%@ page import="java.sql.*"%>
<!--<%@ page import="com.oreilly.servlet.MultipartRequest"%>-->
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin view food update</title>
</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>
<fieldset><legend><b><center>Food Delivery Update</center></b></legend></fieldset>

<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">

<form action="adminviewfoodupsubmit.jsp" method="post" enctype="Multipart/form-data" class="form-horizental">
<% 


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");

String id=request.getParameter("id");

String sql="select * from addfood where id=?";

PreparedStatement PS=con.prepareStatement(sql);

PS.setString(1,id);
ResultSet rs=PS.executeQuery();

while(rs.next()){%>

<input type="hidden" value="<%=rs.getString(1)%>" NAME="id">
Food Name:<input type="text" value="<%=rs.getString(2)%>" class="form-control" name="Name" id="name"><br>

Photo:
<IMG SRC="<%=rs.getString(5)%>" HEIGHT="150" WIDTH="200" ><br><br>
Upload new photo:<input type="file"  name="photo"><br>


Price:<input type="text" value="<%=rs.getString(4)%>" class="form-control" name="price" id="price"><br>
Description:<input type="text" value="<%=rs.getString(3)%>" class="form-control" name="description" id="desc"><br>
</select>

 
<input type="submit" value="submit" class="btn btn-success block" onclick=" return myfunction()" id="submit">
<%}%>

</form>
</div>
</div>
</div>

<script>
function myfunction()
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
else
{
return true;
}

}
</script>
</body>
</html>