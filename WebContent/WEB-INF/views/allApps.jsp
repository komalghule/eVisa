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



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form:form>
	<script>
		var status = $('#status').val();
		var id = $('#id').val();
		console.log(status);
		$('#status').change(function(){

			$.ajax({
				url : "update?";
			});
			console.log("in function");
			console.log($('#status').val());
			
		});
		
		function logoutAdmin(){
            window.location = "home";
        }
	</script>
    </body>
</html>