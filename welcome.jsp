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
		response.setHeader("Cache-Control","no-catche, no-store, must-revalidate");//http 1.1
		response.setHeader("Pragma","no-catche");//http 1.0
		response.setHeader("Expires","0");//Proxies
	
		if(session.getAttribute("user_name")==null){
			response.sendRedirect("login.jsp");
		}
	%>

	Welcome ${user_name}
	<br>
	<a href="encode.jsp">Encryption</a>
	<br>
	<a href="decode.jsp">Decryption</a>
	<form action="Logout" method="GET">
		<input type="submit" value="logout"> 
	</form>
</body>
</html>