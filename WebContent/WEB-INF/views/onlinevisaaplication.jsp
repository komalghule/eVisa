<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
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
						$("#drpCountry").append($("<option></option>").val(index).html(item.country));
						$("#drpNationality").append($("<option></option>").val(index).html(item.country));
					});
					$("#drpCountry").change();
    			}
    		);
			
    		$("#drpCountry").change(function() {
				console.log("selected country : " + this.value);
				$("#drpNationality").val(this.value);
				$("#drpCenter").empty();
				$.each(countries[this.value].centers, function(index,item) {
					$("#drpCenter").append($("<option></option>").val(index).html(item.city));
				});    			
    		});


			$.getJSON(	
					'visas', 
					{ ajax : 'true' }, 
					function(data) {
						visas = data;	
						$.each(data, function(index,item) {
							$("#drpVisaType").append($("<option></option>").val(index).html(item.category));
						});
						$("#drpVisaType").change();
	    			});

			$('#drpVisaType').change(function() {
				console.log("selected visas : " + this.value);
				$("#drpPurpose").empty();
				$.each(visas[this.value].purposes, function(index,item) {
					$("#drpPurpose").append($("<option></option>").val(index).html(item));
				});    			
    		});
			
	

     	});

    </script>
</head>
<body>
	<form action="appForm" method="post">
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
					<label>Country you are applying visa from :</label> <select
						id="drpCountry" class="form-control">
					</select>
				</div>
				<br>
				<div>
					<label>Indian Mission :</label> <select id="drpCenter"
						class="form-control">
					</select>
				</div>
				<br>
				<div>
					<label id="data">Nationality :</label> <select id="drpNationality"
						class="form-control">
					</select>
				</div>
				<br>
				<div>
					<label> Date of Birth:</label> <input type="date" name="date"
						required />
				</div>
				<br>

				<div>
					<label>Email ID :</label> <input type="email" name="email"
						required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" />
				</div>
				<br>


				<div>
					<label> Expected Date of Arrival:</label> <input type="date"
						name="date" required="" />

				</div>
				<br>

				<div>
					<label id="data">Visa Type:</label> <select id="drpVisaType"
						class="form-control">
					</select>
				</div>

				<div>
					<label id="data">Purpose:</label> <select id="drpPurpose"
						class="form-control">
						<option>Short Term Course</option>
						<option>School Education in India</option>
						<option>Provisional Student Visa</option>
						<option>Studing Regular Courses in Universities Imparting
							Higher Education</option>
					</select>
				</div>
				<br>
				<center>
					<input type="submit" class="btn-danger" value="Continue" />
				</center>
			</div>
		</div>

	</form>

</body>
</html>
