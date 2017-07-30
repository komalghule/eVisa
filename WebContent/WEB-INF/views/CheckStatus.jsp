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


	<form:form action="showStatus" modelAttribute="command">
		<legend>Visa Status Enquiry </legend>
   	<table>
    		<tbody>
	    		<tr>
    				<td><label>Application Id:</label></td>
    				<td><form:input type="text" path="id"/></td>
    			</tr>
    			<tr>
    				<td><label>passport No:</label></td>
    				<td><form:input type="text" path="pno" /></td>
    			</tr>    		
    		</tbody>
    	</table>                    
        <center>
            <input type="submit" value="Check Status"></input>
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

	</form:form>


</body>
</html> --%>

<%-- 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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


	<form:form action="showStatus" modelAttribute="command">
		<legend>Visa Status Enquiry </legend>
   	<table>
    		<tbody>
	    		<tr>
    				<td><label>Application Id:</label></td>
    				<td><form:input type="text" path="id"/></td>
    			</tr>
    			<tr>
    				<td><label>passport No:</label></td>
    				<td><form:input type="text" path="pno" /></td>
    			</tr>    		
    		</tbody>
    					<tfoot>
			<tr>
				<h4 align="right"><a href="logout">Logout</a></h4>
			</tr>
			</tfoot>		
    		
    	</table>                    
        <center>
            <input type="submit" value="Check Status"></input>
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

	</form:form>


</body>
</html> --%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
width:40%;
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
#label
{
text-align:right;
padding-right:9%;
}

input#btn
{
width:13%;
}

</style>

</head>
<body>
 <div> <div> 
     <img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg">
</div>
	<div id="head"><legend>Visa Status Enquiry </legend></div>
<%-- 	<form:form action="confirmDetails" modelAttribute="command">
	
		<div id="tempid"><legend><h4>Please Note Down the Temporary Application Id:${id}</h4></legend></div>
		<table id="tb">
			<tbody>
				<tr style="column-span: 10px">
					<td id="label">Transaction Id : </td>
					<td>${id}</td>
				</tr>				
				<tr style="column-span: 10px">
					<td id="label">Enter Amount : </td>
					<td><form:input type="text" placeholder="Enter amount here..." path="amount"/></td>
				</tr>
				<tr>
					<td id="label">Enter Date : </td>
					<td><form:input  type="date" placeholder="Enter date..." path="date"/></td>
				</tr>
				<tr>
					<td id="label">Payment Mode: </td>
					<td><form:select path="paymentMode" >
						<option>CreditOrDebit</option>
						<option>NetBanking</option>
					</form:select></td>
				</tr>
			</tbody>
		</table><br/><br/><br/>
		<center>
			<input type="submit" class=" btn btn-danger" formaction="home" value="Exit" id="btn"/>
			<input type="submit" class=" btn btn-success" value="Pay and Continue" id="btn"/>
			
		</center>
	</form:form>
 --%>
 
 	<form:form action="showStatus" modelAttribute="command">
		
   	<table id="tb">
    		<tbody>
	    		<tr>
    				<td><label>Application Id:</label></td>
    				<td><form:input type="text" path="id"/></td>
    			</tr>
    			<tr>
    				<td><label>passport No:</label></td>
    				<td><form:input type="text" path="pno" /></td>
    			</tr>
    			<tr>
    				<td colspan="2"><input style="width: 150px" type="submit" class="btn btn-success" value="Check Status"></input></td>
    			</tr>    		
    		</tbody>
    					<tfoot>
			<tr>
				<h4 align="right"><a href="logout">Logout</a></h4>
			</tr>
			</tfoot>		
    		
    	</table>                    
        <center>
            
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
		</center>
		<br>

	</form:form>
 
 
 </body>
</html>