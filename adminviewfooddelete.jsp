<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin view food delete</title>
</head>
<body>
<%
String id=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");

String sql="delete from addfood where id=?";

PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,id);

int done=ps.executeUpdate();
if(done>0){ %>
<script>

alert("Delete Successfully");
location.href="viewfood.jsp";
</script>

<%}else{ %>
<script>

alert("fail try again");
location.href="viewfood.jsp";
</script>

<% } %>


</body>
</html>