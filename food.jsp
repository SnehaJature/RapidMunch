<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food order</title>
<style>
img:hover
{
 opacity:0.5; 
}
</style>

</head>
<body>
<jsp:include page="header1.jsp"></jsp:include>
<div class="container">
<div class="row">

<div class="col-md-9">
<div class="row">

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql="select *from addfood where status='show'";
PreparedStatement ps=con.prepareStatement(sql);
int i=0;
ResultSet rs=ps.executeQuery();
while(rs.next()){
	i++;
%>
<div class="col-md-4 thumbnail">
 <img src="<%=rs.getString(5) %>" style="height: 150px;width:98%;">
 <div class="caption">
 <h4><%=rs.getString(2) %></h4>
 <h5>Prize: <b><%=rs.getString(4) %> Rs.</b></h5>
 <div style="height:70px;overflow: hidden;">
 <%=rs.getString(3) %>
 </div>
 <button type="button" id="minus<%=i%>" style="display: none;background: red;color:white;">-</button>
 <input type="text" id="num<%=i%>" style="width: 30%;">
 <button type="button" id="add<%=i%>" style="background: blue;color:white;">+</button>
 <!-- <a href="#" class="btn btn-success">Order</a> -->
 </div>
</div>

<script type="text/javascript">
var ctn=0;
$(document).ready(function(){
	var x=0;
	var s=0;
	var y=<%=i%>;
	$("#add<%=i%>").click(function(){
	
		$("#profile,#demo,#minus<%=i%>").show();
		x++;
		s++;
		$("#num<%=i%>").val(x);
		
		
		if($(".chk"+y).hasClass("p"+y)){
			
			var addd= x * <%=rs.getString(4) %>;
			
		$(".chk"+y).html("<b style='font-size:18px;'><%=rs.getString(2) %><input type='hidden' class='pn' name='product_name"+y+"' value='<%=rs.getString(2) %>'></b>"
		+"<b style='font-size:18px;padding:20px;'><input type='hidden' class='pn1' name='product_quntity"+y+"' value='"+x+"'>"+x+" * <%=rs.getString(4) %> <input type='hidden' class='pn2' name='product_prize"+y+"' value='<%=rs.getString(4) %>'>="+addd+"</b>"
		+"<input type='hidden' name='total"+y+"' value='"+addd+"' class='total pn3'>"
		+"<input type='hidden' class='pn4' name='product_id"+y+"' value='<%=rs.getString(1) %>'>");
		
		}
		else{
			var addd= x * <%=rs.getString(4) %>;
			ctn++;
			
           $("#count").val(ctn);
		
			$("#demos").append("<p style='color:black;' class='p"+y+" chk"+y+"'>"
			+"<b style='font-size:18px;'><%=rs.getString(2) %><input type='hidden'  class='pn' name='product_name"+y+"' value='<%=rs.getString(2) %>'></b>"
			+"<b style='font-size:18px;padding:20px;' ><input type='hidden' class='pn1' name='product_quntity"+y+"' value='"+x+"'>"+x+" * <%=rs.getString(4) %><input type='hidden' class='pn2' name='product_prize"+y+"' value='<%=rs.getString(4) %>'> = "+addd+"</b>"
			+"<input type='hidden'  name='total"+y+"' value='"+addd+"' class='total pn3'>"
			+"<input type='hidden' class='pn4' name='product_id"+y+"' value='<%=rs.getString(1) %>'>"
			+"</p>");
			
			
		}
	
		if($("#product_quntity"+y+"").val()<=0 || $("#product_quntity"+y+"").val()<="-1"){
			$(".chk"+y+"").remove();
			
		} 
		$("#demos p").each(function(index){
			
			$(this).find('.pn').attr("name","product_name"+(index+1));
			 $(this).find('.pn1').attr("name","product_quntity"+(index+1));
			$(this).find('.pn2').attr("name","product_prize"+(index+1));
			$(this).find('.pn3').attr("name","total"+(index+1));
			$(this).find('.pn4').attr("name","product_id"+(index+1)); 
			/* alert(index); */
		});
				
		var totall=$(".total");
		var t=0;
		totall.each(function(){
			t=t+Number($(this).val());
		});
		
		<% if(session.getAttribute("user_id")!=null){%>
		$("#result").html("<b>Total Amount: </b><span style='color:red; font-size:18px;'>"+t+"<input type='hidden' name='final_total' value='"+t+"'></span>"
				+"<input type='submit' value='order confirm' class='btn btn-info'>");
		<%}else{%>
		$("#result").html("<b>Total Amount: </b><span style='color:red; font-size:18px;'>"+t+"<input type='hidden' name='final_total' value='"+t+"'></span>"
				+"<a href='registration.jsp' class='btn btn-info'>Login</a>");
		<%}%>
	});
	
	$("#minus<%=i%>").click(function(){
		x--;
		$("#num<%=i%>").val(x);
		
		var num=$("#num<%=i%>").val();
		
		
		if($(".chk"+y).hasClass("p"+y)){
			var addd= x * <%=rs.getString(4) %>;
			
		$(".chk"+y).html(" <b style='font-size:18px;'><%=rs.getString(2) %><input type='hidden' class='pn' name='product_name"+y+"' value='<%=rs.getString(2) %>'></b>"
		+"<b style='font-size:18px;padding:20px;'><input type='hidden' class='pn1' name='product_quntity"+y+"' id='product_quntity"+y+"' value='"+x+"'>"+x+" * <%=rs.getString(4) %> <input type='hidden' class='pn2' name='product_prize"+y+"' value='<%=rs.getString(4) %>'>="+addd+"</b>"
		+"<input type='hidden'  name='total"+y+"' value='"+addd+"' class='total pn3'>"
		+"<input type='hidden' class='pn4' name='product_id"+y+"' value='<%=rs.getString(1) %>'>");
		
		if($("#product_quntity"+y+"").val()>=1){
			$("#minus<%=i%>").show();
		}
		}
		else{
			var addd= x * <%=rs.getString(4) %>;
			   
			$("#demos").append("<p style='color:black;' class='p"+y+" chk"+y+"'>"
			+"<b style='font-size:18px;'><%=rs.getString(2) %><input type='hidden' class='pn' name='product_name"+y+"' value='<%=rs.getString(2) %>'></b>"
			+"<b style='font-size:18px;padding:20px;' ><input type='hidden' class='pn1' name='product_quntity"+y+"' value='"+x+"'>"+x+" * <%=rs.getString(4) %> <input type='hidden' class='pn2' name='product_prize"+y+"' value='<%=rs.getString(4) %>'>= "+addd+"</b>"
			+"<input type='hidden'  name='total"+y+"' value='"+addd+"' class='total pn3'>"
			+"<input type='hidden' class='pn4' name='product_id"+y+"' value='<%=rs.getString(1) %>'>"
			+"</p>");
			
			
		}
      
		
		if($("#product_quntity"+y+"").val()<=0 || $("#product_quntity"+y+"").val()<="-1"){
			$(".chk"+y+"").remove();
			ctn--;
			$("#demos p").each(function(index){
				
				$(this).find('.pn').attr("name","product_name"+(index+1));
				 $(this).find('.pn1').attr("name","product_quntity"+(index+1));
				$(this).find('.pn2').attr("name","product_prize"+(index+1));
				$(this).find('.pn3').attr("name","total"+(index+1));
				$(this).find('.pn4').attr("name","product_id"+(index+1)); 
				/* alert(index); */
			});
	        $("#count").val(ctn);
	        $("#minus<%=i%>").hide();
		}  
		
		var a=$("#count").val();
		if(a==0){
			$("#demo").hide();
		}
		
		
		var totall=$(".total");
		var t=0;
		totall.each(function(){
			t=t+Number($(this).val());
		});
		
		<% if(session.getAttribute("user_id")!=null){%>
		$("#result").html("<b>Total Amount: </b><span style='color:red; font-size:18px;'>"+t+"<input type='hidden' name='final_total' value='"+t+"'></span>"
				+"<input type='submit' value='order confirm' class='btn btn-info'>");
		<%}else{%>
		$("#result").html("<b>Total Amount: </b><span style='color:red; font-size:18px;'>"+t+"<input type='hidden' name='final_total' value='"+t+"'></span>"
				+"<a href='registration.jsp' class='btn btn-info'>Login</a>");
		<%}%>
		
		
		
		
		if(num<0){
			alert("Warning !! not accept less than 0 value");
			$("#num<%=i%>").val(0);
			return false;
			
		}
	});
	
	
});



</script>
<%} %>
<script>

