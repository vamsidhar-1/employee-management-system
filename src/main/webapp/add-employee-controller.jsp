<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor = "orange">

<%! private static final String ADD_EMPLOYEE_QUERY = " insert into ems values(ems_seq.nextval,?,?,?) "; %>

<%
String empName = request.getParameter("employeeName");
String gender = request.getParameter("gender");
String salary = request.getParameter("salary");
Double empSalary = Double.parseDouble(salary);

try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vamsi","vamsi");
	PreparedStatement ps = con.prepareStatement(ADD_EMPLOYEE_QUERY);
	ps.setString(1, empName);
	ps.setString(2, gender);
	ps.setDouble(3, empSalary);
	int i = ps.executeUpdate();
	if(i>0){
		out.println("<center><h1><font color = green>Employee Added Successfully..</font></h1></center>");
		out.println("<center><h4><a href = 'home.html'>Click here</a></h4> </center>");
		System.out.println("Employee added");
	}
	else{
		out.println("<center><h1><font color = red>Failed. Please try again...</font></h1></center>");
		out.println("<center><h4><a href = 'home.html'>Click here</a></h4> </center>");
		System.out.println("Employee added Failed.....");
	}
	con.close();	
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>