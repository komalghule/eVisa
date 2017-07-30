<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Confirmation</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
 <div class = "top" style><img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg"></div> 
</head>
<style>
            div.top {
                width: 400px;
                height: 400px;
                border-radius: 200px;
              /*  background-color: red;*/
                margin: 10px;
                display: inline-block;
            }

/*            div.div1 {
                background: linear-gradient(red, yellow, green, blue);
            }

            div.div2 {
                background: radial-gradient(yellow, red, blue, green);
            }
*/
</style>
<body>
<form:form action="printForm" >
	<div class="top">
		<h3>Confirmation</h3>
		<br/>
		<br/>
		<ol>
			<li>Applicant Name : <form:input path="applicantName"/></li>
			<li>Applicant Id : <form:input path="applicationFormId"/></li>
		</ol>
		
		<div>
			<p>Your Application is submitted successfully.Please take a print of the Application form in PDF format and submmit it to conserning Indian Mission or Agency for processing of visa application.
			</p>
		</div></br></br>
	
		<div>
			<p>On pressing "Print Form",you will get the Application form in PDF format ,which can be Printed or Saved as per your Requirement.If your printer is not ready ,you can either Save it directly or open it and then save it for later priting.
			</p>
		</div><br/><br/>
	
		<div>
			<p>Please note down the Application id given above. This may be needed by you for reprint of application.
			</p>
		</div><br/><br/> 	
	
	</div>
	<input type="submit" value="Print Form">
	<!-- <a class="btn btn-default" href="printForm1">Print Form</a> -->
</form:form>
</body>

</html>
 --%>
 
<%--  
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Confirmation</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
 <div class = "top" style><img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg"></div> 
</head>
<style>
            div.top {
                width: 400px;
                height: 400px;
                border-radius: 200px;
              /*  background-color: red;*/
                margin: 10px;
                display: inline-block;
            }

/*            div.div1 {
                background: linear-gradient(red, yellow, green, blue);
            }

            div.div2 {
                background: radial-gradient(yellow, red, blue, green);
            }
*/
</style>
<body>
<form:form action="printForm" >
	<div class="top">
		<h3>Confirmation</h3>
		<br/>
		<br/>
		<ol>
			<li>Applicant Name : <form:input path="applicantName"/></li>
			<li>Applicant Id : <form:input path="applicationFormId"/></li>
		</ol>
		
		<div>
			<p>Your Application is submitted successfully.Please take a print of the Application form in PDF format and submmit it to conserning Indian Mission or Agency for processing of visa application.
			</p>
		</div></br></br>
	
		<div>
			<p>On pressing "Print Form",you will get the Application form in PDF format ,which can be Printed or Saved as per your Requirement.If your printer is not ready ,you can either Save it directly or open it and then save it for later priting.
			</p>
		</div><br/><br/>
	
		<div>
			<p>Please note down the Application id given above. This may be needed by you for reprint of application.
			</p>
		</div><br/><br/> 	
	
	</div>
	<input type="submit" class="btn btn-success" value="Print Form">
	<!-- <a class="btn btn-default" href="printForm1">Print Form</a> -->
</form:form>
</body>

</html> --%>



<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <title>Confirmation</title>
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
	<div id="head"><h4 >Confirmation</h4></div>
<%-- 	<form:form action="confirmation" modelAttribute="command">
	<div class = "Header">
	
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
 
 
 <form:form action="printForm" >
	<div class="top">
		<!-- <h3>Confirmation</h3> -->
		<br/>
		<br/>
		<table id="tb">
			<tbody>
				<tr>
					<td>Applicant Name : </td>
					<td>${command.applicantName}<%-- <form:input path="applicantName"/> --%></td>
				</tr>
				<tr>
					<td>Applicant Id : </td>
					<td>${command.applicationFormId}<%-- <form:input path="applicationFormId"/> --%></td>
				</tr>
				<tr><td colspan="2">Your Application is submitted successfully.Please take a print of the Application form in PDF format and submmit it to conserning Indian Mission or Agency for processing of visa application.</td></tr>
				<tr><td colspan="2">On pressing "Print Form",you will get the Application form in PDF format ,which can be Printed or Saved as per your Requirement.If your printer is not ready ,you can either Save it directly or open it and then save it for later priting.</td></tr>
				<tr><td colspan="2">Please note down the Application id given above. This may be needed by you for reprint of application.</td></tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2"><h3 align="center"><input type="submit" class="btn btn-success" value="Print Form"></h3></td>
				</tr>
			</tfoot>
		</table>
<%-- 		<ol>
			<li>Applicant Name : <form:input path="applicantName"/></li>
			<li>Applicant Id : <form:input path="applicationFormId"/></li>
		</ol>
		
		<div>
			<p>Your Application is submitted successfully.Please take a print of the Application form in PDF format and submmit it to conserning Indian Mission or Agency for processing of visa application.
			</p>
		</div></br></br>
	
		<div>
			<p>On pressing "Print Form",you will get the Application form in PDF format ,which can be Printed or Saved as per your Requirement.If your printer is not ready ,you can either Save it directly or open it and then save it for later priting.
			</p>
		</div><br/><br/>
	
		<div>
			<p>Please note down the Application id given above. This may be needed by you for reprint of application.
			</p>
		</div><br/><br/> 	
	
	</div>
 --%>
 
 	
	<!-- <a class="btn btn-default" href="printForm1">Print Form</a> -->
</form:form>
 
 
 </body>
</html>