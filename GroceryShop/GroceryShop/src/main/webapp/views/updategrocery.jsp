<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Grocery</title>
<link rel="stylesheet" href="css/style.css">
<style>
body{

background-image:url('resources/img/grocery.jpg');
background-repeat: no-repeat;
background-position:left top;
background-size:cover;
}
</style>
</head>
<body>
	<br></br>
	<br></br>
	<br></br>
	<br></br>
	<div class="body-container">
		<form action="groceryUpdate">
			<fieldset class="field">
				<legend>Product to be update</legend>
				<br></br>
				<table class="center">
					<tr>
						<td align="left">Product Id</td>
						<td align="left"><input type="text" name="id" placeholder="Product ID"></input></td>
					</tr>
				</table>
				<br></br> <input type="submit" value="UPDATE"></input> <br></br>
			</fieldset>
		</form>
	</div>
</body>
</html>