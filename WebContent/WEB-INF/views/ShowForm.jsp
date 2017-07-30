
<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<title>Show Form</title>
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
  
}
#i
{
text-align:left;

}
</style>	
<body>
<!-- header -->
	
	<div>
		<img class="banner" alt="Indian Visa Online"
			src="images/banner1.jpg">
	</div>

<form:form action="home" id="f">
<br/>
 <div id="heading">Application Id : ${showForm.id}</div>
 <br/>	
<div>
<%-- ${showForm} --%>
</div>
<table>
	<tbody>
		<tr><td  colspan="2"><h4 id="title" style="text-decoration: darkorchid;text-align:left">Personal Details</h4></td></tr>
		<tr>
			<td>First Name : </td>
			<td>${showForm.personal.givenname}</td>
		</tr>
		<tr>
			<td>Last Name : </td>
			<td>${showForm.personal.surname}</td>
		</tr>
		<tr>
			<td>Gender : </td>
			<td>${showForm.personal.sex}</td>
		</tr>
		<tr>
			<td>Marital Status : </td>
			<td>${showForm.personal.maritalStatus}</td>
		</tr>
		<tr>
			<td>Birth Date : </td>
			<td>${showForm.personal.birth}</td>
		</tr>
		<tr>
			<td>Birth Place : </td>
			<td>${showForm.personal.birthPlace}</td>
		</tr>
		<tr>
			<td>Birth Country : </td>
			<td>${showForm.personal.birthCountry}</td>
		</tr>
		<tr>
			<td>Religion : </td>
			<td>${showForm.personal.religion}</td>
		</tr>
		<tr>
			<td>Education : </td>
			<td>${showForm.personal.education}</td>
		</tr>
		<tr>
			<td>Visible Marks : </td>
			<td>${showForm.personal.visibleMarks}</td>
		</tr>
		<tr>
			<td>Nationality : </td>
			<td>${showForm.personal.nationality}</td>
		</tr>
		<tr>
			<td>Resident In from Country : </td>
			<td>${showForm.personal.residentInFromCountry}</td>
		</tr>
		
 		<tr><td  colspan="2"><h4 id="title" style="text-decoration: darkorchid;text-align:left">Passport Details</h4></td></tr>	
		<tr>
			<td>Passport No.: </td>
			<td>${showForm.passport.passportNo}</td>
		</tr>
		<tr>
			<td>Passport Issue Place : </td>
			<td>${showForm.passport.issuePlace}</td>
		</tr>
		<tr>
			<td>Passport Issue Date : </td>
			<td>${showForm.passport.issueDate}</td>
		</tr>
		<tr>
			<td>Passport Expity Date : </td>
			<td>${showForm.passport.expiryDate}</td>
		</tr>
		<tr>
			<td>Passport Country : </td>
			<td>${showForm.passport.passportCountry}</td>
		</tr>
		<tr><td  colspan="2"><h4 id="title" style="text-decoration: darkorchid;text-align:left">Contact Details</h4></td></tr>
		<tr>
			<td>Present Address : </td>
			<td>${showForm.contact.presentAddr}</td>
		</tr>
		<tr>
			<td>Permanent Address : </td>
			<td>${showForm.contact.permanentAddr}</td>
		</tr>
		<tr>
			<td>Phone : </td>
			<td>${showForm.contact.mobile}</td>
		</tr>
		<tr>
			<td>Mobile : </td>
			<td>${showForm.contact.mobile}</td>
		</tr>
		<tr>
			<td>Email : </td>
			<td>${showForm.contact.email}</td>
		</tr>
		<tr><td  colspan="2"><h4 id="title" style="text-decoration: darkorchid;text-align:left">Family Details</h4></td></tr>
		<c:forEach var="family" items="${showForm.familyMembers}">
		<tr><td  colspan="2"><h5 id="title" style="text-decoration: darkorchid;text-align:left">${family.relation} Details : </h5></td></tr>
		<tr>
			<td>Relation : </td>
			<td>${family.relation}</td>
		</tr>			
		<tr>
			<td>Name : </td>
			<td>${family.name}</td>
		</tr>			
		<tr>
			<td>Nationality : </td>
			<td>${family.nationality}</td>
		</tr>			
		<tr>
			<td>Previous Nationality : </td>
			<td>${family.prevNationality}</td>
		</tr>			
		<tr>
			<td>Birth City : </td>
			<td>${family.birthCity}</td>
		</tr>			
		<tr>
			<td>Birth Country : </td>
			<td>${family.birthCountry}</td>
		</tr>					
 	</c:forEach>
	</tbody>
</table>
<center>
	<input type="submit" class="btn btn-success" value="print" style="width: 80px;"></input>
</center>
 </form:form>
</body>
</html>
