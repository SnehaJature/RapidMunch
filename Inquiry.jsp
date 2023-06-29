<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Food Delivery</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
</head>
<body>

<jsp:include page="adminheader.jsp"></jsp:include>



<!-- main content start-->
		 <div id="page-wrapper">
			<div class="main-page">
			<div class="container">
				
				<div class="row">
					<div class="col-md-12 table-responsive">
					
					
					<table class="table table-bordered table-stripped table-hovers" id="myTable">
					    <tr class="info">
					    <th>Sr No.</th>
					    <th>Name</th>
					    <th>Number</th>
					     <th>Message</th>
					     <th>Delete</th>
					     
					     
					    </tr>
					    <tbody>
					    <tr>
					    
					        <%
					      Class.forName("com.mysql.jdbc.Driver");
					      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8", "root", "root");
					      String sql ="select * from Inquiry";
					      PreparedStatement ps = con.prepareStatement(sql);
					      ResultSet rs = ps.executeQuery();
					      int i = 1;
					      while(rs.next()){
					    %>
					    <td><%=i %></td>
					    <td><%=rs.getString("name")%></td> 
					    <td><%=rs.getString("number")%></td>
					    <td><%=rs.getString("message") %> </td>
                        <td><a href="Inquirydelete.jsp?ID=<%=rs.getString("ID")%>" class="btn btn-danger btn-sm">Delete </a></td>
					    					    
					    </tr>
					    
					    <%i++;} %>
					    </tbody>
					   </table>
					   
					</div>
					    
				</div>
				</div>
				</div>
				</div>
				
		
</body>
</html>