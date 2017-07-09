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
	<img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg"/>
</div>


<style>
form {
	border: solid 2px crimson;
	width: 600px;
	height: 300px;
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


	<form action="home" method="post">
		<legend>Application Form</legend>

		<div>
			<label>Application Id:</label> <input required type="id" name="id" />
		</div>
		<br>

		<div>
			<label>Application Name:</label> <input required type="pno"
				name="pno" />
		</div>
		<br>
		<center>
			<!-- <button type="button" class="btn btn-danger">
				<a href="">Print</a> -->
			<input type="submit" value="PrintForm"/>
		</center>
		<br>
	</form>


</body>
</html>