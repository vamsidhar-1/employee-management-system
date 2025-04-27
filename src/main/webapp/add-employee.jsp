<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body bgcolor = "orange">

	<center>
	<h1 style="background-color: lightgray;"><font color ="grey">Employee Management System</font></h1>
	<h2>Add Employee</h2>
	<hr/>
	<form action="./add-employee-controller.jsp">
	<table>
	<tr>
	<td><label>Enter Employee Name :</label></td>
	<td><input type ="text" name = "employeeName"></td>
	</tr>
	<tr>
	<td><label>Enter Employee Gender :</label></td>
	<td>
	<input type = "radio" name ="gender" value = "male">Male 
	<input type = "radio" name = "gender" value = "female">Female
	</td>
	</tr>
	<tr>
	<td><label>Employee Salary :</label></td>
	<td><input type = "number" name = "salary"></td>
	</tr>
	<tr>
	<td><input type = "submit" value = "Save Employee"></td>
	<td><input type = "reset" value = "Clear"></td>
	</tr>
	</table>
	</form>
	</center>

</body>
</html>