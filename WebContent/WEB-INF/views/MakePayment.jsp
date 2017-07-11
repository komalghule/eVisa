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
<div>
	<img class="banner" alt="Indian Visa Online"
		src="bootstrap/images/banner1.jpg">
</div>


<style>
form {
	border: solid 2px crimson;
	width: 1000px;
	height: 65%;
	position: absolute;
	margin: auto;
	top: 200px;
	bottom: 0;
	left: 0;
	right: 0;
	padding: 30px;
	text-align: center;
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
<!--
 	private String transactionId;
	private double amount;
	private Date paymentDate;
	private String paymentMode;
 -->
	<form:form action="confirmDetails" modelAttribute="command">
		<legend><h4 align="center">Make Payment</h4></legend>
		<div>Please Note Down the Temporary Application Id:<form:input path="applicationFormId"/></div>
		<table>
			<tbody>
				<tr style="column-span: 10px">
					<td>Transaction Id : </td>
					<td><form:input type="text" placeholder="Enter amount here..." path="transactionId"/></td>
				</tr>				
				<tr style="column-span: 10px">
					<td>Enter Amount : </td>
					<td><form:input type="text" placeholder="Enter amount here..." path="amount"/></td>
				</tr>
				<tr>
					<td>Enter Date : </td>
					<td><form:input  type="date" placeholder="Enter date..." path="date"/></td>
				</tr>
				<tr>
					<td>Payment Mode: </td>
					<td><form:select path="paymentMode" >
						<option>CreditOrDebit</option>
						<option>NetBanking</option>
					</form:select></td>
				</tr>
			</tbody>
		</table><br/><br/><br/>
		<center>
			<input type="submit" formaction="home" value="Exit"/>
			<input type="submit" value="Pay and Continue"/>
		</center>
	</form:form>
</body>
</html>
