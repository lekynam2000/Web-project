<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-catche, no-store, must-revalidate");//http 1.1
		response.setHeader("Pragma", "no-catche");//http 1.0
		response.setHeader("Expires", "0");//Proxies
	%>

	<b>Login Page</b>
	<b>Note: Account doesn't exist</b>
	<center>
		<b>Do you want to login by password or face</b>
		<form action="loginByPass.jsp" method="GET">
			<input type="submit" value="By Password" >
		</form>
		<br>
		<form action="loginByFace.jsp" method="GET">
			<input type="submit" value="By Face"  >
		</form>
	</center>

	<b>No account! <a href="signup.jsp">Sign up</a> here
	</b>

</body>
</html>