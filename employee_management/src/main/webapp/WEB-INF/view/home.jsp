<%@page import="employee_management.dto.EmployeeDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management Home-Page</title>
<style type="text/css">
 table {
    width: 90%;
    border-collapse: collapse;
    margin: 20px;
  }

  table, th, td {
    border: 1px solid #ccc;
  }

  th, td {
    padding: 5px;
  }

  th {
    background-color: #f2f2f2;
  }
  tr a{
  text-decoration: none;
  border: 2px solid black;
  margin: 10px;
  }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">EMPLOYEE-MANAGEMENT</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="home">Home</a>
        <a class="nav-link" href="addemp">Add Employee</a>
      </div>
    </div>
     <a class="nav-link" id="logout-btn" href="logout">Logout</a>
  </div>
</nav>
<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Password</th>
<th>Designation</th>
<th>Salary</th>
<th>Delete</th>
<th>Update</th>
</tr>
 <%List<EmployeeDto> lct=(List<EmployeeDto>)request.getAttribute("objects");%>
<%for(EmployeeDto uv:lct){%>
	<tr>
	<td><%=uv.getId()%></td>
	<td><%=uv.getName()%></td>
	<td><%=uv.getEmail()%></td>
	<td><%=uv.getPassword()%></td>
	<td><%=uv.getDesignation()%></td>
	<td><%=uv.getSalary()%></td>
	<td><a href="delete?id=<%=uv.getId()%>">Delete</a></td>
	<td><a href="edit?id=<%=uv.getId()%>
	&&name=<%=uv.getName()%>
	&&email=<%=uv.getEmail()%>
	&&password=<%=uv.getPassword()%>
	&&designation=<%=uv.getDesignation()%>
	&&salary=<%=uv.getSalary()%>">Update</a></td>
	</tr>
<%}%>
</table>
</body>
</html>