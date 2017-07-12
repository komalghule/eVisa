<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css">

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
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
                    <li onclick = "reloadApplicants()"><a>All Request</a></li>
                    <li onclick = "readUsers()"><a>Users</a></li>
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
                        table += "<th></th>";                        
                        table += "<th>Valid Id</th>";
                        table += "<th>User Name</th>";                                                                        
                        table += "<th>Last Name</th>";                        
                        table += "<th>First Name</th>";
                        table += "<th>To Country</th>";
                        table += "<th>Apply Date</th>";
                        table += "<th>Payment Detail</th>";                          
                        table += "<th>Status</th>";                        
                        table += "<th>Action</th>";
                                                                                               
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
                window.location = "login.html";
            }
/*
            function deleteContact(id) {
                //alert('deleting id: ' + id);
                $.ajax({
                    url:'http://localhost:8080/contact/' + id,
                    method:'DELETE',
                    success:function(response) {
                        reloadContacts();
                    },
                    error:function(error) {
                        alert('error: ' + error);
                    }
                });
            }
*/
        </script>

    </body>
</html>