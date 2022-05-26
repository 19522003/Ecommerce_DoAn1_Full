<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.List" %>
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
	
	<%
		User u = (User)session.getAttribute("userobj");
	%>
	<%@include file="all_component/navbar.jsp" %>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">Ecommerce Management System</h2>
	</div>
	
	
	
	<!-- Start Recent-->
	<div class="container">
		<h3 class="text-center">Recent</h3>
		<div class="row">
			<%
			ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list = dao.getRecentProducts();
			for(Products p : list){
			%>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/<%=p.getPhotoName()%>" style="width:100%; height:100%;" class="img-thumblin">
						<p><%=p.getProductName()%></p>
						<p><%=p.getGender()%></p>
						<p style="color: orange"><%=p.getPrice()%></p>
						<%if(p.getProductCategory().equals("Old")){%>
						<div class="row" style="justify-content: center">
							<a href="view_product.jsp?pid=<%=p.getProductID()%>" class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
						<%} else {%>
						<!-- <p><%=p.getProductCategory()%></p> -->
						
						<div class="row" style="justify-content: center">
							<%if(u==null) {%>
								<a href="login.jsp" class="btn btn-custom btn-sm ml-1"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<%}else{%>
								<a href="cart?pid=<%=p.getProductID()%>&&uid=<%=u.getId()%>" class="btn btn-custom btn-sm ml-1"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<%}%>
							
							<a href="view_product.jsp?pid=<%=p.getProductID()%>" class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
						<%}%>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-1">
			<a href="all_recent_products.jsp" class="btn btn-danger btn-sm mt-3">View All</a>
		</div>
	</div>
	<!-- End Recent-->
	<hr>
	<!-- Start New-->
	<div class="container">
		<h3 class="text-center">New</h3>
		<div class="row">	
			<%
			ProductDAOImpl dao2 = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list2 = dao2.getNewProducts();
			for(Products p : list2){
			%>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/<%=p.getPhotoName()%>" style="width:100%; height:100%;" class="img-thumblin">
						<p><%=p.getProductName()%></p>
						<p><%=p.getGender()%></p>
						<!-- <p><%=p.getProductCategory()%></p> -->
						<p style="color: orange"><%=p.getPrice()%></p>
						<div class="row" style="justify-content: center">
						<%if(u==null) {%>
							<a href="login.jsp" class="btn btn-custom btn-sm ml-1"><i class="fas fa-cart-plus"></i> Add Cart</a>
						<%}else{%>
							<a href="cart?pid=<%=p.getProductID()%>&&uid=<%=u.getId()%>" class="btn btn-custom btn-sm ml-1"><i class="fas fa-cart-plus"></i> Add Cart</a>
						<%}%>
							<a href="view_product.jsp?pid=<%=p.getProductID()%>"class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>	
		</div>
		<div class="text-center mt-1">
			<a href="all_new_products.jsp" class="btn btn-danger btn-sm mt-3">View All</a>
		</div>
	</div>
	<!-- End New-->
	<hr>
	<!-- Start Old -->
	<div class="container">
		<h3 class="text-center">Old</h3>
		<div class="row">	
			<%
			ProductDAOImpl dao3 = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list3 = dao3.getOldProducts();
			for(Products p : list3){
			%>
			<div class="col-md-3">
				<div class= "card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/<%=p.getPhotoName()%>" style="width:100%; height:100%;" class="img-thumblin">
						<p><%=p.getProductName()%></p>
						<p><%=p.getGender()%></p>
						<p style="color: orange"><%=p.getPrice()%></p>
						<%if(p.getProductCategory().equals("Old")){%>
						<div class="row" style="justify-content: center">
							<a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
						<%} else {%>
						<!-- <p><%=p.getProductCategory()%></p> -->
						
						<div class="row" style="justify-content: center">
							<a href="" class="btn btn-custom btn-sm ml-1"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="view_product.jsp?pid=<%=p.getProductID()%>" class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
						<%}%>
					</div>
				</div>
			</div>
			<%
			}
			%>	
		</div>
		<div class="text-center mt-1">
			<a href="all_old_products.jsp" class="btn btn-danger btn-sm mt-3">View All</a>
		</div>
	</div>
	<!--End Old-->
	<%@include file="all_component/footer.jsp" %>
</body>
</html>