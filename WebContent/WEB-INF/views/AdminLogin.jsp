<%-- 
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
</html> --%>


<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ADMIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Drive Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="acss/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="acss/style.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="acss/flexslider.css" type="text/css" media="all" property="" /> 
<link href="acss/font-awesome.css" rel="stylesheet"> 			<!-- font-awesome icons -->
<link href="acss/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<!-- //Custom Theme files -->  
<!-- js -->
<script src="ajs/jquery-2.2.3.min.js"></script>  
<script src="ajs/smoothscroll.min.js"></script> 
<!-- //js -->
<!-- web-fonts -->  
<!-- <link href="//fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
 --><!-- //web-fonts --> 
<style>
.logo
{
width:80%;

top:0;
bottom:0;
left:0;
right:0;
margin:auto;
possition:relative:

}
</style>

</head>
<body>
	<!-- banner -->
	<div class="banner w3about">
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="header-w3lsrow"> 
		 
					<div class="logo">
					<!-- <h1><a href="index.html" style="font-size: 25px;text-align: center;text-decoration: blink;color: crimson">Online  Portal  For  Visa  Application  to  India</a></h1> -->
					</div>  
					
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		
		<div class="banner-text"> 
			<div class="container"> 
				<div class="banner-w3lstext">
					<h3>Admin SignIn</h3>
				</div> 	 
			</div>
		</div>
		<!-- //banner-text --> 
	</div>
	<!-- //banner -->
	<!-- signIn -->
	<div class="about">
		<div class="container"> 
			<div class="login-form">
			
<form:form action="adminLogin" modelAttribute="command" onsubmit="return validateForm();" method="POST" >
					<div class="styled-input">
						
                            <form:input type="text" path="username" id="username"/>
                            <label for="username">User Name</label>
                            <span></span>
					</div>

					<div class="styled-input">
						 
                            <form:input type="password" path="password" id="password"/>
                           <label for="password">Password</label>
                            <span ></span>
					</div> 
					<div class="wthree-text"> 
						<ul> 
						</ul>
						<div class="clear"> </div>
					</div> 
					<input type="submit" class="btn btn-success" value="Login">
                        <span id="message-user-login">Successfully logged in</span>
                    </form:form>
		
<!-- <p>Don’t have an account ?<a href="signup.html" class="sign-in popup-top-anim"> Sign Up</a></p> -->
			</div>  
		</div>
	</div>
	<!-- //signIn -->   
	<!-- footer -->
	<!-- <div class="footer">
		<div class="container">
			<div class="col-md-4 footer-grids">
				<h3>Review</h3>
				<p>Sed ut turpis elit ullamcorper in auctor non, accumsan vel lacus nulla auctor cursus nunc. Maecenas ultricies dolor in urna tempus, id egestas erat finibus  interdum lectus eget scelerisque.</p>
			</div>
			<div class="col-md-3 footer-grids">
				<h3>Contact Us</h3>
				<p>123 NewYork City USA.<br>
					<span>Office: 908-0000</span>
				</p>
				<div class="footer-bottom">
					<a href="#"><i class="fa fa-facebook"> </i><span>Facebook</span></a>
					<a href="#"><i class="fa fa-twitter"> </i><span>Twitter</span></a>
					<a href="#"><i class="fa fa-google-plus"> </i><span>Google +</span></a>
					<a href="#"><i class="fa fa-dribbble"> </i><span>Dribbble</span></a>
				</div>
			</div>
			<div class="col-md-5 footer-grids">
				<h3>Flickr</h3>
				<a  class="footer-img" href=""><img src="images/i4.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="images/i2.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="images/i3.jpg" alt=""></a>
			</div>
			<div class="clearfix"> </div>
			<div class="footer-copy">
				<p>© 2017 Drive. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		</div>
	</div>
 -->	<!-- //footer --> 
	<!-- menu js -->
	<script>
		$('.toggle').on('click', function() {
			$('.menu').toggleClass('open');  
			$('.w3nav').toggleClass('show-w3nav');  
			$('.w3nav a').toggleClass('show-w3nav-link');  
			$('.toggle').toggleClass('close');  
		});
	</script>
	<!-- //menu js -->
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="ajs/move-top.js"></script>
	<script type="text/javascript" src="ajs/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<script src="ajs/bootstrap.js"></script>
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
