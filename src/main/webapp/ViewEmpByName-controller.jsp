<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	<h2>Viem Employee Result</h2>
<table border ="1px" style = "border-collapse : collapse;">
	<tr>
	<th>Employee Id</th>
	<th>Employee Name</th>
	<th>Employee Gender</th>
	<th>Employee Salary</th>
	</tr>
<%! private static final String VIEW_EMP_QUERY = "select * from ems where employee_name = ?"; %>

<%
	String EmployeeName = request.getParameter("EmpName");
	int id = 0;
	String gender = "";
	Double salary = 0.0;%>
	
	
	<%try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vamsi","vamsi");
		PreparedStatement ps = conn.prepareStatement(VIEW_EMP_QUERY);
		ps.setString(1, EmployeeName);
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{%>
			<tr>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getDouble(4) %></td>
			</tr>
			
		<%}
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}


%>
</table>
</center>
</body>
</html>