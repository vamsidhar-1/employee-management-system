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
	<%! private static final String DELETE_QUERY = "delete from ems where employee_id = ?"; %>
	<%
		String Emp_id = request.getParameter("EmpId");
		int Employee_id = Integer.parseInt(Emp_id);
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vamsi","vamsi");
			PreparedStatement ps = con.prepareStatement(DELETE_QUERY);
			ps.setInt(1,Employee_id);
			int i = ps.executeUpdate();
			if(i>0){%>
				<h2><font color = "green">Employee Deleted Sucessfully..</font></h2>
				<h3><a href = "./home.html" >Click here</a>Home</h3>
			<%}
			else{%>
				<h2><font color = "red">Employee Deleted Failed..</font></h2>
				<h3><a href = "./delete-employee.jsp" >Click here</a> to go back</h3>
			<%}
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	
	
	%>
	

</center>

</body>
</html>