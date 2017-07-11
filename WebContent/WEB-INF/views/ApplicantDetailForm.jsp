<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Applicant Details Form</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<div>
	<img class="banner" alt="Indian Visa Online"
		src="bootstrap/images/banner1.jpg">
</div>


<style>
form {
	border: solid 2px crimson;
	width: 1000px;
	height: 200%;
	position: absolute;
	margin: auto;
	top: 200px;
	bottom: 0;
	left: 0;
	right: 0;
	padding: 30px;
}

body {
	background-color: moccasin;
}

div {
	width: 800px;
}
</style>
</head>

<body>

	<form:form action="visaSought" modelAttribute="command">
		<center><legend>Applicant Details Form</legend></center>
		<div>Please Note Down the Temporary Application Id:<form:input path="applicationFormId"/></div>	
		<table>
			<thead>
				<tr>
				         	<th></th>
				         	<th><th>	
			</tr>
			</thead>
		<legend><h4 style="text-decoration: darkorchid">Applicant Address Details</h4></legend>
			<tbody>
				<tr>
					<td><h5 style="color: crimson">Present Address:</h5></td>
				</tr>
				<tr>
					<td>House No./Street:</td>
					<td><form:input path="houseNo" type="text" pattern="[A-Za-z0-9]{10}"/></td>
				</tr>
				<tr>
					<td>Village/Town/City</td>
					<td><form:input path="city" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>State/District</td>
					<td><form:input path="state" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Country</td>
					<td><form:select path="country" >
							<option>India</option>
							<option>USA</option>
							<option>UK</option>
							<option>China</option>
							<option>Japan</option>
							<option>Bhutan</option>
					</form:select></td>
				</tr>
				<tr>
					<td>Pin Code :</td>
					<td><form:input path="pinCode" pattern="[0-9]{6}"/></td>
				</tr>
				<tr>
					<td>Mobile NO:</td>
					<td><form:input path="mobileNo" type="text" pattern="[0-9]{10}"/></td>
				</tr>
				<tr>
					<td>Email Address</td>
					<td><form:input path="email" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
				</tr>
				<tr>
					<td>Applicant Marital Status:</td>
					<td><form:select path="marriedStatus">
							<option>single</option>
							<option>Married</option>
					</form:select></td>
				</tr>
				<tr>
					<td>Click here For Same Address</td>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td><h5 style="color: crimson">Permament Address:<h5></td>
				</tr>
				<tr>
					<td>House No./Street:</td>
					<td><form:input path="pHouseNo" type="text" pattern="[A-Za-z0-9]{10}"/></td>
				</tr>
				<tr>
					<td>Village/Town/City</td>
					<td><form:input path="pCity" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>State/District</td>
					<td><form:input path="pState" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Country</td>
					<td><form:select path="pCountry" >
							<option>India</option>
							<option>USA</option>
							<option>UK</option>
							<option>China</option>
							<option>Japan</option>
							<option>Bhutan</option>
					</form:select></td>
				</tr>
				<tr>
					<td><legend><h4 style="text-decoration: darkorchid">Family Details</h4></legend></td>
				</tr>
				<tr>
					<td><h5 style="color: crimson">Fathers Details:</h5></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><form:input path="fatherName" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Nationality</td>
					<td><form:input path="fatherNationality" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Preivious Nationality</td>
					<td><form:input path="fatherPrevNationality" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Place of Birth</td>
					<td><form:input path="fatherBirthPlace" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Country of Birth</td>
					<td><form:input path="fatherBirthCountry" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td><h5 style="color: crimson">Mothers Details:<h5></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><form:input path="motherName" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Nationality</td>
					<td><form:input path="motherNationality" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Preivious Nationality</td>
					<td><form:input path="motherPrevNationality" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Place of Birth</td>
					<td><form:input path="motherBirthPlace" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Country of Birth</td>
					<td><form:input path="motherBirthCountry" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td><legend><h4 style="text-decoration: darkorchid">Profession/Occupation Details of Applicant</h4></legend></td>
				</tr>
				<tr>
					<td>Present Occupation:</td>
					<td><form:select path="occupation" >
							<option>student</option>
							<option>student</option>
							<option>student</option>
							<option>student</option>
							<option>student</option>
					</form:select></td>
				</tr>
				<tr>
					<td>Specify Below Occupation Details of:</td>
					<td><form:select path="gardian">
							<option>Father</option>
							<option>Mother</option>
					</form:select></td>
				</tr>
				<tr>
					<td>Employer Name/ Buisness:</td>
					<td><form:input path="business" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Designation</td>
					<td><form:input path="designation" type="text" pattern="[A-Za-z]{5,100}"/></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" type="text"	pattern="[A-Za-z0-9]{5,100}"/></td>
				</tr>
				<tr>
					<td>Mobile NO:</td>
					<td><form:input path="mobile" type="tel" pattern="[0-9]{10}"/></td>
				</tr>
				<tr>
					<td>Past Occupation if Any</td>
					<td><form:select path="prevOccupation" >
							<option>Business</option>
							<option>NA</option>
					</form:select></td>
				</tr>	
				<tr>
					<td>You are from Police Military </td>
					<td>
						<form:checkbox path="fromPoliceMilitary"/>
					</td>
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
