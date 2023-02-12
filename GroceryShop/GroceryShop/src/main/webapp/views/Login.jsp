<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
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
	<div class="body-container">
		<form action="userlogin" method="post">
			<fieldset class="field">
				<legend>User Login</legend>
				<br></br>
				<table class="center">
					<tr>
						<td align="left">User Name</td>
						<td align="left"><input type=text name="name"
							placeholder="Your Username" required="required" /></td>
					</tr>
					<tr>
						<td align="left">Password</td>
						<td align="left"><input type="password" name="pass"
							placeholder="Your Password" required="required" /></input></td>
					</tr>
				</table>
				<br></br> <input type="submit" value="LOGIN"></input> <br></br>
				<p style="color: red">${error}</p>
			</fieldset>
		</form>
	</div>
</body>
</html>