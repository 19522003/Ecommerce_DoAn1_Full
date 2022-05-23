<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecommerce: Index</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
	.back-img {
		background: url("img/fashion.png");
		height: 50vh;
		width: 100%;
		background-repeat: no-repeat;
		background-size: cover;
	}
	.btn-custom {
		background-color: orange;
	}
	.crd-ho:hover {
		background-color: #fcf7f7;
	}
</style>
</head>
<body  style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp" %>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">Ecommerce Management System</h2>
	</div>
	
	<%Connection conn = DBConnect.getConnection(); 
	  out.println(conn);%>
	
	<!-- Start Recent-->
	<div class="container">
		<h3 class="text-center">Recent</h3>
		<div class="row">
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-custom btn-sm ml-1"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500k</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-custom btn-sm ml-1">Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-custom btn-sm ml-1">Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-custom btn-sm ml-1">Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm mt-3">View All</a>
		</div>
	</div>
	<!-- End Recent-->
	<hr>
	<!-- Start New-->
	<div class="container">
		<h3 class="text-center">New</h3>
		<div class="row">
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-custom btn-sm ml-1">Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-custom btn-sm ml-1">Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-custom btn-sm ml-1">Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-custom btn-sm ml-1">Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm mt-3">View All</a>
		</div>
	</div>
	<!-- End New-->
	<hr>
	<!-- Start Old -->
	<div class="container">
		<h3 class="text-center">Old</h3>
		<div class="row">
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/product-01.jpg" style="width:100%; height:100%" class="img-thumblin">
						<p>Orange T-Shirt</p>
						<p>Female</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Detail</a>
							<a href="" class="btn btn-custom btn-sm ml-1">500.000</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm mt-3">View All</a>
		</div>
	</div>
	<!--End Old-->
	<%@include file="all_component/footer.jsp" %>
</body>
</html>