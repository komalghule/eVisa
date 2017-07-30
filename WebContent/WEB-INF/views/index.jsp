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
<link rel="stylesheet" href="acss/flexslider.css" type="text/css" media="all"/> 
<link href="acss/font-awesome.css" rel="stylesheet"> 			
<link href="acss/owl.carousel.css" rel="stylesheet" type="text/css" media="all">

<script src="ajs/jquery-2.2.3.min.js"></script>  
<script src="ajs/smoothscroll.min.js"></script> 
<!-- //js -->
<!-- web-fonts -->  
<!-- <link href="//fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
 --><style>
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
	<div class="banner">
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="header-w3lsrow"> 
					
					<div class="logo">
						<h1><a href="index.html" style="font-size: 25px;text-align: center;text-decoration: blink;color: crimson">Online  Portal  For  Visa  Application  to  India</a></h1>
					</div>  
					<br/><br/><br/><br/>
					
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //header --> 
		<!-- banner-text -->
		<div class="banner-text"> 
			<div class="container">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="banner-w3lstext">
								<h2>Welcome</h2>
							</div>
						<div style="text-align: center;"><a href="admin"><h5>SignIn For Admin</h5></a></div>
						</li>
						
						
					</ul> 
				</div> 	
				<!-- FlexSlider --> 
				<script defer src="ajs/jquery.flexslider.js"></script>
				<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				</script>
				<!-- End-slider-script -->
			</div>
		</div>
		<!-- //banner-text --> 
	</div>
	<!-- //banner -->
	
	<!-- modal-about -->
	<div class="modal bnr-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body modal-spa">
					<h4>Blanditiis deleniti</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rutrum iaculis enim, non convallis felis mattis at. Donec fringilla lacus eu pretium rutrum. Cras aliquet congue ullamcorper. Etiam mattis eros eu ullamcorper volutpat. Proin ut dui a urna efficitur varius. uisque molestie cursus mi et congue consectetur adipiscing elit cras rutrum iaculis enim, Lorem ipsum dolor sit amet, non convallis felis mattis at. Maecenas sodales tortor ac ligula ultrices dictum et quis urna. Etiam pulvinar metus neque, eget porttitor massa vulputate in. Fusce lacus purus, pulvinar ut lacinia id, sagittis eu mi. Vestibulum eleifend massa sem, eget dapibus turpis efficitur at. Aliquam viverra quis leo et efficitur. Nullam arcu risus, scelerisque quis interdum eget, fermentum viverra turpis. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut At vero eos </p>
				</div> 
			</div>
		</div>
	</div>
	<!-- //modal-about -->  
	
	
	
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
	<script src="ajs/owl.carousel.js"></script>
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
	<!-- //end-smooth-scrolling -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	
    <script src="ajs/bootstrap.js"></script>
</body>
</html>