<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info</title>
</head>
<body>
	<h1>User Info</h1>
	<form action="UpdateUser" method="post">
		<label for="id">ID:</label>
		<input type="text" name="id" value="${user.id}" readonly><br>
		<label for="name">Name:</label>
		<input type="text" name="name" value="${user.name}" required><br>
		<label for="email">Email:</label>
		<input type="email" name="email" value="${user.email}" required><br>
		<label for="password">Password:</label>
		<input type="password" name="password" value="${user.password}" required><br>
		<label for="phone">Phone:</label>
		<input type="tel" name="phone" value="${user.phone}"><br>
		<label for="address">Address:</label>
		<textarea name="address">${user.address}</textarea><br>
		<button type="submit">Update</button>
	</form>
</body>
</html>
