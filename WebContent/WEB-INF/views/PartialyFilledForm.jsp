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
</html>