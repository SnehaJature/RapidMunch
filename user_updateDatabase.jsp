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
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String city=request.getParameter("city");
String address=request.getParameter("address");
String gender=request.getParameter("gender");
String user_id=request.getParameter("user_id");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");

String sql="update registration set name=?,mobile=?,email=?,city=?,address=?,gender=? where id=?";

PreparedStatement PS=con.prepareStatement(sql);
PS.setString(1,name);
PS.setString(2,mobile);
PS.setString(3,email);
PS.setString(4,city);
PS.setString(5,address);
PS.setString(6,gender);
PS.setString(7,user_id);
int done=PS.executeUpdate();
if(done >0){ %>
<script>

alert("Profle Updated");
location.href="userProfile.jsp?user_id=<%out.print(user_id);%>";
</script>

<% } else{ %>
<script>

alert("Faild");
location.href="userProfile.jsp?user_id=<%out.print(user_id);%>";
</script>

<% } %>

</body>
</html>