<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product detail</title>
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
		<form:form action="searchedresult" modelAttribute="grocery"
			method="post">
			<fieldset class="field">
				<legend>PRODUCT TO BE SEARCHED</legend>
				<br></br>
				<table class="center">
					<tr>
						<td align="left">Product Name</td>
						<td align="left"><form:input path="productname"
								placeholder="Product Name"></form:input></td>
					</tr>
				</table>
				<br></br> <input type="submit" value="SEARCH"></input> <br></br>
			</fieldset>
		</form:form>
	</div>
</body>
</html>