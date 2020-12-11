<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><center><br>
<h2><u>Login User-Admin</u></h2> <h3 align="center"><a href="/registers">Register Here</a></h3>
<form action="/dologin" method="post">
<table>
<tr><th>Username : </th><th><input type="text" name="username" required></th></tr>
<tr><th>Password : </th><th><input type="password" name="password" required></th></tr>
<tr><th><input type="reset"></th><th><input type="submit" value="SignIn"></th></tr>
</table>
</form>
</center>
</body>
</html>