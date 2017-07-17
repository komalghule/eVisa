<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
		
<%-- 	<form:form action="save" modelAttribute="command"  method="post" enctype="multipart/form-data">
			
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
 --%>
 
 <form:form method="post" action="payment" 
		modelAttribute="uploadForm" enctype="multipart/form-data">

	<p>Select files to upload. Press Add button to add more file inputs.</p>

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
