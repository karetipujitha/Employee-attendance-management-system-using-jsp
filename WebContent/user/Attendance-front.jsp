<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<html lang="en">
<style>
header {
	text-align: center;
}

html {
	height: 100%;
}

body {
	background-color: rgb(235, 226, 226);
	background-size: cover;
}

label {
	color: #08ffd1;
	font-size: 17px;
}

button {
	color: black;
	background-color: cyan;
}

input[type=submit] {
	background-color: cyan;
}

#log {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 17px;
	padding-left: 7px;
	color: rgb(204, 0, 255);
}

span {
	color: white;
	font-size: 17px;
}

body {
	margin: 0;
	padding: 0;
	background-color: #6abadeba;
	font-family: 'Arial';
}

p1 {
	color: yellow;
}

.login {
	width: 380px;
	overflow: hidden;
	margin: auto;
	margin: 20 1 0 450px;
	padding: 80px;
	background: #23463f;
	border-radius: 15px;
}
</style>
<title>Login</title>
<body>

	<div class="container">
		<title>Attendance register</title>
		<header>

			<h1>Attendance register</h1>
			<p2> <%
 	String a = session.getAttribute("id").toString();
 	out.println(a);
 %> </p2>
			<h1>
				<%
					Date date = new Date();
					out.print("<h2 align = \"center\">" + date.toString() + "</h2>");
				%>
			</h1>

		</header>

		<div class="login">
			<form id="login" method="post" action="attendance.jsp">

				<label><b>id </b> </label> <input type="id" name="id" Required>
				<br> <br>




				<button>submit</button>
				<br> <br>

			</form>
		</div>



		<body>
</html>
