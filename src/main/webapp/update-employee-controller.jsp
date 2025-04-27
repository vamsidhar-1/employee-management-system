<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<%! private static final String UPDATE_QUERY = "update ems set employee_name = ? ,gender = ? ,salary = ? where employee_id = ?"; %>
<%
	
	String Employee_id = request.getParameter("Emp_id");
	int Emp_id = Integer.parseInt(Employee_id);
	String Emp_name = request.getParameter("EmpName");
	String Emp_gender = request.getParameter("gender");
	String Emp_salary = request.getParameter("salary");
	double salary = Double.parseDouble(Emp_salary);
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vamsi","vamsi");
		PreparedStatement ps = con.prepareStatement(UPDATE_QUERY);
		ps.setString(1, Emp_name);
		ps.setString(2, Emp_gender);
		ps.setDouble(3, salary);
		ps.setInt(4,Emp_id);
		int i = ps.executeUpdate();
		if(i>0){
			out.println("<center><h1><font color = green>Employee Updated Successfully..</font></h1></center>");
			out.println("<center><h4><a href = 'update-search.jsp'>&#xab;&#x2014;Back</a></h4> </center>");
			out.println("<center><h4><a href = 'home.html'>&#x1F3E0;Home</a></h4></center>");
		}else{
			out.println("<center><h1><font color = green>Failed Please try again..</font></h1></center>");
			out.println("<center><h4><a href = 'update-search.jsp'>&#xab;&#x2014;Back</a></h4> </center>");
			out.println("<center><h4><a href = 'home.html'>&#x1F3E0;Home</a></h4></center>");
			
		}
	}catch(Exception e ){
		e.printStackTrace();
	}
	
%>


</center>

</body>
</html>