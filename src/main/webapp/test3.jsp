<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Information</title>
</head>
<body>
    <h1>User Information</h1>
    <table>
        <tr>
            <td>ID:</td>
            <td>${user.id}</td>
        </tr>
        <tr>
            <td>Name:</td>
            <td>${user.name}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${user.email}</td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td>${user.phone}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${user.address}</td>
        </tr>
    </table>
</body>
</html>
