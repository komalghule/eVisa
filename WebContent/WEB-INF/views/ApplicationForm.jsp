<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->

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
<style>

.container
{
width:90%;
height:250%;
border:solid 2px;


}
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

#i
{
text-align:left;

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
    
     
}



#title
{

text-align:center;
background-color:pink;

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


#btn
{
width:26%;
height:40px;
}

#label
{
text-align:right;
padding-right:25px;
}

tbody
{
text-align: left;
}

.long
{
width:40%;
}	


</style>

</head>


<body>
	<div> 
			<img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg">
		</div>
		<div id="head">Applicant Details Form</div>
	
	<form:form action="applicantDetailForm" modelAttribute="command" id="f">
    
     
     <div class="container">
    	
	   
      
	<br/>
<div class="col-md-9">
<br/>
 <h5 id="appid">Application Id:</h5><br/>	


				
	
	<table id="tb">
	
	<tbody>
	
			
				
	<tr>
	<td colspan=2><h4 id="title" style="text-decoration: darkorchid;text-align:left">Applicant Details</h4></td>
	<td></td>
	</tr>			
					<tr class="rowalign">
						<td id="label">Surname(as per passport)</td>
						<td><form:input type="text" path="lastName" /></td>
					</tr>
					
					<tr>
						<td id="label">Given Name(as per passport)</td>
						<td><form:input type="text" path="firstName"/></td>
					</tr>
					
					<tr>
						<td id="label">Previous Name </td>
						<td><form:input type="text" path="prevName" /></td>
					</tr>
				<tr>
					<td id="label">Date of birth </td>
						<td><form:input  id="datepicker1" name="Text" type="text" path="birthDate" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"/></td>
				</tr>
					
					<tr>
						<td id="label">Town/City of birth</td>
						<td><form:input id="data" type="text" name="city" placeholder="Your Birth city" path="birthCity"/></td>
					</tr>
                    	
					<tr>
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

				   <tr>
						<td id="label">Select Gender</td>
                       
							<td><form:select path="gender" class="form-control">
								<option>Female</option>
								<option>Male</option>
								
							</form:select></td>
					
					</tr>
						
                    	<tr>
						<td id="label">Citizenship/National Id No</td>
						<td><form:input type="text" path="nationalId" placeholder="Citizenship" /></td>
					</tr>
                    <tr>
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
					<tr>
						<td id="label">Visible Identification Mark</td>
						<td><form:input type="text" path="visibleIdMark" placeholder="Identification" /></td>
					</tr>
					<tr>
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
					
					 <tr>
                               
                              
                          <td id="label"> Have you lived for at least two year in the country where you are applying.</td>
                          <td><form:checkbox path="twoYearsMoreLiveForFromCountry"  name="question" value="question"/></td>     	
                             
                      </tr>
				   
                      <tr id="t">
 <td  colspan=2><h4 id="title" style="text-decoration: darkorchid;text-align:left">Passport Details</h4></td>	     
                   <td></td>
                        </tr>
                        <tr>
						<td id="label"> Passport No.(as shown in your passport)</td>
					<td><form:input type="text" path="passportNo"  pattern="[A-PR-W-Y]{1}[1-9]{1}[0-9]{5}[1-9]{1}" /></td>
					     </tr>
					<tr>
						<td id="label">place of issue</td>
						<td><form:input type="text" path="issueCity"  pattern="[a-zA-Z0-9]{5,100}"/></td>
					</tr>
					<tr>
						<td id="label"> Date of Issue</td>
						<td><form:input type="date" path="issueDate" /></td>
					</tr>

					<tr>
						<td id="label"> Date of Expiry</td>
						<td><form:input type="date" path="expiryDate" /></td>
				    </tr>
					
					<tr>
						
						<td id="label"> <span id="a">Country Of issue</span></td>
						<td><form:input type="text" path="issueCountry" pattern="[a-zA-Z]{5,100}"/></td>
					</tr>
				</tbody>
			</table>

<br/>	
  <center>
	  <input id="btn" type="submit" class="btn btn-default" value="Save and Temporary Exit" formaction="home.html"/>
	   <input id="btn" type="submit" class="btn btn-default" value="Save and Continue"/>
</center>

</div>	
</div>					
</form:form>
</body>
</html>
