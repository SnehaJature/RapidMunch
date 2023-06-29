<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>messOrderDatabase</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");

String user_id1=request.getParameter("user_id");
String final_total=request.getParameter("final_total");
String date1=request.getParameter("date");
String sql1="insert into mess_order1(user_id, total_amt, date,status)values(?,?,?,'pending')";
PreparedStatement ps1=con.prepareStatement(sql1);
ps1.setString(1, user_id1);
ps1.setString(2, final_total);
ps1.setString(3, date1);
int done1=ps1.executeUpdate();
int count=Integer.parseInt(request.getParameter("count").toString());
int i;
for(i=1;i<=count;i++){
String user_id=request.getParameter("user_id");
String product_id=request.getParameter("product_id"+i);
String product_name=request.getParameter("product_name"+i);
String product_qun=request.getParameter("product_quntity"+i);
String product_prize=request.getParameter("product_prize"+i);
String product_total=request.getParameter("total"+i);
String date=request.getParameter("date");
String sql="insert into mess_order(user_id, product_id, product_name, quntity, prize, total, date)values(?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, user_id);
ps.setString(2, product_id);
ps.setString(3, product_name);
ps.setString(4, product_qun);
ps.setString(5, product_prize);
ps.setString(6, product_total);
ps.setString(7, date);
int done=ps.executeUpdate();


if(done>0 && done1>0){
%>
<script type="text/javascript">
alert("Success");
location.href="mess.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
alert("Fail!! Try again");
location.href="mess.jsp";
</script>
<%}} %>
</body>
</html>