<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
    background-color: #f5f5f5;
  }

  .form-container {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
  }

  .form-container input[type="text"],
  .form-container input[type="email"],
  .form-container input[type="password"],
  .form-container input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  .form-container button {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  .form-container button:hover{
  border-radius:10px;
  color: black; 
  }

  .form-container button.cancel {
    background-color: #ccc;
    margin-left: 10px;
  }
  .home-page-btn{
  position: absolute;
  top: 650px;
  width: 200px;
  
  }
  .home-page-btn a{
  text-decoration: none;
  }
</style>
</head>
<body>
 <div class="form-container">
    <h2>Update Details Form</h2>
    <form action="update" method="post">
    <input type="text" placeholder="Enter Id"  value="<%=request.getParameter("id")%>" readonly="readonly" name="id">
      <input type="text" placeholder="Name" name="name" value="<%=request.getParameter("name")%>" required>
      <input type="email" placeholder="Email" name="email" required value="<%=request.getParameter("email")%>">
      <input type="password" placeholder="Password" name="password" required value="<%=request.getParameter("password")%>">
      <input type="text" placeholder="Designation" name="designation" required value="<%=request.getParameter("designation")%>">
      <input type="number" placeholder="Salary" name="salary" required value="<%=request.getParameter("salary")%>">
      <button type="submit">Update</button>
      <button type="button" class="cancel">Cancel</button>
    </form>
  </div>
   <button class="home-page-btn"><a href="home">Home Page</a></button>
</body>
</html>