</script>

<br><br>
<div class="row">
<div class="col-md-12"><br><br>
<div style="border-top:2px solid black;width: 100%;"></div>

<form action="FoodInquiryDB.jsp" class="form-group" method="post">
<br>
<center><h2 style="color:red;">Request For Food</h2></center>
<label>Name</label>
<input type="text" id="Uname" name="Uname" class="form-control" placeholder="Enter Your Name" ><br>

<label>Mobile</label>
<input type="number" id="MobNumber" name="MobNumber" class="form-control" placeholder="Enter Your Mobile Number" ><br>

<label>Message</label>
<textarea rows="3" cols="3" id="Message" name="Message" class="form-control" placeholder="Enter Message" ></textarea><br>

<input type="submit" class="btn btn-success" onclick="return validate()">
<input type="reset" class="btn btn-danger" value="Cancel"><br><br>

</form>

</div>
</div>



</div>
</div>

<div class="col-md-3" id="demo"   style="border: 2px groove; padding: 5px;line-height: 2.0;display: none;"> 
<form action="foodOrderDatabase.jsp" method="post">
<input type="text" name="count" id="count">
<input type="hidden" name="date" value="<%= (new java.util.Date()).toLocaleString()%>">
<div id="demos">

</div>
<br>


<div id="result" style="float: right; margin-right: 40%;"></div>


<div id="profile" style="display: none;">
<% if(session.getAttribute("user_id")!=null){
	String user_id=session.getAttribute("user_id").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery?characterEncoding=utf8","root","root");
String sql1="select *from registration where id=?";
PreparedStatement ps1=con1.prepareStatement(sql1);
ps1.setString(1, user_id);
ResultSet rs1=ps1.executeQuery();
while(rs1.next()){	
%>
<input type="hidden" value="<%=rs1.getString(1) %>" name="user_id" id="user_id">
Name: <b><%=rs1.getString(2) %></b><br>
Mobile: <b><%=rs1.getString(3) %></b>
City : <b><%=rs1.getString(5) %></b><br>
Address: <b><%=rs1.getString(6) %></b>

		<%}}else{%>
		
		<%}%>

</div>
</form>
</div>


</div>
</div>

<script type="text/javascript">

function validate()
{
var d=document.getElementById("Uname").value; 
var e=document.getElementById("MobNumber").value;
var f=document.getElementById("Message").value;

if(d=="")
{
alert("please fill your name");
return false;
}
else if(e.length!=10)
{
alert("please enter only ten digit of mobile number");
return false;
}
else if(f=="")
{
alert("please enter your message");
return false;
}

else
{
return true;
}
}
</script>
<br><br><br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>