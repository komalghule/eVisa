<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css">
        <!--<link href="css/style.css" rel="stylesheet">-->

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>

        <style>
            span.error {
                color: red;
            } 
            .background_video {
            width: 100%;
            position: absolute;
            top: 0;
            bottom: 0;
        }
        
        .background_fullscreen {
            overflow: hidden;
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: -100;
        }
    </style>


        
    </head>
    <body>
        <div class="container">
            <div class="container">
                <div class="col-md-4">
                    <h1>Login</h1>
                    <hr/>
                    <form 
                        onsubmit="return validateForm();"
                        method="GET" 
                        action="login.php">

                        <div class="form-group">
                            <label for="username">User Name</label>
                            <input placeholder="enter user name..." class="form-control" type="text" name="username" id="username">
                            <span id="error-user-name" class="error">please enter valid user name</span>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input placeholder="enter password..." class="form-control" type="password" name="password" id="password">
                            <span id="error-password" class="error">please enter valid password</span>
                        </div>

                        <input type="submit" class="btn btn-success" value="Login">
                        <span id="message-user-login">Successfully logged in</span>
                    </form>
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
                    //return false;
                } else if (password.length == 0) {
                    //alert('please enter password');

                    $('#error-user-name').hide();                 
                    $('#error-password').show();
                    //return false;
                } else{
                    window.location="index.html";
                }
                return false;
            }
        </script>
          <div class="background_fullscreen">

                <video autoplay loop muted class="background_video" src="video/baclground.mp4">

            </div>

    </body>
</html>
