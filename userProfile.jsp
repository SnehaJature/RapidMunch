<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile</title>
</head>
<body>
<%-- <%
if(session.getAttribute("user_id")==null){
%>
<script type="text/javascript">
alert("first login");
location.href="index.jsp";
</script>
<%} %> --%>
<jsp:include page="header1.jsp"></jsp:include>
<div class="container">
<div class="row">
<div class="col-md-4">
<div class="panel panel-info">
<div class="panel-heading">User Info</div>
<div class="panel-body">
<form  action="user_updateDatabase.jsp" method="post">
<table class="table table-bordered table-hover table-striped">
<%
String user_id1=session.getAttribute("user_id").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql1="select *from registration where id="+user_id1;
PreparedStatement ps1=con1.prepareStatement(sql1);
ResultSet rs1=ps1.executeQuery();
while(rs1.next()){
%>
<input type="hidden" id="id" value="<%=rs1.getString(1) %>" name="user_id" class="form-control" required>
<tr>
<th>Name</th>
<th><input type="text" placeholder="Enter your Name" id="name" value="<%=rs1.getString(2) %>" name="name" class="form-control" required></th>
</tr>
<tr>
<th>Mobile</th>
<th><input type="number" name="mobile" placeholder="Mobile" id="mobile" value="<%=rs1.getString(3) %>" name="mobile" class="form-control" required></th>
</tr>
<tr>
<th>Email</th>
<th><input type="email" placeholder="Email" id="email" value="<%=rs1.getString(4) %>" name="email" class="form-control" required></th>
</tr>
<tr>
<th>City</th>
<th><input type="text" placeholder="Enter City Name" id="city" value="<%=rs1.getString(5) %>" name="city" class="form-control" required></th>
</tr>
<tr>
<th>Address</th>
<th><textarea rows="5" cols="40" name="address" class="form-control" placeholder="Enter Your Address" id="address" required><%=rs1.getString(6) %></textarea></th>
</tr>
<tr>
<th>Gender</th>
<th><select name="gender" class="form-control">
<option value="<%=rs1.getString(7) %>"><%=rs1.getString(7) %></option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select></th>
</tr>
<%} %>
</table>
<input type="submit" class="form-control btn btn-info" value="Update">
</form>
</div>
</div>
</div>





<div class="col-md-8" style="height: 550px;overflow: auto;">
<h5><b>Mess Order Detail</b></h5>
<table class="table table-bordered table-stripped table-hovers">
<tr class="info">
<th>Sr.No</th>
<th>Date</th>
<th>User Name</th>
<th>Mobile</th>
<th>City</th>
<th>View Order</th>
<th>Status</th>
</tr>
<tr>
<%
String user_id=session.getAttribute("user_id").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="select mess_order1.date,registration.name,registration.mobile,registration.city,registration.id ,mess_order1.status from mess_order1 inner join registration on mess_order1.user_id=registration.id where mess_order1.user_id=? order by mess_order1.id desc";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, user_id);
int i=1;
ResultSet rs=ps.executeQuery();
while(rs.next()){
	
%>
<td><%=i %></td>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><a href="userProfile.jsp?user_id=<%=rs.getString(5) %>&date=<%=rs.getString(1) %>"  style="color:blue;">View Order</a></td>
<%if(rs.getString(6).equals("pending")) {%>
<td><a style="color:red;"><%=rs.getString(6) %></td>
<%}else{ %>
<td><b><%=rs.getString(6) %></b>
<%} %>
</tr>
<%i++;} %>

</table>
</div>



<div class="col-md-12" >
<div class="panel panel-primary" id="printTable">
<div class="panel-heading">Mess Order Detail
</div>
<div class="panel-body">


<table class="table table-bordered table-stripped table-hovers">
<tr class="info">
<th>Sr.No</th>
<th>Product Name</th>
<th>Quntity</th>
<th>Prize</th>
<th>Total</th>
</tr>
<tr>
<%
String user_id2=request.getParameter("user_id");
String date=request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver");
Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql3="select *from mess_order where user_id=? and date=?";
PreparedStatement ps3=con3.prepareStatement(sql3);
ps3.setString(1, user_id2);
ps3.setString(2, date);
ResultSet rs3=ps3.executeQuery();
int cnt=1;

