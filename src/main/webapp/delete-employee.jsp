<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor = "violet">
<center>
<h1 style="background-color: lightgray;"><font color ="grey">Employee Management System</font></h1>
	<hr/>
	<h2>Delete Employee</h2>
<form action = "./delete-employee-controller.jsp">
<table>
	<tr><td><label>Enter employee id :</label></td>
	<td><input type = "number" name = "EmpId"></td>
	</tr><tr>
	<td><input type = "submit" name = "submit" value = "Delete Employee"></td>
	<td><input type = "reset" name = "reset" value = "Clear"></td>
	</tr>
</table>
</form>
</center>

</body>
</html>