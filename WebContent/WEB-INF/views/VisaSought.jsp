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

<style>

.right_area
{
width:40%;
border:solid 2px;
 height:505px;
	top:0px;
	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
     padding-left:76px;
	possition:relative;
	 

}

.banner
{
width:100%;
	 
}
.btn
{
heigth:40px;
width:20%;

}

#form
{
width:80%;
height:100%;
border:solid 2px;


}
input
{
width:100%;
}
#head
{

height:40px;
width:100%;
padding-top:10px;
	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
 text-align:center;
 font-size:20px;
	possition:absolute;
	background-color:pink;

}
table
{

width:70%;
 height:505px;
	top:0px;
	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
    possition:absolute;
      border-collapse: separate;
    border-spacing: 0 1em;
 }
 #label
 {
 text-align:right;
 padding-right:6%;
 }
#heading
{
text-align:left;
padding-top:20px;
padding-left:20px;
}
#i
{
text-align:left;

}
#tempid
{
width:20%;
}
</style>
</head>
<body>
     
     <div>
		<img class="banner" alt="Indian Visa Online"
			src="images/banner1.jpg">
	</div>
	 <center> <h3 id="head">Applicant Details Form</h3></ce4nter>
	 
   <form:form action="docUpload" modelAttribute="command" id="form">
        
         <div id="heading">Please Note Down the Temporary Application Id:<form:input path="applicationFormId" id="tempid"/></div>
            <br/>
         
            <table>
					
                <tbody>
                	<tr>
                	<td colspan=2><legend><h4  style="text-decoration:darkorchid;color:crimson">Detail of Visa Sought</h4></legend></td>
                	<td></td>
                	</tr>
                	<tr>
                        	<td id="label">Type Of Visa</td>
                        	<td><form:input path="visaType"/></td>
                    	</tr>
                    	<tr>
                        	<td  id="label">Name Of the institute in India</td>
                        	<td><form:input path="visitPlace"  type="text" pattern="[A-Za-z]{1,100}"/></td>
                    	</tr>
                      	<tr>
                        	<td  id="label">Duration Of Visa :(in months)</td>
                        	<td><form:input path="duration"  type="text" pattern="[0-9]"/></td>
                    	</tr>
                      	<tr>
                        	<td  id="label">Entries</td>
                        	<td><form:input path="entries"  type="text" pattern="[0-9]"/></td>	
 	                     </tr>
                    	<tr>
                        	<td  id="label">Purpose Of Visit </td>
                        	<td><form:input path="purpose"  type="text" pattern="[A-Za-z]{1,100}"/></td>
                    	</tr>
                    	<tr>
                        	<td  id="label">Mobile NO</td>
                        	<td><form:input path="mobile" type="tel" pattern="[0-9]{10}"/></td>
                    	</tr>
                    	<tr>
                        	<td  id="label">Email Address</td>
                        	<td><form:input path="email" type="email" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
                    	</tr>
			<tr>
	                        <td  id="label">Expected Date Of Journey</td>
                        	<td><form:input path="arrivalDate"  type="date" /></td>
                    	</tr>
                    	<tr>
                        	<td  id="label">Port Of Arrival in India</td>
                       		<td><form:input path="arrivalPortInIndia"  type="text" pattern="[A-Za-z]{3,100}"/></td>
                    	</tr>
                    	<tr>
                        	<td  id="label">Expected Port Of Exit from India</td>
                       		<td><form:input path="exitPortInIndia"  type="text" pattern="[A-Za-z]{3,100}"/></td>
                    	</tr>
                    
	                <tr>
                        	<td><legend><h4 style="text-decoration:darkorchid;color:crimson">Prevoius Visa/Currently Visa Details</h4></legend></td>
                    	</tr>
                       
			            <tr>
                        	<td  id="label">Last Indian Visa No./Currently valid Indian Visa No.</td>
                       		<td><form:input path="prevVisaNo"  type="text" pattern="[A-PR-W-Y]{1}[1-9]{1}[0-9]{5}[1-9]{1}"/></td>
                    	</tr>
                    	<tr>
                        	<td  id="label">Cities Previously Visited in India </td>
                       		<td><form:input path="cities"  type="text" /></td>
                    	</tr>
	                      <tr>
                        	<td><legend><h4 style="text-decoration:darkorchid;color:crimson">Reference</h4></legend></td>
                    	</tr>
                    	
                       	<tr>
                       	<td id="label"><h5 style="text-decoration:darkorchid;color:blue">Reference in India</h5></td>
                       	</tr>
			            
			            <tr>
	                        <td id="label">Country : </td>
                        	<td><form:input path="refToCountry"  type="text"/></td>
                    	</tr>
                    	<tr>
                        	<td id="label">Reference name in India</td>
                       		<td><form:input path="refToName"  type="text" pattern="[A-Za-z' ']{3,100}"/></td>
                    	</tr>
                    	<tr>
                        	<td id="label">Address</td>
                       		<td><form:input path="refToAddress"  type="textarea" pattern="[A-Za-z0-9,-' ']{3,100}"/></td>
                    	</tr>
                    	<tr>
                        	<td id="label">Phone</td>
                       		<td><form:input path="refToMobile"  type="tel" pattern="[0-9]{10}"/></td>
                    	</tr>
                       	<tr>
                       	<td id="label"><h5 style="text-decoration:darkorchid;color:blue">From country Reference</h5></td>
                       	</tr>
			            <tr>
	                        <td id="label">Country</td>
                        	<td><form:input path="refFromCountry"  type="text"/></td>
                    	</tr>
                    	<tr>
                        	<td id="label"> Reference name in Sri Lanka</td>
                       		<td><form:input path="refFromName"  type="text" /></td>
                    	</tr>
                    	<tr>
                        	<td id="label">Address : </td>
                       		<td><form:input path="refFromAddress"  type="textarea" pattern="[A-Za-z0-9,-' ']{100}"/></td>
                    	</tr>
                    	<tr>
                        	<td id="label">Phone : </td>
                       		<td><form:input path="refFromMobile"  type="tel" pattern="[0-9]{10}"/></td>
                    	</tr>
                    	
		</tbody>
	</table>
	<br/>
			<center>
						<input type="submit" class="btn btn-success" formaction="home" value="Save and Temporary Exit"></input>
						<input type="submit" class="btn btn-danger" value="Save and Continue"></input>
					</center>
</form:form>
</body>
</html>
