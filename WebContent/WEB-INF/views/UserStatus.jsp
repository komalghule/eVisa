-<!DOCTYPE html>
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
<h4 href="logout" align="right">Logout</h4>

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
					<td>${application.appointmentDetails}</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>