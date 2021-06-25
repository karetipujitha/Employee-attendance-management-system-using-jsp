<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Driver Class Loaded");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "K.pujitha6");
		System.out.println("connection");
		PreparedStatement stmt = con.prepareStatement("insert into Employee_details values(?,?,?,?)");
		stmt.setString(1, id);
		stmt.setString(2, name);
		stmt.setString(3, email);
		stmt.setString(4, pwd);

		int n = stmt.executeUpdate();
		response.sendRedirect("admin-home.jsp");
	%>

</body>
</html>