<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeleteProduct</title>
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
		<form:form action="deletegrocery" modelAttribute="grocery"
			method="post">
			<fieldset class="field">
				<legend>PRODUCT TO BE DELETED</legend>
				<br></br>
				<table class="center">
					<tr>
						<td align="left">Product Id</td>
						<td align="left"><form:input path="productid"
								placeholder="Product Id"></form:input></td>
					</tr>
				</table>
				<br></br> <input type="submit" value="DELETE"></input> <br></br>
			</fieldset>
		</form:form>
	</div>
</body>
</html>