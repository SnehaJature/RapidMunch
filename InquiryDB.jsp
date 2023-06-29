<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  page import="java.sql.*"%>

<% 

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8", "root", "root");
%>
<%
String sql = "insert into Inquiry(name,number,message) values(?,?,?)";
PreparedStatement ps = con.prepareStatement(sql) ;

String name = request.getParameter("Uname");
String MobNumber = request.getParameter("MobNumber");
String message = request.getParameter("Message");

ps.setString(1,name);
ps.setString(2,MobNumber);
ps.setString(3,message);

int done=ps.executeUpdate();	
if(done>0){%>
<script type="text/javascript">
alert("Added Successfully!!!!!");
location.href="mess.jsp";
</script>
<%}
else{%>
<script type="text/javascript">
alert("Fail try again!!!");
location.href="mess.jsp";
</script>
<%}


%>