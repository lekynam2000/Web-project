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
		<b>ENCRYPTION PAGE</b>
	</center>
	<b>Successful upload file</b>
	<form action="Encode" method="POST" enctype="multipart/form-data">
		Enter text to encode: <input type="text" name="script_text">
		Enter key: <input type="text" name="key"> <br> <br>
		Or upload file here to encode:<br> 
		<input type="file" name="script_file" value="script_file"> <br> 
		<input type="submit" value="encrypt">
	</form>
	<br>
	<form action="Logout" method="GET">
		<input type="submit" value="logout">
	</form>


</body>
</html>