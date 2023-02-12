<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grocery Update</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<br></br>
	<div class="body-container">
		<form action="home">
			<fieldset class="field">
				<legend>GROCERY UPDATED DETAILS</legend>
				<br></br>
				<table class="center">
					<tr>
						<td align="left">Product ID</td>
						<td align="left">${gro.productid}</td>
					</tr>
					<tr>
						<td align="left">Product Name</td>
						<td align="left">${gro.productname}</td>
					</tr>
					<tr>
						<td align="left">Price</td>
						<td align="left">${gro.price}</td>
					</tr>
					<tr>
						<td align="left">Manufacture Date</td>
						<td align="left">${gro.manufacturedate}</td>
					</tr>
					<tr>
						<td align="left">Expiry Date</td>
						<td align="left">${gro.expirydate}</td>
					</tr>
					<tr>
						<td align="left">Stock</td>
						<td align="left">${gro.stock}</td>
					</tr>
				</table>
				<br></br> <input type="submit" value="BACK"></input> <br></br>
			</fieldset>
		</form>
	</div>
</body>
</html>