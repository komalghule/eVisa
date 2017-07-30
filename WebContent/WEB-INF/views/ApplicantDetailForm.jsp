<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<title>Applicant Details Form</title>
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
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
 --><!-- start-smoth-scrolling -->

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

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
#btn
{
heigth:40px;
width:20%;
margin-bottom:20px;
}

form select
{
width:100%;
}

input
{
width:100%;
padding-left:20px;
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
	background-color:#fe9126;
	
	 

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
#i
{
text-align:left;

}
.container
{
margin-top:10px;
width:70%;
height:1060%;
border:solid 2px;
margin-bottom:20px;

}
#tempid{
width:35%;
}
#title{
text-align:left;
margin-bottom:12px;
margin-top:5px;
width: 100%;
color: crimson;
}
#btn
{
heigth:40px;
width:44%;

}
</style>
	
</head>

<body>
<div> 
			<img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg">
		</div>
		<div id="head">Applicant Details Form</div>
	<form:form action="visaSought" modelAttribute="command">
	
		<div class="container">
		<br/>
		<div class="col-md-11">
		<h5>Please Note Down the Temporary Application Id : ${visaApplication.id}</h5><br/><hr>
		<table  id=tb>
			<tbody>
				
			<tr>
				
				<td colspan=2>
	<legend><h4 id="title">Applicant Address Details</h4></legend></td>
				<td></td>
				</tr>
				
				<tr>
					<td colspan=2><h5 style="color:blue;">Present Address</h5></td>
					<td></td>
				</tr>
				<tr>
					<td id="label">House No./Street</td>
					<td><form:input path="houseNo" type="text" pattern="[A-Za-z0-9 ]"/></td>
				</tr>
				<tr>
					<td id="label">Village/Town/City</td>
					<td><form:input path="city" type="text" pattern="[A-Za-z ]"/></td>
				</tr>
				<tr>
					<td id="label">State/District</td>
					<td><form:input path="state" pattern="[A-Za-z ]"/></td>
				</tr>
				<tr>
					<td id="label">Country</td>
					<td><form:select path="country">
							<option>India</option>
							<option>USA</option>
							<option>UK</option>
							<option>China</option>
							<option>Japan</option>
							<option>Bhutan</option>
					</form:select></td>
				</tr>
				<tr>
					<td id="label">Mobile NO</td>
					<td><form:input path="mobileNo" type="text" pattern="[0-9]{10}"/></td>
				</tr>
				<tr>
					<td id="label">Email Address</td>
					<td><form:input path="email" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
				</tr>
				<tr>
					<td id="label">Applicant Marital Status</td>
					<td><form:select path="marriedStatus">
							<option>single</option>
							<option>Married</option>
					</form:select></td>
				</tr>
				<tr>
					<td id="label">Click here For Same Address</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
				<td colspan=2><h5 id="pra" style="color:blue">Permament Address</h5></td>
				<td></td>
					
				</tr>
				<tr>
					<td id="label">House No./Street</td>
					<td><form:input path="pHouseNo" type="text" pattern="[A-Za-z0-9 ]"/></td>
				</tr>
				<tr>
					<td id="label">Village/Town/City</td>
					<td><form:input path="pCity" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">State/District</td>
					<td><form:input path="pState" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Country</td>
					<td><form:select path="pCountry">
							<option>India</option>
							<option>USA</option>
							<option>UK</option>
							<option>China</option>
							<option>Japan</option>
							<option>Bhutan</option>
					</form:select></td>
				</tr>
				<tr>
				<td colspan=2><legend><h4 id="title" style="text-decoration: darkorchid;text-align:left;color:crimson">Family Details</h4></legend></td></td>
				
				<td> </td>
					
				</tr>
				<tr>
					<td id="label"><h5 style="color:blue">Fathers Details</h5></td>
				</tr>
				<tr>
					<td id="label">Name</td>
					<td><form:input path="fatherName" type="text" pattern="[A-Za-z ]"/></td>
				</tr>
				<tr>
					<td id="label">Nationality</td>
					<td><form:input path="fatherNationality" type="text" pattern="[A-Za-z ]"/></td>
				</tr>
				<tr>
					<td id="label">Preivious Nationality</td>
					<td><form:input path="fatherPrevNationality" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Place of Birth</td>
					<td><form:input path="fatherBirthPlace" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Country of Birth</td>
					<td><form:input path="fatherBirthCountry" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label"><h5  style="color:blue">Mothers Details<h5></td>
				</tr>
				<tr>
					<td id="label">Name</td>
					<td><form:input path="motherName" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Nationality</td>
					<td><form:input path="motherNationality" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Preivious Nationality</td>
					<td><form:input path="motherPrevNationality" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Place of Birth</td>
					<td><form:input path="motherBirthPlace" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Country of Birth</td>
					<td><form:input path="motherBirthCountry" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
				
				<td colspan=2>
				<legend><h4 id="title" style="text-decoration: darkorchid;text-align:left;color:crimson">Profession/Occupation Details</h4></legend></td>
				<td></td>
				</tr>
				
				<tr>
					<td id="label">Present Occupation</td>
					<td><form:select path="occupation">
							<option>student</option>
							<option>employee</option>
							<option>student</option>
							<option>student</option>
							<option>student</option>
					</form:select></td>
				</tr>
				<tr>
					<td id="label">Specify Below Occupation Details of</td>
					<td><form:select path="gardian" class="drpdown">
							<option>Father</option>
							<option>Mother</option>
					</form:select></td>
				</tr>
				<tr>
					<td id="label">Employer Name/ Buisness</td>
					<td><form:input path="business" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Designation</td>
					<td><form:input path="designation" type="text" pattern="[A-Za-z]"/></td>
				</tr>
				<tr>
					<td id="label">Address</td>
					<td><form:input path="address" type="text"	pattern="[A-Za-z0-9 ]"/></td>
				</tr>
				<tr>
					<td id="label">Mobile NO</td>
					<td><form:input path="mobile" type="tel" pattern="[0-9]{10}"/></td>
				</tr>
				<tr>
					<td id="label">Past Occupation if Any</td>
					<td><form:select path="prevOccupation">
							<option>Business</option>
							<option>NA</option>
					</form:select></td>
				</tr>	
				<tr>
					<td id="label">You are from Police Military </td>
					<td>
						<form:checkbox path="fromPoliceMilitary"/>
					</td>
				</tr>		
				<tr>
				
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