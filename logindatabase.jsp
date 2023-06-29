<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Database</title>
</head>
<body>
<% 
String email=request.getParameter("email");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");

String sql="select *from registration where email=? and password=?";

PreparedStatement PS=con.prepareStatement(sql);
PS.setString(1,email);
PS.setString(2,password);
ResultSet rs=PS.executeQuery();
if(rs.next()){ 
	session.setAttribute("user_id", rs.getString(1));
	session.setAttribute("user_name", rs.getString(2));
%>

<script>

alert("Login Success!!");
location.href="index.jsp";
</script>

<% } else{ %>
<script>

alert("Fail!! Try Again");
location.href="registration.jsp";
</script>

<% } %>


</body>
</html>

