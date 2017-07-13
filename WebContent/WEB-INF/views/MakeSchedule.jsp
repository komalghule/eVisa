<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
    </head>
    <body>
    
        <nav class="navbar navbar-inverse ">
            <div class="container">
                <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Admin Panel</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="allApplicantDetails">All Request</a></li>
                    <li onclick = "logoutAdmin()"><a>Logout</a></li>
                </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div>Welcome Admin</div>
        <div class="container">
            <div id="contacts"></div>
        </div>
        
        <form:form action="makeSchedule" modelAttribute="makeScheduleModel" method="post" >
		<table>
			<tbody>		
				<tr>
					<td>Enter Mission : </td>
					<td><form:input  type="textarea" path="mission"/></td>
				</tr>
				<tr>
					<td>Enter Date : </td>
					<td><form:input  type="date" path="date"/></td>
				</tr>
				<tr>
					<td>Enter Time : </td>
					<td><form:input  type="text" path="time"/></td>
				</tr>
			</tbody>
		</table>
				<center><input type="submit" class="success" value="OK" ></center>
        </form:form>
<script>

function logoutAdmin(){
    window.location = "home";
}

</script>
    </body>
</html>