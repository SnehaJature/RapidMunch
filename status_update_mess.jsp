<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>status update of mess order</title>
</head>
<body>
<%
String user_id=request.getParameter("user_id");
String date=request.getParameter("date");
String status=request.getParameter("status");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="";
PreparedStatement ps=null;
if(status.equals("pending")){
	sql="update mess_order1 set status='complate' where user_id=? and date=?";
	ps=con.prepareStatement(sql);
	ps.setString(1, user_id);
	ps.setString(2, date);
	
}/* else{
	sql="update mess_order1 set status='pending' where id="+id;
	ps=con.prepareStatement(sql);
	
	
} */
int done=ps.executeUpdate();
if(done>0){
%>
<script type="text/javascript">
alert("Status Changed");
location.href="viewMessOrder.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
alert("Fail Try Again");
location.href="viewMessOrder.jsp";
</script>
<%} %>
</body>
</html>