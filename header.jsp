<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Online food delivery</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="I wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montez' rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<!--//slider-script-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
				
</script>	
		  		 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<!-- js -->
		 <script src="js/bootstrap.js"></script>
	<!-- js -->
<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
<style>
.header-top{
	background-image: url(images/img2.jpg);
	}
</style>
</head>
<body> 
<!--header-->
		<div class="header-info">
			<div class="container">
					<div class="header-top-in">
						
						<ul class="support">
							<li><a href="mailto:info@example.com"><i class="glyphicon glyphicon-envelope"> </i>principal@plgpl.org</a></li>
							<li><span><i class="glyphicon glyphicon-earphone" class="tele-in"> </i>02382 252 004</span></li>			
						</ul>
						<%
						if(session.getAttribute("user_id")==null){
						%>
						<ul class=" support-right">
							<li><a href="registration.jsp"><i class="glyphicon glyphicon-user" class="men"> </i>Login</a></li>
							
						</ul>
						<%
						}else{
						%>
						<ul class=" support-right">
							<li><a href="userProfile.jsp?id=<%=session.getAttribute("user_id") %>"><i class="glyphicon glyphicon-user" class="men"> </i><%=session.getAttribute("user_name") %><span class="caret"></span></a></li>
							<li><a href="user_logout.jsp" style="color:red;">Logout</a></li>
						</ul>
						<%} %>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>	
 
 
 
 
 
 
 
 
 <div class="header">
	<div class="header-top">

			<div class="header-bottom">
			<div class="container">			
				<div class="logo">
					<h1><a href="index.jsp"><span>online food delivery</span></a></h1>
				</div>
		
		 
			<div class="top-nav">
				<ul class="memenu skyblue">
				    <li class=""><a href="index.jsp" class="btn btn-info">Home</a></li>
					<li class="grid"><a href="about.jsp" class="btn btn-info">About</a>
					<li class="grid"><a href="mess.jsp" class="btn btn-info">Mess</a>
					<li class="grid"><a href="food.jsp" class="btn btn-info">Food</a>
					<li class="grid"><a href="service.jsp" class="btn btn-info">Service</a>
					<li class="grid"><a href="gallery.jsp" class="btn btn-info">Gallery</a>
						
					</li>
					<li class="grid"><a href="Contact.jsp" class="btn btn-info">Contact</a>
						
					</li>
		
					

					
				</ul>
				<div class="clearfix"> </div>
			</div>
					
					
<div class="clearfix"> </div>
					
				</div>
			<div class="clearfix"> </div>
		</div>
		</div>
 
 
 
 






 <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="500">
 
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
              
            </ol>
          
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            
            
            
            <div class="item active">
                <img src="https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Image 1" style="height:100vh;width:100vw">
              </div>
            
              <div class="item ">
                <img src="https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Image 2" style="height:100vh;width:100vw">
              </div>
          
              <div class="item">
                <img src="https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Image 3" style="height:100vh;width:100vw">
              </div>
              
         
            </div>
          
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
          </div>
          

<script>
            $(document).ready(function(){
              $('.carousel').carousel({
                interval: 500 // Change slide every 2 seconds
              })
            });
            
            
      
            </script>
            
            <script>
            <script>
            $(document).ready(function(){
              $('.carousel').carousel({
                interval: 500 // Change slide every 2 seconds
              })
            });
            </script>
            
            
            
            
            
            
            






<!----	<div class="banner">
		<div class="banner-top">
	         <h2>Food delivery</h2>
	         <p>Goggles or safety glasses are forms of protective eyewear<span>fthat usually enclose or protect the area surrounding the eye in order to prevent particulates.</span></p>
</div>
	<div class="now">
	         <a class="morebtn" href="product.html">Explore</a>
	         <a class="morebtn at-in" href="single.html">Shop Now</a>
	         <div class="clearfix"> </div>
	         </div>
 	</div>	
 				<div class="clearfix"> </div>	
			  !--></div>