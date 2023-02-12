<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expired product</title>
<link rel="stylesheet" href="css/table.css">
</head>
<body>
	<div class="body-container">
		<h1>Expired Product</h1>
		<form action=home>
			<table class="center">
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Manufacture date</th>
					<th>Expiry date</th>
					<th>Stock</th>
				</tr>
				<c:forEach items="${grocerylist}" var="e">
					<tr>
						<td align="left"><c:out value="${e.productid}" /></td>
						<td align="left"><c:out value="${e.productname}" /></td>
						<td align="left"><c:out value="${e.manufacturedate}" /></td>
						<td align="left"><c:out value="${e.expirydate}" /></td>
						<td align="left"><c:out value="${e.stock}" /></td>
					</tr>
				</c:forEach>
			</table>
			<br></br>
			<center>
				<input type="submit" value="BACK">
			</center>
		</form>
	</div>
</body>
</html>