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
 <div><img class="banner" alt="Indian Visa Online" src="bootstrap/images/banner1.jpg"></div> 


 <style>
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
padding: 30px;
}
body
{
    background-color: moccasin;
}
div
{
	width: 800px;
}

</style>
</head>
<body>
	<form:form action="payment" modelAttribute="command"  method="post" >
			<legend><h4 style="text-decoration:darkorchid ">Upload Documents</h4></legend>
           	<div><h5 style="color: firebrick">Please Note Down the Temporary Application Id:<h5></div>
            <table>
                <tbody>
                     <tr>
                        <td>Choose Photo</td>
                        <td><input type="file" name="photo"></td>
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
<!--             <div>
            	<input type="submit" class="btn btn-default" formaction="upload" value="Upload and Temporary Exit"></input>
            	<input type="submit" class="btn btn-default" value="save and Continue"/>
            </div>
 -->
		<center>
           	<input type="submit" class="btn btn-default" formaction="home" value="Upload and Temporary Exit"></input>
           	<input type="submit" class="btn btn-default" value="save and Continue"/>
		</center>
	</form:form>
</body>
</html>
