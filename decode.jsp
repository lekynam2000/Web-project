<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		<b>DECRYPTION PAGE</b>
	</center>
	<br>
	<form action="Decode" method="POST" enctype="multipart/form-data">
		Enter key: <input type="text" name="key"> <br> Upload
		image:<input type="file" name="image" value="image"> <br>
		<br> <input type="submit" value="decrypt">
	</form>

	<br>
	<form action="Logout" method="GET">
		<input type="submit" value="logout">
	</form>

</body>
</html>