<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Make Payment</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>

 <style>
 #tempid
{
padding-left:10%;
}
 
form
{
  
border: solid 2px crimson;
width: 1000px;
height:65%;
position: absolute;
margin: auto;
top: 200px;
bottom:0;
left: 0;
right: 0;
margin-top:5%;

}
body
{
    background-color: moccasin;
}
div
{
	width: 800px;
}
#head
{

height:40px;
width:187%;
padding-top:5px;

	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
 text-align:center;
 font-size:20px;
	possition:relative;
	background-color:pink;
padding-right:15%;
}

input
{
width:40%;
padding-right:20%;
}


#tempid
{
padding-left:10%;
margin-bottom:5%;
margin-top:5%;
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
   padding-left:30%;
   
}
#label
{
text-align:right;
padding-right:9%;
}

input#btn
{
width:9%;
}
</style>

</head>
<body>
 <div> <div> 
     <img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg">
</div>
	<div id="head"></legend><h4 >Make Payment</h4></div>
	<form:form action="confirmDetails" modelAttribute="command">
	
		<div id="tempid">Please Note Down the Temporary Application Id:<form:input path="applicationFormId"/></div>
		<table id="tb">
			<tbody>
				<tr style="column-span: 10px">
					<td id="label">Transaction Id : </td>
					<td><form:input type="text" placeholder="Enter amount here..." path="transactionId"/></td>
				</tr>				
				<tr style="column-span: 10px">
					<td id="label">Enter Amount : </td>
					<td><form:input type="text" placeholder="Enter amount here..." path="amount"/></td>
				</tr>
				<tr>
					<td id="label">Enter Date : </td>
					<td><form:input  type="date" placeholder="Enter date..." path="date"/></td>
				</tr>
				<tr>
					<td id="label">Payment Mode: </td>
					<td><form:select path="paymentMode" >
						<option>CreditOrDebit</option>
						<option>NetBanking</option>
					</form:select></td>
				</tr>
			</tbody>
		</table><br/><br/><br/>
		<center>
			<input type="submit" formaction="home" value="Exit"id="btn"/>
			<input type="submit" value="Pay and Continue" id="btn"/>
		</center>
	</form:form>
</body>
</html>