while(rs3.next()){
%>

<td><%=cnt %></td>
<td><%=rs3.getString(4) %></td>
<td><%=rs3.getString(5) %></td>
<td><%=rs3.getString(6) %></td>
<td><%=rs3.getString(7) %></td>

</tr>
<%cnt++;} %>
</table>


<%
String user_id3=request.getParameter("user_id");
String date2=request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver");
Connection con4=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql4="select *from mess_order1 where user_id=? and date=?";
PreparedStatement ps4=con4.prepareStatement(sql4);
ps4.setString(1, user_id2);
ps4.setString(2, date2);
ResultSet rs4=ps4.executeQuery();
while(rs4.next()){
%>

<b style="float: right;margin-right: 10%;"> Total Amount: <span style="color: red;font-size: 15px;"><%=rs4.getString(3) %></span></b>
<%} %>




<br><br>

</div>
</div>


<div style="border-bottom:5px solid red; "></div>
</div>


<!-- FoodOrder Detail Start -->

<div class="col-md-8" style="height: 450px;overflow: auto;">
<br><br>
<h5><b>//************************************<span style="color:red;">Food Order Detail</span>***********************************************************//</b></h5>
<table class="table table-bordered table-stripped table-hovers">
<tr class="info">
<th>Sr.No</th>
<th>Date</th>
<th>User Name</th>
<th>Mobile</th>
<th>City</th>
<th>View Order</th>
<th>Status</th>
</tr>
<tr>
<%
String user_id5=session.getAttribute("user_id").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con5=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql5="select food_order1.date,registration.name,registration.mobile,registration.city,registration.id ,food_order1.status from food_order1 inner join registration on food_order1.user_id=registration.id where food_order1.user_id=? order by food_order1.id desc";
PreparedStatement ps5=con5.prepareStatement(sql5);
ps5.setString(1, user_id5);
int i1=1;
ResultSet rs5=ps5.executeQuery();
while(rs5.next()){
	
%>
<td><%=i1 %></td>
<td><%=rs5.getString(1) %></td>
<td><%=rs5.getString(2) %></td>
<td><%=rs5.getString(3) %></td>
<td><%=rs5.getString(4) %></td>
<td><a href="userProfile.jsp?user_id=<%=rs5.getString(5) %>&date=<%=rs5.getString(1) %>" style="color:blue;">View Order</a></td>
<%if(rs5.getString(6).equals("pending")) {%>
<td><a style="color:red;"><%=rs5.getString(6) %></a></td>
<%}else{ %>
<td><b><%=rs5.getString(6) %></b>
<%} %>
</tr>
<%i1++;} %>

</table>
</div>



<div class="col-md-12" >
<div class="panel panel-primary" id="printTable">
<div class="panel-heading">Food Order Detail
</div>
<div class="panel-body">


<table class="table table-bordered table-stripped table-hovers">
<tr class="info">
<th>Sr.No</th>
<th>Product Name</th>
<th>Quntity</th>
<th>Prize</th>
<th>Total</th>
</tr>
<tr>
<%
String user_id6=request.getParameter("user_id");
String date6=request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver");
Connection con6=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql6="select *from food_order where user_id=? and date=?";
PreparedStatement ps6=con6.prepareStatement(sql6);
ps6.setString(1, user_id6);
ps6.setString(2, date6);
ResultSet rs6=ps6.executeQuery();
int i2=1;

while(rs6.next()){
%>

<td><%=i2 %></td>
<td><%=rs6.getString(4) %></td>
<td><%=rs6.getString(5) %></td>
<td><%=rs6.getString(6) %></td>
<td><%=rs6.getString(7) %></td>

</tr>
<%i2++;} %>
</table>

<%
String user_id7=request.getParameter("user_id");
String date7=request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver");
Connection con7=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql7="select *from food_order1 where user_id=? and date=?";
PreparedStatement ps7=con7.prepareStatement(sql7);
ps7.setString(1, user_id7);
ps7.setString(2, date7);
ResultSet rs7=ps7.executeQuery();
while(rs7.next()){
%>

<b style="float: right;margin-right: 10%;"> Total Amount: <span style="color: red;font-size: 15px;"><%=rs7.getString(3) %></span></b>
<%} %>

<br><br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>