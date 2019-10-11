<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	
	<%
		response.setHeader("Cache-Control","no-catche, no-store, must-revalidate");//http 1.1
		response.setHeader("Pragma","no-catche");//http 1.0
		response.setHeader("Expires","0");//Proxies
	%>
	
	<b>Login Page</b>
	
	<form action="Login" method="POST">
		Name: <span class="tab"><input type="text" name="user_name"><br></span>
		Password: <span class="tab"><input type="password" name="password"><br></span>
		<input type="submit" value="login">
	</form>
	<form action="login.jsp" method ="GET">
		<input type="submit" value="Back to Login Page">
	</form>
	
	<b>No account! <a href="signup.jsp">Sign up</a> here</b>

</body>
</html>