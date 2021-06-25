<%@ page import="java.util.*,java.sql.*"%>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String query = "select * from puji1";
	int x = 0;
	int f = 0;

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system",
				"K.pujitha6");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		while (rs.next()) {
			if (id.equals(rs.getString(1)) && pwd.equals(rs.getString(2))) {
				response.sendRedirect("admin-home.jsp");
				break;
			} else {
				out.println("failed");
			}
		}

	} catch (Exception e) {
		System.out.println("error");
		out.print(e);
	}
%>
</body>
