<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Filled Partial Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
 <div><img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg"></div> 


 <style>
form
{
  
border: solid 2px crimson;
width: 600px;
height: 440px;
position: absolute;
margin: auto;
top: 200px;
bottom:0;
left: 0;
right: 0;
padding: 30px;
}
div
{
    width: 400px;
}

</style>
</head>
<body>
    <form:form action="filledAppForm" modelAttribute="command">
    	<legend>Filled Remaining Form</legend>
    	<table>
    		<tbody>
	    		<tr>
    				<td><label>Application Id:</label></td>
    				<td><form:input type="text" path="applicationFormId"/></td>
    			</tr>
    			<tr>
    				<td><label>passport No:</label></td>
    				<td><form:input type="text" path="passportNo" /></td>
    			</tr>    		
    		</tbody>
    	</table>                    
        <center>
            <input type="submit" value="Filled Form"></input>
		</center>
	</form:form> 
</body>
</html> --%>









<%-- 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Filled Partial Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
 <div><img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg"></div> 


 <style>
form
{
  
border: solid 2px crimson;
width: 600px;
height: 440px;
position: absolute;
margin: auto;
top: 200px;
bottom:0;
left: 0;
right: 0;
padding: 30px;
}
div
{
    width: 400px;
}

</style>
</head>
<body>
    <form:form action="filledAppForm" modelAttribute="command">
    	<legend>Filled Remaining Form</legend>
    	<table>
    		<tbody>
	    		<tr>
    				<td><label>Application Id:</label></td>
    				<td><form:input type="text" path="applicationFormId"/></td>
    			</tr>
    			<tr>
    				<td><label>passport No:</label></td>
    				<td><form:input type="text" path="passportNo" /></td>
    			</tr>    		
    		</tbody>
    	</table>                    
        <center>
            <input type="submit" value="Filled Form"></input>
		</center>
	</form:form> 
</body>
</html> --%>




<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Filled Partial Form</title>
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
	<div id="head"><legend> Filled Remaining Form </legend></div>
    <form:form action="filledAppForm" modelAttribute="command">
    	<legend></legend>
    	<table id="tb">
    		<tbody>
	    		<tr>
    				<td><label>Application Id:</label></td>
    				<td><form:input type="text" path="applicationFormId"/></td>
    			</tr>
    			<tr>
    				<td><label>passport No:</label></td>
    				<td><form:input type="text" path="passportNo" /></td>
    			</tr>    		
    		</tbody>
    	</table>                    
        <center>
            <input type="submit" value="Filled Form"></input>
		</center>
	</form:form> 
 </body>
</html>