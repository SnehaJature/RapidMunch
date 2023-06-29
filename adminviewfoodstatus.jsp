<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>status update of food display</title>
</head>
<body>
<%
String mess_id=request.getParameter("food_id");
String status=request.getParameter("status");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="";
PreparedStatement ps=null;
if(status.equals("hide")){
	sql="update addfood set status='show' where id=?";
	ps=con.prepareStatement(sql);
	ps.setString(1, mess_id);

	
} else{
	sql="update addfood set status='hide' where id=?";
	ps=con.prepareStatement(sql);
	ps.setString(1, mess_id);
	
	
}
int done=ps.executeUpdate();
if(done>0){
%>
<script type="text/javascript">
alert("Status Changed");
location.href="viewfood.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
alert("Fail Try Again");
location.href="viewfood.jsp";
</script>
<%} %>
</body>
</html>