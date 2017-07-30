<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="" modelAttribute="command">
		<h3>All Request</h3>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Valid Id</th>
					<th>User Name</th>
					<th>From Country</th>
					<th>Apply Date</th>
					<th>Payment Detail</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var='application' items='${requestScope.ApplicationList}'>
					<tr>
						<td><c:out value='${application.id}'/></td>
						<td><c:out value='${application.personal.givenname}' /></td>
						<td><c:out value='${application.personal.nationality}' /></td>
						<td><c:out value='${application.date}' /></td>
						<td><c:out value='${application.payment}' /></td>
						<td><form:select path="status">
							<form:option value="Pending"/>
							<form:option value="InProcess"/>
							<form:option value="Complete"/>
						</form:select></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form:form>
</body>
</html> --%>



<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">

        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
    </head>
    <body>
    
        <nav class="navbar navbar-inverse ">
            <div class="container">
                <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Admin Panel</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="allApplicantDetails">All Request</a></li>
                   
                    <li onclick = "logoutAdmin()"><a>Logout</a></li>
                </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div>Welcome Admin</div>
        <div class="container">
            <div id="contacts"></div>
        </div>
	<form:form action="" modelAttribute="command">
		<h3>All Request</h3>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Valid Id</th>
					<th>User Name</th>
					<th>From Country</th>
					<th>Apply Date</th>
					<th>Payment Detail</th>
					<th>Documents</th>
					<th>Status</th>
					<th>AppointmentSchedule</th>
					<th>Remove</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var='application' items='${requestScope.ApplicationList}'>
					<tr>
						<td><c:out value='${application.id}'/></td>
						<td><c:out value='${application.personal.givenname}' /></td>
						<td><c:out value='${application.personal.nationality}' /></td>
						<td><c:out value='${application.date}' /></td>
						<td><c:out value='${application.payment}' /></td>
						<td><c:out value='${application.documents}'/></td>
						<td><c:out value='${application.status}'/><br/><a href="update?id=${application.id}">set status</a></td>
						<td><a href="scheduleAppointment?id=${application.id}">Make Appointment Schedule</a></td>
						<td><a href="removeApp?id=${application.id}">delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form:form>
	<script>
		function logoutAdmin(){
            window.location = "home";
        }
	</script>
    </body>
</html> --%>

<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ADMIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Drive Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="acss/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="acss/style.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="acss/flexslider.css" type="text/css" media="all" property="" /> 
<link href="acss/font-awesome.css" rel="stylesheet"> 			<!-- font-awesome icons -->
<link href="acss/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<!-- //Custom Theme files -->  
<!-- js -->
<script src="ajs/jquery-2.2.3.min.js"></script>  
<script src="ajs/smoothscroll.min.js"></script> 
<!-- //js -->
<!-- web-fonts -->  
<!-- <link href="//fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
 --><!-- //web-fonts --> 
<style>
.logo
{
width:80%;

top:0;
bottom:0;
left:0;
right:0;
margin:auto;
possition:relative:

}
</style>

</head>
<!-- banner -->
	<div class="banner w3about">
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="header-w3lsrow"> 
					 
					<div class="logo">
					<!-- <h1><a href="index.html" style="font-size: 25px;text-align: center;text-decoration: blink;color: crimson">Online  Portal  For  Visa  Application  to  India</a></h1>	</div> -->  
					
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //header --> 
		<!-- banner-text -->
		<div class="banner-text"> 
			<div class="container"> 
				<div class="banner-w3lstext">
					<h2>Welcome To Admin Panel </h2>
				</div> 	 
			</div>
		</div>
		<!-- //banner-text --> 
	</div>
	<div class="menu"> 
		<div class="toggle"></div> 
		<ul class="w3nav">
		<li> <a href="index">Admin Panel</a></li>
			<li><a href="allApplicantDetails">All Request</a></li>
			<li onclick = "logoutAdmin()"><a>Logout</a></li>
		</ul>
		<div class="clearfix"> </div>
	</div>
	<br/><br/><br/>
	<form:form action="" modelAttribute="command">
		<h3 align="center" >All Request</h3>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Valid Id</th>
<!-- 					<th>User Name</th>
					<th>From Country</th>
 -->					<th>Apply Date</th>
					<th>Payment Detail</th>
					<th>Documents</th>
					<th>Status</th>
					<th>AppointmentSchedule</th>
					<th>Approve</th>
					<th>Reject</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var='application' items='${requestScope.ApplicationList}'>
					<tr>
						<td><c:out value='${application.id}'/></td>
						<%-- <td><c:out value='${application.personal.givenname}' /></td>
						<td><c:out value='${application.personal.nationality}' /></td> --%>
						<td><c:out value='${application.date}' /></td>
						<td><c:out value='${application.payment}' /></td>
						<td><c:out value='${application.documents}'/></td>
						<td><c:out value='${application.status}'/><br/><a href="update?id=${application.id}">set status</a></td>
						<td><a href="scheduleAppointment?id=${application.id}">Make Appointment Schedule</a></td>
						<td><a href="approveApp?id=${application.id}">Approve</a></td>
						<td><a href="removeApp?id=${application.id}">Reject</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form:form>
	<script>
		function logoutAdmin(){
            window.location = "index";
        }
	</script>
	<script>
		$('.toggle').on('click', function() {
			$('.menu').toggleClass('open');  
			$('.w3nav').toggleClass('show-w3nav');  
			$('.w3nav a').toggleClass('show-w3nav-link');  
			$('.toggle').toggleClass('close');  
		});
	</script>

	<script type="text/javascript" src="ajs/move-top.js"></script>
	<script type="text/javascript" src="ajs/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <script src="ajs/bootstrap.js"></script>
    
</body>
</html>