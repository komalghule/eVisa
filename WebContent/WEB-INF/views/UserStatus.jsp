<%-- <!DOCTYPE html>
<html lang="en">
<head>
<title>User Status</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<div>
	<img class="banner" alt="Indian Visa Online"
		src="bootstrap/images/banner1.jpg">
</div>

<style>
form {
	border: solid 2px crimson;
	width: 1000px;
	height: 65%;
	position: absolute;
	margin: auto;
	top: 200px;
	bottom: 0;
	left: 0;
	right: 0;
	padding: 30px;
}

body {
	background-color: moccasin;
}

div {
	width: 800px;
}
</style>
</head>
<body>
<h4  align="right"><a href="logout">Logout</a></h4>

	<form action="register.html">
		<legend>
			<h4 style="text-decoration: darkorchid">Applicant Visa Status</h4>
		</legend>

		<div><h5 style="color: firebrick">Application Id : ${application.id}</h5></div>
		<div><h5 style="color: firebrick">Passport No : ${application.passport.passportNo}</h5></div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Status</th>
					<th>Appointment Details</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${application.personal.givenname}</td>
					<td>${application.personal.surname}</td>
					<td>${application.status}</td>
					<td>
					<table>
						<tr>
							<td>Mission : </td>
							<td>${application.appointmentDetails.mission}</td>
						</tr>
						<tr>
							<td>Date : </td>
							<td>${application.appointmentDetails.date}</td>
						</tr>
						<tr>
							<td>Time : </td>
							<td>${application.appointmentDetails.time}</td>
						</tr>
					</table>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html> --%>



<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Check Status</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<div>
	<img class="banner" alt="Indian Visa Online"
		src="bootstrap/images/banner1.jpg">
</div>


<style>
form {
	border: solid 2px crimson;
	width: 600px;
	height: 440px;
	position: absolute;
	margin: auto;
	top: 200px;
	bottom: 0;
	left: 0;
	right: 0;
	padding: 30px;
}

div {
	width: 400px;
}
</style>
</head>

<body>


<h4  align="right"><a href="logout">Logout</a></h4>

	<form action="register.html">
		<legend>
			<h4 style="text-decoration: darkorchid">Applicant Visa Status</h4>
		</legend>

		<div><h5 style="color: firebrick">Application Id : ${application.id}</h5></div>
		<div><h5 style="color: firebrick">Passport No : ${application.passport.passportNo}</h5></div>
		<table class="tb">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Status</th>
					<th>Appointment Details</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${application.personal.givenname}</td>
					<td>${application.personal.surname}</td>
					<td>${application.status}</td>
					<td>
					<table>
						<tr>
							<td>Mission : </td>
							<td>${application.appointmentDetails.mission}</td>
						</tr>
						<tr>
							<td>Date : </td>
							<td>${application.appointmentDetails.date}</td>
						</tr>
						<tr>
							<td>Time : </td>
							<td>${application.appointmentDetails.time}</td>
						</tr>
					</table>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html> --%>











  <%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<title>User Status</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
 --><!-- start-smoth-scrolling -->

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
 <style>
 
 #tb
{
height:130px;
width:120%;
top:0px;
bottom:0px;
right:0px;
left:0px;
   margin:auto;
   possition:absolute;	
   border-collapse: separate;
   border-spacing: 0 1em;
   padding-left:30%;
    
     
}

 
form
{
  
border: solid 2px crimson;
width: 1000px;
height:70%;
position: absolute;
margin: auto;
top: 150px;
bottom:0;
left: 0;
right: 0;
margin-top:5%;

}

div
{
	width: 800px;
}
#head
{

height:40px;
width:100%;
padding-top:5px;
	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
 text-align:center;
 font-size:20px;
	possition:relative;
	background-color:#fe9126;
	
	
	 

}
.banner
{
width:160%;
	 
}
input
{
padding-right:45%;
}

#tempid
{
padding-left:10%;
margin-bottom:10px;
margin-top:10px;
}
.container
{
margin-top:5px;
width:70%;
height:1070%;
border:solid 2px;
margin-bottom:20px;

}
</style>


</head>
<body>

<div> 
     <img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg">
</div>
	<div id="head"><h4>Applicant Visa Status</h4></div>
		
		
<h4  align="right"><a href="logout">Logout</a></h4>

	<form action="">
<!-- 		<legend>
			<h4 style="text-decoration: darkorchid">Applicant Visa Status</h4>
		</legend>
 -->
<table id="tb">
	<tbody>
		<tr>
			<td>Application Id :</td>
			<td>${application.id}</td>
		</tr>
		<tr>
			<td>Passport No : </td>
			<td>${application.passport.passportNo}</td>
		</tr>
	</tbody>
</table>

		<table id="tb">
			<thead>
				<tr>
<!-- 					<th>First Name</th>
					<th>Last Name</th>
 -->					<th>Status</th>
					<th>Appointment Details</th>
				</tr>
			</thead>
			<tbody>
				<tr>
<%-- 					<td>${application.personal.givenname}</td>
					<td>${application.personal.surname}</td>
 --%>					<td>${application.status}</td>
					<td>
					<table>
						<tr>
							<td>Mission : </td>
							<td>${application.appointmentDetails.mission}</td>
						</tr>
						<tr>
							<td>Date : </td>
							<td>${application.appointmentDetails.date}</td>
						</tr>
						<tr>
							<td>Time : </td>
							<td>${application.appointmentDetails.time}</td>
						</tr>
					</table>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
 </body>
</html>
 
