<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin regpage</title>
</head>
<body>
<form id="login-form" action="adminregister">
            <div class="form-group">
                <label for="username"></label>
                <input type="text" id="username" name="username" required placeholder="Enter Username">
            </div>
            <div class="form-group">
                <label for="password"></label>
                <input type="password" id="password" name="password" required placeholder="Enter Password">
            </div>
            <button type="submit">Login</button>
        </form>
</body>
</html>