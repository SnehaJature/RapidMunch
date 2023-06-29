<!DOCTYPE html>
<html lang="en">
<head>
  <title>admin header</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
if(session.getAttribute("admin_id")==null){
%>
<script type="text/javascript">
alert("first login");
location.href="adminlogin.jsp";
</script>
<%} %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Online Food Delivery</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="addfood.jsp">Add food</a></li>
       <!--  <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="addmess.jsp">Add Mess <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li> -->
        <li class="active"><a href="addmess.jsp">Add Mess</a></li>
        <li class="active"><a href="viewfood.jsp">View Food</a></li>
        <li class="active"><a href="viewmess.jsp">View Mess</a></li>
        <li class="active"><a href="viewMessOrder.jsp" class="btn btn-info">Mess Order</a></li>
         <li class="active"><a href="viewFoodOrder.jsp" class="btn btn-info">Food Order</a></li>
         <li class="active"><a href="viewuser.jsp">View User</a></li>
        <li class="active"><a href="feedbackview.jsp">Feedback</a></li>
        <li class="active"><a href="Inquiry.jsp">Inquiry</a></li>
         
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="logout_admin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  

</body>
</html>
