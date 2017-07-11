<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Confirm Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
 <div><img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg"></div> 
<style>

.Header{
	margin:auto;
}

</style>
</head>

<body>
<form:form action="confirmation" modelAttribute="command">
	<div class = "Header">
	<h3>Confirm Details</h3>
	</div>
	<br/>
	<br/>
	<center>
		
		<input type="submit" class="btn btn-default" formaction="applicantDetailForm" value="Modify"/>	
		<input type="submit" class="btn btn-default" value="Verified and Continue"/>
	</center>
		
	<!-- <a class="btn btn-default" href="confirmation">Verified and Continue</a> -->
	<!-- <a class="btn btn-default" href="applicantDetailForm">Modify</a> -->
</form:form>
</body>



</html>
