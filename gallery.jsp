<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>

<style>
img:hover {
	opacity: 0.5;
}

#demo {
	border: 2px solid black;
	padding: 15px;
}
</style>
</head>
<body>
	<jsp:include page="header1.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8", "root",
					"root");
			String sql = "select * from galleryadd";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			int count = 0;

			while (rs.next()) {
				if (count % 4 == 0) {
					out.println("<div class=\"row\">");
				}
			%>

			<div class="col-md-3">
				<input type="hidden" value="<%=rs.getString(1)%>" name="id">
				<img class="img-rounded"
					"img-responsive" src="<%=rs.getString(2)%>" id="demo"
					style="height: 200px;width=200px;">
			</div>

			<%
			if (count % 4 == 3 || rs.isLast()) {
				out.println("</div>");
			}
			count++;

			}
			%>
		</div>
	</div>

</body>
<br>
<br>
<br>

<jsp:include page="footer.jsp"></jsp:include>

</html>