<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Food Order</title>
</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>
<div class="container">
<div class="row">
<div class="col-md-12" style="height: 550px;overflow: auto;">
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
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="select food_order1.date,registration.name,registration.mobile,registration.city,registration.id ,food_order1.status from food_order1 inner join registration on food_order1.user_id=registration.id order by food_order1.id desc";
PreparedStatement ps=con.prepareStatement(sql);
int i=1;
ResultSet rs=ps.executeQuery();
while(rs.next()){
	
%>
<td><%=i %></td>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><a href="viewFoodOrder.jsp?user_id=<%=rs.getString(5) %>&date=<%=rs.getString(1) %>">View Order</a></td>
<%if(rs.getString(6).equals("pending")) {%>
<td><a id="status" onclick="return myFunction()" href="status_update_food.jsp?user_id=<%=rs.getString(5) %>&date=<%=rs.getString(1) %>&status=<%=rs.getString(6) %>" style="color:red;"><%=rs.getString(6) %></td>
<%}else{ %>
<td><b><%=rs.getString(6) %></b>
<%} %>
</tr>
<%i++;} %>

</table>
</div>



<div class="col-md-12" >
<div class="panel panel-primary" id="printTable">
<div class="panel-heading">Order Detail
</div>
<div class="panel-body">


<%
String user_id1=request.getParameter("user_id");
Class.forName("com.mysql.jdbc.Driver");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql2="select *from registration where id=?";
PreparedStatement ps2=con2.prepareStatement(sql2);
ps2.setString(1, user_id1);
ResultSet rs2=ps2.executeQuery();
while(rs2.next()){
%>
<div style="padding: 20px;">
Name: <b><%=rs2.getString(2) %></b>&nbsp;&nbsp;&nbsp;
Mobile: <b><%=rs2.getString(3) %></b>&nbsp;&nbsp;&nbsp;
Email: <b><%=rs2.getString(4) %></b>&nbsp;&nbsp;&nbsp;
City: <b><%=rs2.getString(5) %></b>&nbsp;&nbsp;&nbsp;
Address: <b><%=rs2.getString(6) %></b>&nbsp;&nbsp;&nbsp;
</div>
<%}%>




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
String user_id=request.getParameter("user_id");
String date=request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql1="select *from food_order where user_id=? and date=?";
PreparedStatement ps1=con1.prepareStatement(sql1);
ps1.setString(1, user_id);
ps1.setString(2, date);
ResultSet rs1=ps1.executeQuery();
int cnt=1;
String demo=null;
while(rs1.next()){
%>
<%if(!rs1.equals(demo)){ %>
<td><%=cnt %></td>
<td><%=rs1.getString(4) %></td>
<td><%=rs1.getString(5) %></td>
<td><%=rs1.getString(6) %></td>
<td><%=rs1.getString(7) %></td>
<%}else{ %>
<td><%=cnt %></td>
<td><%=rs1.getString(4) %></td>
<td><%=rs1.getString(5) %></td>
<td><%=rs1.getString(6) %></td>
<td><%=rs1.getString(7) %></td>
<%} %>
</tr>
<%cnt++;} %>
</table>


<%
String user_id2=request.getParameter("user_id");
String date2=request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver");
Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql3="select *from food_order1 where user_id=? and date=?";
PreparedStatement ps3=con3.prepareStatement(sql3);
ps3.setString(1, user_id2);
ps3.setString(2, date2);
ResultSet rs3=ps3.executeQuery();
while(rs3.next()){
%>

<b style="float: right;margin-right: 10%;"> Total Amount: <span style="color: red;font-size: 15px;"><%=rs3.getString(3) %></span></b>
<%} %>
















<br><br>
<button type="button" class="btn btn-info" id="btn">Print</button>
</div>
</div>

</div>
</div>
</div>

<script type="text/javascript">
function myFunction() {
	  var r = confirm("Are You Sure!! this order complate?");
	  if (r == true) {
	    return true;
	  } else {
	    return false;
	  }
	 
	}
function printData()
{
   var divToPrint=document.getElementById("printTable");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}

$('#btn').on('click',function(){
printData();
})
</script>

</body>
</html>