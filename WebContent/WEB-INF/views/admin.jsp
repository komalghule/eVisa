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
        <script>
            function reloadApplicants() {
                        var table = '<h3>All Request</h3>';
                        
                        table += '<table class="table table-striped">';
                        table += "<thead>";
                        table += "<tr>";
                                                
                        table += "<th>Valid Id</th>";
                        table += "<th>User Name</th>";                                                                        
                        

                        table += "<th>From Country</th>";
                        table += "<th>Apply Date</th>";
                        table += "<th>Payment Detail</th>";                          
                        table += "<th>Status</th>";                        
                        
                                                                                               
                        table += "</tr>";
                        table += "</thead>";

                        table += "<tbody>";
                        table += "<c:forEach var='application' items='${requestScope.ApplicationList}'>";
                        
                            table += "<tr>";
                            table += "<td>" + "<c:out value='${application.id}'/>" + "</td>";                            
                            table += "<td>" + "<c:out value='${application.personal.givenname}'/>" + "</td>";                            
                            table += "<td>" + "<c:out value='${application.personal.nationality}'/>" + "</td>";                            
                            table += "<td>" + "<c:out value='${application.date}'/>" + "</td>";
                            table += "<td>" + "<c:out value='${application.payment}'/>" + "</td>";
                            table += "<td>" + "<a href='update?applicationId=${application.id}'>update</a>" + "</td>";
                                                    
                            table += "</tr>";

                         table += "</c:forEach>";
                        table += "</tbody>";                            
                        table += "</table>";

                        $('#contacts').html(table);
            }

            function readUsers() {
                        var table = '<h3>User Track</h3>';
                        table += '<table class="table table-striped">';
                        table += "<thead>";
                        table += "<tr>";
                        table += "<th></th>";                        
                        table += "<th>USERS</th>";                        
                        table += "<th>STATUS</th>";                        
                        table += "<th>ACTION</th>";                        
                        table += "</tr>";
                        table += "</thead>";

                        table += "<tbody>";                        
                        for (var index = 0; index < contacts.length; index++) {
                            var contact = contacts[index];
                            // console.log("Name: " + contact.name);
                            // console.log("Address: " + contact.address);
                            // console.log("Phone: " + contact.phone);

                            table += "<tr>";
                            table += '<td><span onclick="deleteContact(\'' + contact._id + '\')" class="glyphicon glyphicon-trash btn text-danger"></span></td>';                            
                            table += "<td>" + contact.name + "</td>";                            
                            table += "<td>" + contact.address + "</td>";                            
                            table += "<td>" + contact.phone + "</td>";                            
                            table += "</tr>";
                        }
                        table += "</tbody>";                            
                        table += "</table>";

                        $('#contacts').html(table);
            }
            function logoutAdmin(){
                window.location = "home";
            }
        </script>

    </body>
</html>