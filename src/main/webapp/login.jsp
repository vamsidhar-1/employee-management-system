<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor = "lightgreen">
<center>
	<h1 style="background-color: lightgray;"><font color ="grey">Employee Management System</font></h1>
	<hr/>
	<h2>Login</h2>
	<form action = "./login-controller.jsp">
	<table>
		<tr><th><label>Enter UserName :</label></th>
		<td><input type = "text" name = "UserName" placeholder = "Enter your username"></td>
		</tr>
		<tr>
		<th><label><b>Enter Password : </b></label></th>
		<td><input type = "password" name = "password" placeholder = "Enter your password"></td>
		</tr>
		<tr>
		<td><input type = "Submit" name = "submit" value = "Login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type = "reset" name = "reset" value = "Clear"></td>
		</tr>
		</table>
	</form>

</center>

</body>
</html>