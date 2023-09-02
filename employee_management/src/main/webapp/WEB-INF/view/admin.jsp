<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login page</title>
<style type="text/css">
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.login-container {
  background-color: rgb(255, 255, 255);
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  text-align: center;
  width: 500px;
}

form {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.form-group {
  margin: 10px 0;
}

label {
  font-weight: bold;
}

input {
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 3px;
}
button:hover{
    color: black;
    cursor: pointer;
}
input::placeholder{
    color: black;
    font-weight: bolder;
}
</style>
</head>
<body>
<div class="login-container">
        <h2>Admin Login</h2>
        <form id="login-form" action="adminlogin">
         <div class="form-group">
                <input type="text" id="username" name="id" required placeholder="Enter id">
            </div>
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
    </div>
</body>
</html>