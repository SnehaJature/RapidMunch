
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index</title>

<style>
.images:hover{
 opacity:0.5; 
}
</style>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<div class="row">
<div class="col-md-12">
<br><br>
<center><h3  style="color:red;"><b>Mess Order</b></h3></center>
<br><br>
<div style="border-top:2px solid black;padding-bottom: 25px;"></div>
<div class="row">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="select* from addmess order by id desc limit 4";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
while(rs.next()){
%>
<div class="col-md-3 thumbnail">
 <img class="images" src="<%=rs.getString(5) %>" style="height: 150px;width:98%;">
 <div class="caption">
 <h4><%=rs.getString(2) %></h4>
 <h5>Prize: <b><%=rs.getString(4) %> Rs.</b></h5>
 <div style="height:70px;overflow: hidden;">
 <%=rs.getString(3) %>
 </div>
 
 </div>
</div>
<%} %>
<a href="mess.jsp" class="btn btn-info" style="float: right;">Order >></a>
</div>
<br>
<div style="border-top:2px solid black;width: 100%;"></div>
</div>

<div class="col-md-12">
<br><br>
<center><h3 style="color:red;"><b>Food Order</b></h3></center>
<br><br>
<div style="border-top:2px solid black;padding-bottom: 25px;"></div>
<div class="row">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql1="select* from addfood order by id desc limit 4";
PreparedStatement ps1=con1.prepareStatement(sql1);
ResultSet rs1=ps1.executeQuery();
while(rs1.next()){
%>
<div class="col-md-3 thumbnail">
 <img class="images" src="<%=rs1.getString(5) %>" style="height: 150px;width:98%;">
 <div class="caption">
 <h4><%=rs1.getString(2) %></h4>
 <h5>Prize: <b><%=rs1.getString(4) %> Rs.</b></h5>
 <div style="height:70px;overflow: hidden;">
 <%=rs1.getString(3) %>
 </div>
 
 </div>
</div>
<%} %>
<a href="food.jsp" class="btn btn-info" style="float: right;">Order >></a>
</div>
<br>
<div style="border-top:2px solid black;width: 100%;"></div>
<br><br>
</div>

<div class="col-md-6" style="background-color: gray; line-height: 2.0;color:white;font-size: 15px;">
<center><h3 style="color:red;">About Us</h3></center>
<img src="images/img.jpg" class="images" class="img-responsive " alt="" style="float: left;height: 200px; width: 200px;padding: 25px;">
Retail food delivery is a courier service in which a restaurant, store, or independent food delivery company delivers food to a customer.
		     An order is typically made either through a restaurant or grocer's website or phone, or through a food ordering company. 
		    The delivered items can include entrees, sides, drinks, desserts, or grocery items and are typically delivered in boxes or bags. 
		    The delivery person will normally drive a car, but in bigger cities where homes and restaurants are closer together, they may use bikes or motorized scooters.
            Customers can, depending on the delivery company, choose to pay online or in person, with cash or card. 
            A flat rate delivery fee is often charged with what the customer has bought. 
            <a href="about.jsp" class="btn btn-success" style="float: right;">View More</a>
</div>

<div class="col-md-6">
<center><h3 style="color:red;">FeedBack</h3></center>
<form  action="contactdatabase.jsp" method="post" >
<b><label>Name</label></b><br>
<input type="text" placeholder="Enter Your Name" id="name" name="name" class="form-control"><br>
<b><label>Mobile</label></b><br>
<input type="number" placeholder="Mobile" id="mobile" name="mobile" class="form-control"><br>
<b><label>Message</label></b><br>
<textarea rows="5" cols="40" name="message" class="form-control" placeholder="Enter The Message" id="message"></textarea><br><br>

<input type="submit" class="btn btn-success" onclick="return gett()">
<input type="reset" class="btn btn-danger" value="Cancel"><br>


</form>
</div>

</div>
</div>

<div class="container-fluid">
<br><br>
<%-- <iframe src="<!-- https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3785.7071027344755!2d76.51856641509134!3d18.406176887475766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcf81376c7206db%3A0x38889e92717bda45!2sM%20S%20Bidve%20Engineering%20College!5e0!3m2!1sen!2sin!4v1589001753364!5m2!1sen!2sin -->" width="101%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
 --%><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3785.9684745667278!2d76.56028637516569!3d18.394285882674925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcf83c3007dfa5b%3A0x140f475bd9771cd0!2sPuranmal%20Lahoti%20Government%20Polytechnic!5e0!3m2!1sen!2sin!4v1682233024447!5m2!1sen!2sin" width="101%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>

<jsp:include page="footer.jsp"></jsp:include>
<script>
function gett()
{
var a=document.getElementById("name").value; 
var b=document.getElementById("mobile").value;
var c=document.getElementById("message").value;

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