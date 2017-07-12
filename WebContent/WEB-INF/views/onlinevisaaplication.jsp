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
<script src="bootstrap/js/1.12.4/jquery.min.js"></script>

<script>
    	var countries = null;
    	var visas = null;
    	
    	$(document).ready( function() {

			hide();
            
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

		function hide(){
            $('#error-birth-date').hide();
            $('#error-email').hide();
            $('#error-arrival-date').hide();
		}

		function ValidateEmail(email) {
			var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		    return expr.test(email);
		};
		  
        function validateForm() {
            hide();

			//var emailFormat = /^[a-z0-9\.\_\%\+\-]+\@[a-z0-9\.\-]+\.[a-z]{2,3}$/;
			//var emailFormat = /^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/;
            
            var dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;

            var Val_email = $('#email').val();
            var Val_date=$('#birthDate').val();
            var Arrival_Val_date=$('#arrivalDate').val();

            if(Val_date.match(dateformat))
            {
            	hide();
               	var seperator1 = Val_date.split('/');

               	if (seperator1.length>1)
               	{
               		var splitdate = Val_date.split('/');
               	}
               	
               	var dd = parseInt(splitdate[0]);
               	var mm  = parseInt(splitdate[1]);
               	var yy = parseInt(splitdate[2]);
               
               	var ListofDays = [31,28,31,30,31,30,31,31,30,31,30,31];

               	if (mm==1 || mm>2)
               	{
                	if (dd > ListofDays[mm-1])
                   { 
                       	$('#error-birth-date').show();  
                       	$('#error-arrival-date').hide();      
                       	return false;
                   	}
               	}
               	if (mm==2)
               	{
                	var lyear = false;
                   	if ( (!(yy % 4) && yy % 100) || !(yy % 400))
                   	{
                   		lyear = true;
                   	}
                   	if ((lyear==false) && (dd>=29))                	   
                   	{ 
                    	$('#error-birth-date').show();
                       	$('#error-arrival-date').hide();
                       	return false;
                   	}
                   	if ((lyear==true) && (dd>29))
                   	{ 
                    	$('#error-birth-date').show();
                       	$('#error-arrival-date').hide();
                       	return false;
                   	}
               	}
           	}
           	else
           	{ 
            	$('#error-birth-date').show();           
               	return false;
           	}

			/* ====Email Validation===*/
			

  			if(Val_email != 0)
			{
				if (!ValidateEmail($("#email").val()))
				{
	            	alert("Invalid email address.");
					$('#error-birth-date').hide();
	    			$('#error-email').show();
	    			return false;
	       		}
	        	else 
		    	{
	            	alert("Valid email address.");
	        	}
    		}
    		else
   			{
				alert("invalid email");
				$('#error-birth-date').hide();
    			$('#error-email').show();
    			return false;                
			}

 			if(Arrival_Val_date.match(dateformat))
 	 		{
            	hide();
                var seperator2 = Arrival_Val_date.split('/');
                if (seperator2.length>1)
                {
                    var splitdate2 = Arrival_Val_date.split('/');
                }
                var add = parseInt(splitdate2[0]);
                var amm  = parseInt(splitdate2[1]);
                var ayy = parseInt(splitdate2[2]);

                var ListofDays = [31,28,31,30,31,30,31,31,30,31,30,31];

                if (amm==1 || amm>2)
                {
                    if(add > ListofDays[amm-1])
                    {
                 	   $('#error-arrival-date').show();
                 	   $('#error-birth-date').hide();        
                        return false;
                    }
                }
                if (amm==2)
                {
                    if ( (!(ayy % 4) && ayy % 100) || !(ayy % 400))
                    {
                        lyear = true;
                    }
                    if ((lyear==false) && (add>=29))                	   
                    { 
                        $('#error-arrival-date').show();
                        $('#error-birth-date').hide();
                        return false;
                    }
                    if ((lyear==true) && (add>29))
                    { 
                        $('#error-arrival-date').show();
                        $('#error-birth-date').hide();
                        return false;
                    }            
                }
            }
            else
            { 
            	$('#error-birth-date').hide();
         	   	$('#error-arrival-date').show();
                return false;
            }
        }
    </script>
</head>
<body>
	<form:form action="appForm"  modelAttribute="command" onsubmit="return validateForm();">
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
					<label> Date of Birth:</label> <form:input type="date" path="birthDate" id="birthDate"/>
					<span id="error-birth-date" class="error">please enter valid user birth date</span>
				</div>
				<br>

				<div>
					<label>Email ID :</label> <form:input type="email" path="email" id="email"  />
					<span id="error-email" class="error">please enter valid email</span>
				</div>
				<br>


				<div>
					<label> Expected Date of Arrival:</label> 
					<form:input type="date" path="arrivalDate" id="arrivalDate"/>
					<span id="error-arrival-date" class="error">please enter valid arrival date</span>
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
					<input id="next" type="submit" class="btn-danger" value="Continue"  />
				</center>
			</div>
		</div>

	</form:form>

</body>
</html>
