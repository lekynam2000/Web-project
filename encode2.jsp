<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center><b>ENCRYPTION PAGE</b></center>
	<b>Error: You are just be able to pass message by one of two methods !!!</b>
	<form action="Encode" method="POST" enctype="multipart/form-data">
		Enter text to encode:	<input type="text" name="script_text">
		Enter key: <input type="text" name="key">
		<br><br>
		Or upload file here to encode:<br>
		<input type="file" name="script_file" value="script_file">
		<br>
		<input type="submit" value="encrypt">
	</form>
	

</body>
</html>