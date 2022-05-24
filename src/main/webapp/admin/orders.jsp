<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Orders</title>
<%@ include file="allCss.jsp" %>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<h3 class="text-center">Hello Admin</h3>
	<table class="table table-striped">
  		<thead>
    		<tr>
      			<th scope="col">Order ID</th>
      			<th scope="col">Name</th>
      			<th scope="col">Email</th>
      			<th scope="col">Address</th>
      			<th scope="col">Phone</th>
      			<th scope="col">Product Name</th>
      			<th scope="col">Category</th>
      			<th scope="col">Price</th>
      			<th scope="col">Payment Type</th>
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
      			<td>@mdo</td>
      			<td>Otto</td>
      			<td>@mdo</td>
    		</tr>
    		<tr>
      			<th scope="row">2</th>
      			<td>Jacob</td>
      			<td>Thornton</td>
      			<td>@fat</td>
      			<td>Otto</td>
      			<td>@mdo</td>
      			<td>@mdo</td>
      			<td>Otto</td>
      			<td>@mdo</td>
   			</tr>
    		<tr>
      			<th scope="row">3</th>
      			<td>Larry</td>
      			<td>the Bird</td>
      			<td>Otto</td>
      			<td>@mdo</td>
      			<td>@twitter</td>
      			<td>@mdo</td>
      			<td>Otto</td>
      			<td>@mdo</td>
    		</tr>
  		</tbody>
</table>
<div class="container-fluid text-center text-white p-3" style="background-color: #0000a0; margin-top: 33rem">
		<h5>©Design and Develop by ThanhPhat_TanViet</h5>
	</div>
</body>
</html>