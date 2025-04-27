<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor = "lightorange">

	<center><h1 style="background-color: lightgray;"><font color ="grey">Employee Management System</font></h1></center>
	<hr/>
<%
	String UserName = request.getParameter("UserName");
	String Password = request.getParameter("password");
	
	if(UserName.equals("admin") && Password.equals("admin"))
	{
		response.sendRedirect("home.html");
	}
	else{
		out.println("<center><h1><font color = red>Failed to login.</font></h1></center>");
		
	}
%>

</body>
</html>