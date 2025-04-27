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
<body bgcolor = "biscuit">
<center>
	<h1 style="background-color: lightgray;"><font color ="grey">Employee Management System</font></h1>
	<hr/>
	<h2>Update Employee</h2>
<%! private static final String GET_EMPLOYEE_INFO_QUERY = "select * from ems where employee_id = ?";%>

<%
	String Employee_id = request.getParameter("EmpId");
	int Emp_id = Integer.parseInt(Employee_id);
	String name = "";
	String gender = "";
	Double salary = 0.0;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vamsi","vamsi");
		PreparedStatement ps = con.prepareStatement(GET_EMPLOYEE_INFO_QUERY);
		ps.setInt(1, Emp_id);
		ResultSet rs = ps.executeQuery();
		if(rs.next ())
		{%>
			<form action = "./update-employee-controller.jsp">
			<table>
				<tr>
				<td><label>Employee id :</label></td>
				<td><input type = "text" disabled = "disabled" name = "Emp_id" value = <%=rs.getInt(1) %> ></td>
				<td><input type = "hidden" name = "Emp_id" value = <%=rs.getInt(1) %> ></td>
				</tr>
				<tr>
				<td><label>Employee Name :</label></td>
				<td><input type = "text" name = "EmpName" value = <%=rs.getString(2) %>></td>
				</tr>
				<tr>
				<td><label>Employee Gender :</label></td>
				<td><input type = "text" name = "gender" value = <%=rs.getString(3) %>></td>
				</tr>
				<tr>
				<td><label>Employee Salary :</label></td>
				<td><input type = "number" name = "salary" value = <%=rs.getDouble(4) %>></td>
				</tr>
				<tr>
				<td><input type = "submit" name = "submit" value = "Update"></td>
				<td><input type = "reset" name = "reset" value = "Clear"></td>
				</tr>
			</table>
			</form>
			
		<%}else{
			out.println("<center><h1><font color = red>Failed.Invalid Employee Id</font></h1></center>");
			out.println("<center><h4><a href = 'update-search.jsp'>&#xab;&#x2014;Back</a></h4> </center>");
			out.println("<center><h4><a href = 'home.html'>&#x1F3E0;Home</a></h4></center>");
		}
		con.close();
	}catch(Exception e){
		e.printStackTrace();
	}


%>

	
</center>

</body>
</html>