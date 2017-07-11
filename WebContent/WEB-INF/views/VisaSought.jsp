<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <title>Visa Sought</title>
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
width: 1000px;
height:200%;
position: absolute;
margin: auto;
top: 200px;
bottom:0;
left: 0;
right: 0;
padding: 30px;
}
body
{
    background-color: moccasin;
}
div
{
	width: 800px;
}
</style>
</head>
<body>
<form:form action="docUpload" modelAttribute="command">
         <center> <legend >Applicant Details Form</legend></center>
         <div>Please Note Down the Temporary Application Id:<form:input path="applicationFormId"/></div>
            <table>
					<legend><h4 style="text-decoration:darkorchid ">Detail of Visa Sought</h4></legend>
                <tbody>
                	<tr>
                		<td><h5 style="color: crimson"></h5></td>
			</tr>
                	<tr>
                        	<td>Type Of Visa : </td>
                        	<td><form:input path="visaType"/></td>
                    	</tr>
                    	<tr>
                        	<td>Name Of the institute in India : </td>
                        	<td><form:input path="visitPlace"  type="text" pattern="[A-Za-z]{1,100}"/></td>
                    	</tr>
                      	<tr>
                        	<td>Duration Of Visa :(in months)</td>
                        	<td><form:input path="duration"  type="text" pattern="[0-9]"/></td>
                    	</tr>
                      	<tr>
                        	<td>Entries : </td>
                        	<td><form:input path="entries"  type="text" pattern="[0-9]"/></td>	
 	                     </tr>
                    	<tr>
                        	<td>Purpose Of Visit : </td>
                        	<td><form:input path="purpose"  type="text" pattern="[A-Za-z]{1,100}"/></td>
                    	</tr>
                    	<tr>
                        	<td>Mobile NO:</td>
                        	<td><form:input path="mobile" type="tel" pattern="[0-9]{10}"/></td>
                    	</tr>
                    	<tr>
                        	<td>Email Address</td>
                        	<td><form:input path="email" type="email" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
                    	</tr>
			<tr>
	                        <td>Expected Date Of Journey : </td>
                        	<td><form:input path="arrivalDate"  type="date" /></td>
                    	</tr>
                    	<tr>
                        	<td>Port Of Arrival in India : </td>
                       		<td><form:input path="arrivalPortInIndia"  type="text" pattern="[A-Za-z]{3,100}"/></td>
                    	</tr>
                    	<tr>
                        	<td>Expected Port Of Exit from India : </td>
                       		<td><form:input path="exitPortInIndia"  type="text" pattern="[A-Za-z]{3,100}"/></td>
                    	</tr>
                    
	                <tr>
                        	<td><legend><h4 style="text-decoration:darkorchid ">Prevoius Visa/Currently Visa Details</h4></legend></td>
                    	</tr>
                       	<tr><td><h5 style="color: crimson"></h5></td></tr>
			<tr>
                        	<td>Last Indian Visa No./Currently valid Indian Visa No. : </td>
                       		<td><form:input path="prevVisaNo"  type="text" pattern="[A-PR-W-Y]{1}[1-9]{1}[0-9]{5}[1-9]{1}"/></td>
                    	</tr>
                    	<tr>
                        	<td>Cities Previously Visited in India : </td>
                       		<td><form:input path="cities"  type="text" /></td>
                    	</tr>
	                <tr>
                        	<td><legend><h4 style="text-decoration:darkorchid ">Reference</h4></legend></td>
                    	</tr>
                       	<tr><td><h5 style="color: crimson"></h5>Reference in India</td></tr>
			<tr>
	                        <td>Country : </td>
                        	<td><form:input path="refToCountry"  type="text"/></td>
                    	</tr>
                    	<tr>
                        	<td>Reference name in India : </td>
                       		<td><form:input path="refToName"  type="text" pattern="[A-Za-z' ']{3,100}"/></td>
                    	</tr>
                    	<tr>
                        	<td>Address : </td>
                       		<td><form:input path="refToAddress"  type="textarea" pattern="[A-Za-z0-9,-' ']{3,100}"/></td>
                    	</tr>
                    	<tr>
                        	<td>Phone : </td>
                       		<td><form:input path="refToMobile"  type="tel" pattern="[0-9]{10}"/></td>
                    	</tr>
                       	<tr><td><h5 style="color: crimson"></h5>From country Reference</td></tr>
			<tr>
	                        <td>Country : </td>
                        	<td><form:input path="refFromCountry"  type="text"/></td>
                    	</tr>
                    	<tr>
                        	<td>Reference name in Sri Lanka : </td>
                       		<td><form:input path="refFromName"  type="text" /></td>
                    	</tr>
                    	<tr>
                        	<td>Address : </td>
                       		<td><form:input path="refFromAddress"  type="textarea" pattern="[A-Za-z0-9,-' ']{100}"/></td>
                    	</tr>
                    	<tr>
                        	<td>Phone : </td>
                       		<td><form:input path="refFromMobile"  type="tel" pattern="[0-9]{10}"/></td>
                    	</tr>
                    	<tr>
                        	<td></td>
                        	<td>
                    			<center>
						<input type="submit" class="btn btn-default" formaction="home" value="Save and Temporary Exit"></input>
						<input type="submit" class="btn btn-default" value="Save and Continue"></input>
					</center>
                        	</td>
			</tr>
		</tbody>
	</table>
</form:form>
</body>
</html>
