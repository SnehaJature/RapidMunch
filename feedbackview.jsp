<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view food</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="bootstrapcss.css">

</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>
<table class="table table-striped table-bordered table-hover" >
<tr>
<th>id</th>
<th>name</th>
<th>mobile</th>
<th>message</th>
<th>Delete</th>
</tr>
<tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="select * from contact order by id desc";
PreparedStatement ps=con.prepareStatement(sql);
int i=1;
ResultSet rs=ps.executeQuery();
while(rs.next()){
%>

<td><%=i%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><a href="adminfeedbackdelete.jsp?id=<%=rs.getString(1)%>">Delete</a></td>

</tr>


<%i++;} %>
</table>
</body>
</html>