<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor = "lightpink">

<center>
	<h1 style="background-color: lightgray;"><font color ="grey">Employee Management System</font></h1>
	<h2>View Employee By Name</h2>
	<hr/>
	<form action = "./ViewEmpByName-controller.jsp">
	<table>
	<tr>
	<td><lable>Enter Employee Name :</lable></td>
	<td><input type = "text" name ="EmpName" ></td>
	</tr>
	<tr>
	<td><input type = "submit" name = "submit" value = "Search Employee"></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td><input type = "reset" name = "reset" value = "Clear"></td>
	</tr>
	</table>
	</form>

</center>

</body>
</html>