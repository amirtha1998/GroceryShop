<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="body-container">
		<h1 style="color: red">
			<i>PRODUCT REGISTRATION FORM</i>
		</h1>
		<form:form action="productRegister" modelAttribute="product">
			<fieldset class="field">
				<legend>PRODUCT DETAILS</legend>
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
				<center><input type="SUBMIT" onclick="myFunction()" /></center>
			</fieldset>
		</form:form>
		<script>
			function myFunction() {
				alert("You Are Sucessfully Submitted");
			}
		</script>
	</div>
</body>
</html>