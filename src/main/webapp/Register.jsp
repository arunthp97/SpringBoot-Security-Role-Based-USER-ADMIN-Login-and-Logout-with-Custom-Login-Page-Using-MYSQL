<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><center><br>
<h2><u>Register User</u></h2>
<form action="/register" method="post">
<table>
<tr><th>Username : </th><th><input type="text" name="username" required></th></tr>
<tr><th>Password : </th><th><input type="password" name="password" required></th></tr>
<tr><th>Email : </th><th><input type="email" name="email" required></th></tr>
<tr><th>Role : </th><th>USER <input type="radio" value="ROLE_USER" name="role" required> ADMIN <input type="radio" value="ROLE_ADMIN" name="role" required></th></tr>
<tr><th><input type="reset"></th><th><input type="submit" value="Register"></th></tr>
</table>
</form>
</center>
</body>
</html>