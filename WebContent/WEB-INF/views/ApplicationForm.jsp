<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<title>Application Form</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 

<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
 --><!-- start-smoth-scrolling -->

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
</head>
<style>
.banner
{
width:100%;
	 
}
#btn
{
heigth:40px;
width:44%;

}
#tempid{
width:33%;
}
input
{

width:150%;

}
.form-control{
width: 150%;

}
#head
{

height:40px;
width:100%;
padding-top:8px;
	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
 text-align:center;
 font-size:20px;
	possition:absolute;
	background-color:#fe9126;
}

#title{
text-align:center;
margin-bottom:12px;
margin-top:5px;
width: 100%;
color: crimson;
}
table
{

width:75%;
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
.container
{
margin-top:10px;
width:70%;
height:950%;
border:solid 2px;
margin-bottom:20px;

}
#label{
text-align: left;
}
#i
{
text-align:right;
padding-right: 30%;

}
</style>	
<body>
<!-- header -->
	
<div><img class="banner" alt="Indian Visa Online" src="images/banner1.jpg"></div>


<form:form action="applicantDetailForm" modelAttribute="command">
		
	<div id="head">Application Form</div>
	 
	<div class="container" id="main">
	<br/>
	<div class="col-md-11">
	<br/>
 <h5 id="appid">Please Note Down the Temporary Application Id : ${visaApplication.id}</h5><br/>
  <%-- <div id="appid">Please Note Down the Temporary Application Id : ${visaApplication.id}</div> --%>	
 <hr>
      <table id=tb>
             
      <tbody>
			    <tr id="i">
				<td colspan=2><h4 id="title" style="text-decoration: darkorchid;">Applicant Details</h4></td>
				
				<td></td>
				</tr>
			
				<tr id="i">
				<td id="label">Surname(as per passport)</td>
				<td><form:input type="text" path="lastName" /></td>
				</tr>
				
				<tr id="i">
					<td id="label">Given Name(as per passport)</td>
				   <td><form:input type="text" path="firstName"/></td>
				</tr>
				
			<tr id="i">
					<td id="label">Previous Name </td>
					<td><form:input type="text" path="prevName" /></td>
		        </tr>		
				
				<tr id="i">
					<td id="label">Date of birth (dd/mm/yyyy) : </td> 
					<td><form:input  id="datepicker1" name="Text" type="text" path="birthDate" /></td>
				</tr>
				

				<tr id="i">
					<td id="label">Town/City of birth</td>
					<td><form:input id="data" type="text" name="city"  path="birthCity"/></td>
				</tr>
				<tr id="i">
						<td id="label">Country of birth</td>
                       
							<td><form:select path="birthCountry" class="form-control">
								<option>South Africa</option>
								<option>Switzerland</option>
								<option>Australia</option>
								<option>United Kingdom</option>
								<option>India</option>
								<option>Sri Lanka</option>
								<option>South Korea</option>
							</form:select></td>
					</tr>
					
					 <tr id="i">
						<td id="label">Select Gender</td>
                       
							<td><form:select path="gender" class="form-control">
								<option>Female</option>
								<option>Male</option>
								
							</form:select></td>
					
					</tr>
						
                    	<tr id="i">
						<td id="label">Citizenship/National Id No</td>
						<td><form:input type="text" path="nationalId"/></td>
					</tr>
                   
                    <tr id="i">
							<td id="label">religion</td>
						<td>	<form:select class="form-control" path="religion" style="display:inline-block">
								<option>Hindu</option>
								<option>Christianity</option>
								<option>Buddhism</option>
								<option>Islam</option>
								<option>Others</option>
							</form:select>
						</td>
					</tr>
					
					<tr id="i">
						<td id="label">Visible Identification Mark</td>
						<td><form:input type="text" path="visibleIdMark" /></td>
					</tr>
					
					<tr id="i">
							<td id="label">Educational Qualification</td>
							<td><form:select path="qualification" class="form-control">
								<option>Primary</option>
								<option>Secondary</option>
								<option>Higher Secondary</option>
								<option>Graduation</option>
								<option>Post Graduation</option>
								<option>PH.D</option>
								<option>Other</option>
							</form:select></td>
					</tr>
					
					 <tr id="i">
                          <td id="label"> Have you lived for at least two year in the country where you are applying.</td>
                          <td><form:checkbox path="twoYearsMoreLiveForFromCountry"  name="question" value="question"/></td>     	
                      </tr>
				   <br/>
                   <tr id="i">
 						<td  colspan=2><h4 id="title" style="text-decoration: darkorchid;">Passport Details</h4></td>	     
                  	 	<td></td>
                   </tr>
                        
                        <tr id="i">
						<td id="label"> Passport No.(as shown in your passport)</td>
						<td><form:input type="text" path="passportNo"  pattern="[A-PR-W-Y]{1}[1-9]{1}[0-9]{5}[1-9]{1}" /></td>
					     </tr>
					     
					<tr id="i">
						<td id="label">place of issue</td>
						<td><form:input type="text" path="issueCity"  pattern="[a-zA-Z0-9]"/></td>
					</tr>
					
					<tr id="i">
						<td id="label"> Date of Issue</td>
						<td><form:input type="date" path="issueDate" /></td>
					</tr>

					<tr id="i">
						<td id="label"> Date of Expiry</td>
						<td><form:input type="date" path="expiryDate" /></td>
				    </tr>
					
					<tr id="i">
						
						<td id="label"> <span id="a">Country Of issue</span></td>
						<td><form:input type="text" path="issueCountry" pattern="[a-zA-Z]"/></td>
					</tr>
				
				<tr id="i">
				
					<td colspan=2>
						<center>
						<br/><br/>
						<input id="btn" type="submit" class="btn btn-danger" value="Save and Temporary Exit"/>
						<input id="btn" type="submit" class="btn btn-success" value="Save and Continue"/>
					</center>
					</td>
					
					<td></td>
				</tr>
           </tbody>         
       </table>            
  </div>
</div>
 </form:form>
</body>
</html>