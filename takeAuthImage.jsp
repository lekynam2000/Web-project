<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="In/ SO-8859-1">
<title>Insert title bn/ / here</title>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-catche, no-store, must-revalidate");//http 1.1
		response.setHeader("Pragma", "no-catche");//http 1.0
		response.setHeader("Expires", "0");//Proxies

		if (session.getAttribute("user_name") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<center>
		<b>Do you want to take a photo to login by face</b>
		<form action="AuthImage" method="GET">
			<input type="submit" value="Take photo">
		</form>
		<form action="CheckValidSignUp" method="GET">
			<input type="submit" value="No">
		</form>
	</center>

</body>
</html>