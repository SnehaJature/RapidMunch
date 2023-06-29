<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
MultipartRequest m=new MultipartRequest(request,"/Users/snehajature/eclipse-workspace/food delievery/src/main/webapp/image",1048*1048*1048);

String name=m.getParameter("name");
String description=m.getParameter("description");
String price=m.getParameter("price");
String photo="image/"+m.getFilesystemName("photo");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");

String sql="insert into addfood(name,description,price,photo)values(?,?,?,?)";

PreparedStatement PS=con.prepareStatement(sql);
PS.setString(1,name);
PS.setString(2,description);
PS.setString(3,price);
PS.setString(4,photo);
int done=PS.executeUpdate();


if(done >0){ %>
<script>

alert("success");
location.href="addfood.jsp";
</script>

<% } else{ %>
<script>

alert("fail");
location.href="addfood.jsp";
</script>

<% } %>


</body>
</html>

