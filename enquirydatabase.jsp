<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 


String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String subject=request.getParameter("subject");
String message=request.getParameter("message");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");

String sql="insert into enquiry(name,email,mobile,subject,message)values(?,?,?,?,?)";

PreparedStatement PS=con.prepareStatement(sql);
PS.setString(1,name);
PS.setString(2,email);
PS.setString(3,mobile);
PS.setString(4,subject);
PS.setString(5,message);
int done=PS.executeUpdate();


if(done >0){ %>
<script>

alert("success");
location.href="enquiry.jsp";
</script>

<% } else{ %>
<script>

alert("fail");
location.href="enquiry.jsp";
</script>

<% } %>


</body>
</html>

