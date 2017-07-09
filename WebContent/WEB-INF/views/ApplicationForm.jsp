<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
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
	
	<form action="applicantDetailForm" method="POST" role="form">
   <center> <legend >Applicant Details Form</legend></center>
<div>
						<div>
							Please Note Down the Temporary Application Id:
						</div><br/>
						<legend><h4 style="text-decoration:darkorchid ">Applicant Details</h4></legend>
				
					<div>
						<label>Surname(as per passport):</label><br/>
						<input type="text" name="place"required=""/>
					</div>
					
					<div>
						<label>Given Name(as per passport):</label><br/>
						<input type="text" name="place" required=""/>
					</div><br/>
					
					<div class="form-date-w3-agileits">
						<label><i class="fa fa-calendar" aria-hidden="true"></i> Date of birth :</label><br/>
						<input  id="datepicker1" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
					</div><br/>
					<div><br>
						<label class="lb">Town/City of birth :</label><br/>
						<input id="data" type="text" name="city" placeholder="Your Birth city" required=""/>
					</div><br/>
                    	
					<div>
						<label id="data">Country of birth :</label>
                       
							<select class="form-control">
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
							</select>
					</div><br>

				<div>
						<label id="data">Select Gender:</label>
                       
							<select class="form-control">
								<option>Female</option>
								<option>Male</option>
								
							</select>
					</div><br>

						
                        <div class="checkbox">
                            <label id="data">
                                <input type="checkbox" value="">
                           Have you ever changed your name?if yes,click the box and give details
                            </label>
                        </div><br/>
                    	<div>
						<label id="data">Citizenship/National Id No:</label><br/>
						<input type="text" name="Citizenship" placeholder="Citizenship" required=""/>
					</div><br/>
                    <div>
							<label id="data">religion:</label>
							<select class="form-control" style="display:inline-block">
								<option>Hindu</option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
							</select>
					</div><br>
					<div>
						<label id="data">Visible Identification Mark:</label><br/>
						<input type="text" name="Identification" placeholder="Identification" required=""/>
					</div><br/>
					<div>
							<label id="data">Educational Qualification :</label>
							<select class="form-control">
								<option>Qualification</option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
							</select>
					</div><br><br>
					 <div class="radio">
                               
                              <label>
                                  Have you lived for at least two year in the country where you are applying: <input type="radio" name="question" value="question"> Yes
                               <input type="radio" name="question" value="question" >no
                              </label> 
                          </div>
				<legend >Passport Details</legend>
                        <div>
						<label> Passport No.(as shown in your passport) :</label>
						<input type="text" name="no" required="" pattern="[A-PR-W-Y]{1}[1-9]{1}[0-9]{5}[1-9]{1}" />
					</div><br/>
					<div>
						<label>place of issue:</label>
						<input type="text" name="place" required="" pattern="[a-zA-Z0-9]{5,100}"/>
					</div><br/>
					<div>
						<label> Date of Issue:</label>
						<input type="date" name="issuedate"  required=""/>
					</div><br/>

						<div>
						<label> Date of Expiry:</label>
						<input type="date" name="expdate"  required=""/>
				    	</div><br/>
					<div>
						
						<label> Country Of issue:</label>
						<input type="text" name="issuedate"  required="" pattern="[a-zA-Z]{5,100}"/>
					</div><br/>
				
					<center>
						<input type="submit" class="btn btn-default" value="Save and Temporary Exit" formaction="home.html"/>
						<input type="submit" class="btn btn-default" value="Save and Continue"/>
					</center>
						
					
</form>

</body>
</html>
