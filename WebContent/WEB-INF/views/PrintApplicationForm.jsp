<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Print Form</title>
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
	<form:form action="showForm" method="post" modelAttribute="command">
		<legend>Print Application Form</legend>
		<div>
			<label>Application Id:</label> <input required type="text" name="id" />
		</div>
		<div>
			<label>Application Name:</label> <input required type="text" name="pno" />
		</div>
		<center><input type="submit" value="PrintForm" class="btn btn-success"/></center>
	</form:form>
</body>
</html> --%>
















<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Print Form</title>
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
	<form:form action="showForm" method="post">
		<legend>Print Application Form</legend>
		<div>
			<label>Application Id:</label> <input required type="text" name="id" />
		</div>
		<div>
			<label>Application Name:</label> <input required type="text" name="pno" />
		</div>
		<center><input type="submit" value="PrintForm" class="btn btn-success"/></center>
	</form:form>
</body>
</html> --%>














<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Print Form</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>

 <style>
 #tempid
{
padding-left:10%;
}
 
form
{
  
border: solid 2px crimson;
width: 1000px;
height:65%;
position: absolute;
margin: auto;
top: 200px;
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
width:187%;
padding-top:5px;

	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
 text-align:center;
 font-size:20px;
	possition:relative;
	background-color:#fe9126;
padding-right:15%;
}

input
{
width:20%;
padding-right:20%;
}


#tempid
{
padding-left:4%;
margin-bottom:5%;
margin-top:3%;
}
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
   padding-left:10%;
   
}
.banner
{
width:170%;
	 
}
#label
{
text-align:right;
padding-right:9%;
}

input#btn
{
width:10%;
}

</style>

</head>
<body>
 <div> <div> 
     <img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg">
</div>
	<div id="head"><h4 >Print Application Form</h4></div>
<%-- 	<form:form action="confirmation" modelAttribute="command">
	<div class = "Header">
	<h3>Confirm Details</h3>
	</div>
	<br/>
	<br/>
	<center>
		
		<input type="submit" class="btn btn-danger" formaction="applicantDetailForm" value="Modify"/>	
		<input type="submit" class="btn btn-success" value="Verified and Continue"/>
	</center>
		
	<!-- <a class="btn btn-default" href="confirmation">Verified and Continue</a> -->
	<!-- <a class="btn btn-default" href="applicantDetailForm">Modify</a> -->
</form:form>
 --%>
 
 
 	<form:form action="showForm" method="post">
		<!-- <legend>Print Application Form</legend> -->
		<table id="tb">
			<tbody>
				<tr>
					<td>Application Id : </td>
					<td><form:input type="text" path="id" /></td>
				</tr>
				<tr>
					<td>Application Name (Given Name) : </td>
					<td><form:input type="text" path="pno" /></td>
				</tr>
				<tr>
					<td colspan="2"><h3 align="left"> <input type="submit" value="PrintForm" class="btn btn-success"/> </h3></td>
				</tr>
				
			</tbody>
	
			<tfoot>
			<tr>
				<h4 align="right"><a href="logout">Logout</a></h4>
			</tr>
			</tfoot>		
		</table>
		
		
	
	
<!-- 		<div>
			<label>Application Id:</label> <input required type="text" name="id" />
		</div>
		<div>
			<label>Application Name:</label> <input required type="text" name="pno" />
		</div>
 -->		<!-- <center><input type="submit" value="PrintForm" class="btn btn-success"/></center> -->
	</form:form>
 
 
 </body>
</html>