<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
MultipartRequest m=new MultipartRequest(request,"C:/Users/DELL/workspace/food delievery/WebContent/image",1048*1048*1048);
String photo="image/"+m.getFilesystemName("photo");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="insert into galleryadd(photo)values(?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,photo);
int done=ps.executeUpdate();
if(done>0){%>
<script>
alert("success");
location.href="galleryadd.jsp";
</script>
<%}else{%>
<script>
alert("fail");
location.href="galleryadd.jsp";
</script>
<%} %>
</body>
</html>