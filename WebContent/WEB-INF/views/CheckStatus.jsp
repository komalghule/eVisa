<!DOCTYPE html>
<html lang="en">
<head>
<title>User Registration</title>
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


	<form action="" method="POST" role="form">
		<legend>Visa Status Enquiry </legend>

		<div>
			<label>Application Id:</label> <input type="id" name="id" required="" />
		</div>
		<br>

		<div>
			<label>passport No:</label> <input type="pno" name="pno" required="" />
		</div>
		<br>
		<center>
			<a href="checkStatus" class="btn btn-default">Check Status</a>
		</center>
		<br>
		<p>
		<ul class="list-group">
			Note:
			<li class="list-group-item">Visa Status Enquiry can be used to
				know Visa Status.</li>
			<li class="list-group-item">Application ID can be seen on your
				receipt issued by Indian Mission/Agent where you have submitted your
				Application</li>

		</ul>


		</p>

	</form>


</body>
</html>