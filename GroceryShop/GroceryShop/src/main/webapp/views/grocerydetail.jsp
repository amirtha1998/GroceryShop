<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grocery Details</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="body-container">
		<br></br>
		<fieldset class="field">
			<legend>GROCERY DETAILS BEFORE UPDATE</legend>
			<br></br>
			<c:if test="${not empty gro}">
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
			</c:if>
			<br></br>
		</fieldset>
	</div>
	<br></br>
	<br></br>
	<div class="body-container">
		<form:form action="updateMsg" method="post" modelAttribute="grocery">
			<fieldset class="field">
				<legend>GROCERY DETAILS UPDATION FORM</legend>
				<br></br>
				<table class="center">
					<tr>
						<td align="left">Product ID</td>
						<td align="left"><form:input path="productid" type="number"
								required="required" /></td>

					</tr>
					<tr>
						<td align="left">Product Name</td>
						<td align="left"><form:input path="productname" type="text"
								required="required" /></td>

					</tr>

					<tr>
						<td align="left">Price</td>
						<td align="left"><form:input path="price" type="text"
								required="required" /></td>

					</tr>

					<tr>
						<td align="left">Manufacture Date</td>
						<td align="left"><form:input path="manufacturedate"
								type="text" placeholder='dd-MM-yyyy' required="required" /></td>

					</tr>
					<tr>
						<td align="left">Expiry Date</td>
						<td align="left"><form:input path="expirydate" type="text"
								placeholder='dd-MM-yyyy' required="required" /></td>

					</tr>

					<tr>
						<td align="left">Stock</td>
						<td align="left"><form:select path="stock" items="${stock}"></form:select></td>

					</tr>
				</table>
				<br></br> <input type="submit" value="UPDATE"></input> <br></br>
			</fieldset>
		</form:form>
	</div>
</body>
</html>