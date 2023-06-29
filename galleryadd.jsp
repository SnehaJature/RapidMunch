<!DOCTYPE html>
<%@ page import="java.sql.*" %>

<html>
<head>
<title>Bootstrap</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="row ">
<form  action="gallaryadddatabase.jsp" method="post" enctype="Multipart/form-data">
photo:-<input type="file" id="photo" name="photo"><br>
<input type="submit" class="btn btn-info" ><br><br>


<table border=1 class="table table-striped table-bordered table-hover " style="width:500px;">

<tr>
<th>sr.no</th>
<th>image</th>
<th>delete</th>

</tr>
<tr>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="select * from galleryadd";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
int cnt=1;
while(rs.next()){
%>
<td><%=cnt%></td>
<input type="hidden" value="<%=rs.getString(1)%>"name="id">
<td> <img class="img-thumbnail" "img-responsive" src="<%=rs.getString(2) %>" style="height:100px" "width:100px";><br></td>
<td><a href="gallarydelete.jsp?id=<%=rs.getString(1)%>">delete</a></td>




</tr>
<%cnt++;} %>


</form>
</div>
</div>
</div>
</div>
</body>
</html>