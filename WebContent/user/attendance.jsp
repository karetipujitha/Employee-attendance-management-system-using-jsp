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

		String a = session.getAttribute("id").toString();

		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Driver Class Loaded");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "K.pujitha6");
		System.out.println("connection");
		java.sql.Timestamp date1 = new java.sql.Timestamp(new java.util.Date().getTime());

		if (id.equals(a)) {
			PreparedStatement stmt = con.prepareStatement("insert into Attendance values(?,?)");
			stmt.setString(1, id);
			stmt.setTimestamp(2, date1);
			int n = stmt.executeUpdate();
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("home.jsp");
		}
	%>

</body>
</html>