<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view mess submit</title>
</head>
<body>

<% 
MultipartRequest m=new MultipartRequest(request,"/Users/snehajature/eclipse-workspace/food delievery/src/main/webapp/image",1048*1048*1048);
String name=m.getParameter("Name");
String img="image/"+m.getFilesystemName("photo");
String img1=m.getFilesystemName("photo");
String price=m.getParameter("price");
String description=m.getParameter("description");
String id=m.getParameter("id");



Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="";
PreparedStatement ps=null;



if(img1!=null){

sql="update addmess set Name=?, photo=?,price=?,description=? where id=?";
ps=con.prepareStatement(sql);

ps=con.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,img);
ps.setString(3,price);
ps.setString(4,description);
ps.setString(5,id);


}else
{
sql="update addmess set Name=?,price=?,description=? where id=?";
ps=con.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,price);
ps.setString(3,description);
ps.setString(4,id);

}
int done=ps.executeUpdate();

if(done >0){ %>
<script>

alert("success");
location.href="viewmess.jsp";
</script>

<% } else{ %>
<script>

alert("fail");
location.href="viewmess.jsp";
</script>

<% }
%>


</body>
</html>