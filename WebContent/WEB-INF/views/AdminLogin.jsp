
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <!--<link href="css/style.css" rel="stylesheet">-->

        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>

        <style>
            span.error {
                color: red;
            }

        </style>
    </head>
    <body>
        <div class="container">
            <div class="container">
                <div class="col-md-4">
                    <h1>Login</h1>
                    <hr/>
                    <form:form 
                    	action="adminLogin"
                    	modelAttribute="command"
                        onsubmit="return validateForm();"
                        method="POST" >

                        <div class="form-group">
                            <label for="username">User Name</label>
                            <form:input placeholder="enter user name..." class="form-control" type="text" path="username" id="username"/>
                            <span id="error-user-name" class="error">please enter valid user name</span>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <form:input placeholder="enter password..." class="form-control" type="password" path="password" id="password"/>
                            <span id="error-password" class="error">please enter valid password</span>
                        </div>

                        <input type="submit" class="btn btn-success" value="Login">
                        <span id="message-user-login">Successfully logged in</span>
                    </form:form>
                </div>

            </div>
        </div>

        <script>

            $(document).ready(function() {
                
                $('#error-user-name').hide();
                $('#error-password').hide();
                $('#message-user-login').hide();

            });

            function validateForm() {
                var username = $('#username').val();
                var password = $('#password').val();

                if (username.length == 0) {
                    //alert('please enter user name');
                    $('#error-user-name').show();
                    return false;
                } else if (password.length == 0) {
                    //alert('please enter password');

                    $('#error-user-name').hide();                 
                    $('#error-password').show();
                    return false; 
                }

                return true;
            }
        </script>
    </body>
</html>