<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Application Form</title>
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
height:220%;
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
	
	<form:form action="applicantDetailForm" modelAttribute="command" >
   <center> <legend >Applicant Details Form</legend></center>
<div>
						<div>
						
						Application Id: <form:input type="text" readonly="true" path="applicationFormId" />
						</div><br/>
						<legend><h4 style="text-decoration:darkorchid ">Applicant Details</h4></legend>
				
					<div>
						<label>Surname(as per passport):</label><br/>
						<form:input type="text" path="lastName" />
					</div>
					<div>
						<label>Given Name(as per passport):</label><br/>
						<form:input type="text" path="firstName"/>
					</div><br/>
					<div>
						<label>Previous Name :</label><br/>
						<form:input type="text" path="prevName" />
					</div>					
					<div class="form-date-w3-agileits">
						<label><i class="fa fa-calendar" aria-hidden="true"></i> Date of birth :</label><br/>
						<form:input  id="datepicker1" name="Text" type="text" path="birthDate" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"/>
					</div><br/>
					<div><br>
						<label class="lb">Town/City of birth :</label><br/>
						<form:input id="data" type="text" name="city" placeholder="Your Birth city" path="birthCity"/>
					</div><br/>
                    	
					<div>
						<label id="data">Country of birth :</label>
                       
							<form:select path="birthCountry" class="form-control">
								<option>South Africa</option>
								<option>Switzerland</option>
								<option>Australia</option>
								<option>United Kingdom</option>
								<option>India</option>
								<option>Sri Lanka</option>
								<option>South Korea</option>
							</form:select>
					</div><br>

				<div>
						<label id="data">Select Gender:</label>
                       
							<form:select path="gender" class="form-control">
								<option>Female</option>
								<option>Male</option>
								
							</form:select>
					</div><br>

						
                    	<div>
						<label id="data">Citizenship/National Id No:</label><br/>
						<form:input type="text" path="nationalId" placeholder="Citizenship" />
					</div><br/>
                    <div>
							<label id="data">religion:</label>
							<form:select class="form-control" path="religion" style="display:inline-block">
								<option>Hindu</option>
								<option>Christianity</option>
								<option>Buddhism</option>
								<option>Islam</option>
								<option>Others</option>
							</form:select>
					</div><br>
					<div>
						<label id="data">Visible Identification Mark:</label><br/>
						<form:input type="text" path="visibleIdMark" placeholder="Identification" />
					</div><br/>
					<div>
							<label id="data">Educational Qualification :</label>
							<form:select path="qualification" class="form-control">
								<option>Primary</option>
								<option>Secondary</option>
								<option>Higher Secondary</option>
								<option>Graduation</option>
								<option>Post Graduation</option>
								<option>PH.D</option>
								<option>Other</option>
							</form:select>
					</div><br><br>
					 <div class="radio">
                               
                              <label>
                                  <form:checkbox path="twoYearsMoreLiveForFromCountry"  name="question" value="question"/>
                                  Have you lived for at least two year in the country where you are applying.
                               	
                              </label> 
                          </div>
				<legend >Passport Details</legend>
                        <div>
						<label> Passport No.(as shown in your passport) :</label>
						<form:input type="text" path="passportNo"  pattern="[A-PR-W-Y]{1}[1-9]{1}[0-9]{5}[1-9]{1}" />
					</div><br/>
					<div>
						<label>place of issue:</label>
						<form:input type="text" path="issueCity"  pattern="[a-zA-Z0-9]{5,100}"/>
					</div><br/>
					<div>
						<label> Date of Issue:</label>
						<form:input type="date" path="issueDate" />
					</div><br/>

						<div>
						<label> Date of Expiry:</label>
						<form:input type="date" path="expiryDate" />
				    	</div><br/>
					<div>
						
						<label> Country Of issue:</label>
						<form:input type="text" path="issueCountry" pattern="[a-zA-Z]{5,100}"/>
					</div><br/>
				
					<center>
						<input type="submit" class="btn btn-default" value="Save and Temporary Exit" formaction="home.html"/>
						<input type="submit" class="btn btn-default" value="Save and Continue"/>
					</center>
						
					
</form:form>

</body>
</html>
