<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@ include file="allCss.jsp" %>
<style type="text/css">
	a{
		text-decoration: none;
		color: black;
	}
	a:hover {
		text-decoration: none;
		color: green;
	}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
	<div style="margin-top: 200px">
	<div class="container">
		<div class= "row p-5">
			<div class="col-md-3">
				<a href="add_products.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i><br>
							<h4>Add Products</h4>
								-----------
						</div>	
					</div>
				</a>
			</div>
			<div class="col-md-3">
				<a href="all_products.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-tshirt fa-3x text-danger"></i><br>
						<h4>All Products</h4>
						-----------
					</div>	
				</div>
				</a>
			</div>
			<div class="col-md-3">
				<a href="orders.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-box-open fa-3x text-warning"></i><br>
						<h4>Order</h4>
						-----------
					</div>	
				</div>
				</a>
			</div>
			<div class="col-md-3">
				<a>
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
						<h4>Logout</h4>
						-----------
					</div>	
				</div>
				</a>
			</div>
		</div>
	</div>
	</div>
	<div class="container-fluid text-center text-white p-3" style="background-color: #0000a0; margin-top: 19.9rem">
		<h5>©Design and Develop by ThanhPhat_TanViet</h5>
	</div>
</body>
</html>