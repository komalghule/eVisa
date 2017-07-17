
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

<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>


<script>
    	var countries = null;
    	var visas = null;
    	
    	$(document).ready( function() {

			hide();
            
            $('#next').click( function(){
          });
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
		function emailValidation(email){
			//var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/);
    		//var pattern = new RegExp("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
    		var pattern = new RegExp(/^([\w\.\-])@([\w\-]+)((\.(\w){2,3})+)$/i);
    		return pattern.test(email);
		}		

        function validateForm() {
            hide();
            var email = $('#email').val();
            var birthDate = $('#birthDate').val();
            var arrivalDate = $('#arrivalDate').val();
            

			var emailFormat = /^[a-z0-9\.\_\%\+\-]+\@[a-z0-9\.\-]+\.[a-z]{2,3}$/;
			//var emailFormat = /^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/;
            
            var dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;

            var Val_email = $('#email').val();
            var Val_date=$('#birthDate').val();
            var Arrival_Val_date=$('#arrivalDate').val();


            if(Val_date.match(dateformat)){
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
            	if(!emailValidation(Val_email))
		        {
            		alert("invalid email");
					$('#error-birth-date').hide();
	            	$('#error-email').show();
	            	return false;
            	}
            }else
           	{
        		alert("invalid email");
				$('#error-birth-date').hide();
            	$('#error-email').show();
            	return false;                
        	}
			
/*			if(!emailValidation(Val_email)){
				
				$('#error-birth-date').hide();
            	$('#error-email').show();
            	return false;	
			}
			
           if(!Val_email.match(emailFormat) || Val_email == 0){
            	$('#error-birth-date').hide();
            	$('#error-email').show();
            	return false;
            }               
 */            

            if(Arrival_Val_date.match(dateformat)){
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
<form:form action="appForm"  modelAttribute="command">
		
		<div id="head">Online Visa Application</div>
	 
	<div class="container" id="main">
	<br/>
	<div class="col-md-10">
         <table id=tb>
             <tbody>
                  
                
				<tr id="i">
					<td id="label">Country you are applying visa from</td>
				<td><form:select path="country" id="drpCountry" class="form-control"/></td>
				</tr>
				
				<tr id="i">
					<td id="label">Indian Mission </td>
				   <td><form:select id="drpCenter" path="center" class="form-control"/></td>
				</tr>
				
			<tr id="i">
					<td id="label">Nationality </td>
					<td><form:select id="drpNationality" path="natinality"	class="form-control"/></td>
		        </tr>		
				
				<tr id="i">
					<td id="label"> Date of Birth</td> 
					<td><form:input type="date" path="birthDate" /></td>
				</tr>
				

				<tr id="i">
					<td id="label">Email ID </td> 
					<td><form:input type="email" path="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" /></td>
				</tr>
				


				<tr id="i">
					<td id="label"> Expected Date of Arrival</td> 
					<td><form:input type="date" path="arrivalDate" /></td>

				</tr>
				

				<tr id="i">
					<td id="label">Visa Type</td> 
					<td><form:select path="visaType" id="drpVisaType" class="form-control"/></td>
					
				</tr>

				<tr id="i">
					<td id="label">Purpose</td> 
					<td><form:select path="purpose" id="drpPurpose" class="form-control"/></td>
				
				</tr>
				
			<tr>
				<td colspan=2><center><input id="btn" type="submit" class="btn-danger" value="Continue"  /></center></td>
			<td></td>
			</tr>               
           </tbody>         
       </table>            
  </div>
</div>
<br/>
<center></center>
 </form:form>
</body>
</html>
