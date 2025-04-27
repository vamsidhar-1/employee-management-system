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
<body bgcolor = "#D3D3D3">
<center>
<h1 style="background-color: lightgray;"><font color ="grey">Employee Management System</font></h1>
<hr/>
<h2>VIEW ALL EMPLOYEE DETAILS</h2>
<table border = "1px" style="border-collapse:collapse">
	<tr>
		<th>Employee_Id</th>
		<th>Employee_Name</th>
		<th>Employee_Gender</th>
		<th>Employee_Salary</th>
	</tr>
<%!private static final String VIEW_ALL_EMP_QUERY = "select * from ems"; %>
<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vamsi","vamsi");
		PreparedStatement ps = con.prepareStatement(VIEW_ALL_EMP_QUERY);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){%>
		<tr>
		<td><%=rs.getInt(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getDouble(4) %></td>
		</tr>
			
		<% }
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</table>
</center>

</body>
</html>