<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Upload Docs</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
		<script src="bootstrap/js/1.8.2/jquery.min.js"></script>


 <style>
 
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
width:100%;
padding-top:5px;
	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
 text-align:center;
 font-size:20px;
	possition:relative;
	background-color:pink;
	
	
	 

}
input
{
padding-right:45%;
}

#tempid
{
padding-left:10%;
}

</style>

<script>
/* $(document).ready(function() {
	//add more file components if Add is clicked
	$('#addFile').click(function() {
		var fileIndex = $('#fileTable tr').children().length - 1;
		$('#fileTable').append(
				'<tr><td>'+
				'	<input type="file" name="files['+ fileIndex +']" />'+
				'</td></tr>');
	});
	
});
 */
	$(document).ready(function() {
		//add more file components if Add is clicked
		
			var fileIndex = $('#fileTable tr').children().length - 1;
			$('#fileTable').append(
					'<tr><td>'+
					'	<input type="file" name="files['+ fileIndex +']" />'+
					'</td></tr>');		
	});
	 
 </script>
</head>
<body>

<div> 
     <img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg">
</div>
	<div id="head"></legend><h4 >Upload Documents</h4></div>
		
	<form:form action="save" modelAttribute="command"  method="post" enctype="multipart/form-data">
			
           	<div><legend><h5 style="color:firebrick" id="tempid">Please Note Down the Temporary Application Id:</h5></legend></div>
            <table id="tb">
                <tbody>
                     <tr>
                        <td>Choose Photo</td>
                        <td><input type="file" name="file" multiple="multiple"></td>
                    </tr>
	                <tr>
                        <td>Choose Doc1</td>
                        <td><input type="file" name="doc1"></td>
                    </tr>
                       <tr>
                        <td>Choose Doc2</td>
                        <td><input type="file" name="doc2"></td>
                    </tr>
                       <tr>
                        <td>Choose Doc3</td>
                        <td><input type="file" name="doc3"></td>
                    </tr>
                       <tr>
                        <td>Choose Doc4</td>
                        <td><input type="file" name="doc4"></td>
                    </tr>
                       <tr>
                        <td>Choose Doc5</td>
                        <td><input type="file" name="doc5"></td>
                    </tr>
                       <tr>
                        <td>Choose Doc6</td>
                        <td><input type="file" name="doc6"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
 	                </tbody>
            </table><br/>

		<center>
           	<input type="submit" class="btn btn-default" formaction="home" value="Upload and Temporary Exit"/>
        
           	<input type="submit" class="btn btn-default" value="save and Continue"/>
		</center>
	</form:form>

 
 <form:form method="post" action="payment" 
		modelAttribute="uploadForm" enctype="multipart/form-data">

	<p>Select files to upload. </p>

	<input id="addFile" type="button" value="Add File" />
	<table id="fileTable">
		<tr>
			<td><input name="files[0]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[1]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[2]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[3]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[4]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[5]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[6]" type="file" /></td>
		</tr>


	</table>
	<br/><input type="submit" value="Upload" />
</form:form>
 
 </body>
</html>
 --%>
 
 
  <%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<title>Upload Documents</title>
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
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
 --><!-- start-smoth-scrolling -->

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
 <style>
 
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

 
form
{
  
border: solid 2px crimson;
width: 1000px;
height:70%;
position: absolute;
margin: auto;
top: 150px;
bottom:0;
left: 0;
right: 0;
margin-top:5%;

}

div
{
	width: 800px;
}
#head
{

height:40px;
width:100%;
padding-top:5px;
	bottom:0px;
	right:0px;
	left:0px;
     margin:auto;
 text-align:center;
 font-size:20px;
	possition:relative;
	background-color:#fe9126;
	
	
	 

}
.banner
{
width:160%;
	 
}
input
{
padding-right:45%;
}

#tempid
{
padding-left:10%;
margin-bottom:10px;
margin-top:10px;
}
.container
{
margin-top:5px;
width:70%;
height:1070%;
border:solid 2px;
margin-bottom:20px;

}
</style>


</head>
<body>

<div> 
     <img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg">
</div>
	<div id="head"><h4>Upload Documents</h4></div>
		
		
		<form:form method="post" action="payment" 
		modelAttribute="uploadForm" enctype="multipart/form-data">

	<p><h4 align="left">Select Files to Upload</h4> </p>

<!-- 	<input id="addFile" type="button" value="Add File" /> -->
	<table id="tb">
	<tbody>
				<tr>
			<td><input name="files[0]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[1]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[2]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[3]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[4]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[5]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[6]" type="file" /></td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td><h3 align="left"><input type="submit" class="btn btn-success" value="Upload" /></h3></td>
		</tr>
	</tfoot>		
	</table>
	<br/>
</form:form>
		
 
 <script>
/* $(document).ready(function() {
	//add more file components if Add is clicked
	$('#addFile').click(function() {
		var fileIndex = $('#fileTable tr').children().length - 1;
		$('#fileTable').append(
				'<tr><td>'+
				'	<input type="file" name="files['+ fileIndex +']" />'+
				'</td></tr>');
	});
	
});
 */
	$(document).ready(function() {
		//add more file components if Add is clicked
		
			var fileIndex = $('#fileTable tr').children().length - 1;
			$('#fileTable').append(
					'<tr><td>'+
					'	<input type="file" name="files['+ fileIndex +']" />'+
					'</td></tr>');		
	});
	 
 </script>
 
 </body>
</html>
 
