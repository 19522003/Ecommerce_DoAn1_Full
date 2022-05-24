<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All products</title>
<%@ include file="allCss.jsp" %>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<h3 class="text-center">Hello Admin</h3>
	<table class="table table-striped">
  		<thead>
    		<tr>
      			<th scope="col">ID</th>
      			<th scope="col">Product name</th>
      			<th scope="col">Gender</th>
      			<th scope="col">Price</th>
      			<th scope="col">Categories</th>
      			<th scope="col">Status</th>
      			<th scope="col">Action</th>
    		</tr>
  		</thead>
  		<tbody>
    		<tr>
      			<th scope="row">1</th>
      			<td>Mark</td>
      			<td>Otto</td>
      			<td>@mdo</td>
      			<td>Otto</td>
      			<td>@mdo</td>
      			<td>
      				<a href="#" class="btn btn-sm btn-primary">Edit</a>
      				<a href="#" class="btn btn-sm btn-danger">Delete</a>
      			</td>
    		</tr>
    		<tr>
      			<th scope="row">2</th>
      			<td>Jacob</td>
      			<td>Thornton</td>
      			<td>@fat</td>
      			<td>Otto</td>
      			<td>@mdo</td>
      			<td>
      				<a href="#" class="btn btn-sm btn-primary">Edit</a>
      				<a href="#" class="btn btn-sm btn-danger">Delete</a>
      			</td>
   			</tr>
    		<tr>
      			<th scope="row">3</th>
      			<td>Larry</td>
      			<td>the Bird</td>
      			<td>Otto</td>
      			<td>@mdo</td>
      			<td>@twitter</td>
      			<td>
      				<a href="#" class="btn btn-sm btn-primary">Edit</a>
      				<a href="#" class="btn btn-sm btn-danger">Delete</a>
      			</td>
    		</tr>
  		</tbody>
</table>
<div class="container-fluid text-center text-white p-3" style="background-color: #0000a0; margin-top: 31.7rem">
		<h5>©Design and Develop by ThanhPhat_TanViet</h5>
	</div>
</body>
</html>