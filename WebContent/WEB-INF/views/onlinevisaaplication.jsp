<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Visa Application Form</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/csspages/a.css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css" />
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>

<script>
    	var countries = null;
    	var visas = null;
    	$(document).ready( function() {
    		console.log("page ready");

			$.getJSON(	
				'countries', 
				{ ajax : 'true' }, 
				function(data) {
					countries = data;
					$.each(data, function(index,item) {
						$("#drpCountry").append($("<option></option>").val(item.country).html(item.country));
						$("#drpNationality").append($("<option></option>").val(item.country).html(item.country));
					});
					$("#drpCountry").change();
    			}
    		);
			
    		$("#drpCountry").change(function() {
				console.log("selected country : " + this.value);
				$("#drpNationality").val(this.value);
				$("#drpCenter").empty();
				var country = null;
				for(var i=0; i<countries.length; i++) {
					if(countries[i].country==this.value) {
						country = countries[i];
						break;
					}
				}
				$.each(country.centers, function(index,item) {
					$("#drpCenter").append($("<option></option>").val(item.city).html(item.city));
				});    			
    		});


			$.getJSON(	
					'visas', 
					{ ajax : 'true' }, 
					function(data) {
						visas = data;	
						$.each(data, function(index,item) {
							$("#drpVisaType").append($("<option></option>").val(item.category).html(item.category));
						});
						$("#drpVisaType").change();
	    			});

			$('#drpVisaType').change(function() {
				console.log("selected visas : " + this.value);
				$("#drpPurpose").empty();
				var visa = null;
				for(var i=0; i<visas.length; i++) {
					if(visas[i].category==this.value) {
						visa = visas[i];
						break;
					}
				}
				$.each(visa.purposes, function(index,item) {
					$("#drpPurpose").append($("<option></option>").val(item).html(item));
				});    			
    		});
     	});

    </script>
</head>
<body>
	<form:form action="appForm"  modelAttribute="command">
		<div>
			<img class="banner" alt="Indian Visa Online"
				src="bootstrap/images/banner1.jpg">
		</div>
		<div class="container">
			<div
				style="background-color: palevioletred; text-align: center; font-size: 20px">Online
				Visa Application</div>
			<div id="inner">

				<div>
					<label>Country you are applying visa from :</label> 
					<form:select path="country" id="drpCountry" class="form-control"/>
				</div>
				<br>
				<div>
					<label>Indian Mission :</label> <form:select id="drpCenter" path="center"
						class="form-control"/>
				</div>
				<br>
				<div>
					<label id="data">Nationality :</label> <form:select id="drpNationality" path="natinality"
						class="form-control"/>
				</div>
				<br>
				<div>
					<label> Date of Birth:</label> <form:input type="date" path="birthDate" />
				</div>
				<br>

				<div>
					<label>Email ID :</label> <form:input type="email" path="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" />
				</div>
				<br>


				<div>
					<label> Expected Date of Arrival:</label> 
					<form:input type="date" path="arrivalDate" />

				</div>
				<br>

				<div>
					<label id="data">Visa Type:</label> 
					<form:select path="visaType" id="drpVisaType" class="form-control"/>
					
				</div>

				<div>
					<label id="data">Purpose:</label> 
					<form:select path="purpose" id="drpPurpose" class="form-control"/>
				
				</div>
				<br>
				<center>
					<input type="submit" class="btn-danger" value="Continue"  />
				</center>
			</div>
		</div>

	</form:form>

</body>
</html>
