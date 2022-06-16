<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecommerce: Index</title>
<%@include file="all_component/allCss.jsp"%>


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

.crd-ho img:hover {
	transform: scale(1.1);
	transition: transform 0.8s ease;;
}

.carousel-item img {
	border-left: 1px solid black;
	border-right: 1px solid black;
	border-bottom: 1px solid black;
}
</style>

</head>
<body style="background-color: white;">
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_component/navbar.jsp"%>
	<div id="demo" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner text-center">
			<div class="carousel-item active">
				<img src="img/slide1.png" alt="Slide1">
				<div class="carousel-caption">
					<h3>True style never dies.</h3>
					<p>We promise comfort for our customer</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/slide2.png" alt="Slide2">
				<div class="carousel-caption">
					<h3 style="color: black">The ultimate clothing to see the
						world in.</h3>
					<p style="color: #e45bb0">Matching style and class with luxury
						and comfort</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/slide3.png" alt="Slide3">
				<div class="carousel-caption">
					<h3>Fashion as unique as you are.</h3>
					<p>We stay on top so you can be on top!</p>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>

	</div>



	<!-- Start Recent-->
	<div class="container">
		<h3 class="text-center mt-5 mb-4" style="color: #30373b">Recent</h3>
		<div class="row">
			<%
			ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list = dao.getRecentProducts();
			for (Products p : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/<%=p.getPhotoName()%>"
							style="width: 100%; height: 100%;" class="img-thumblin">
						<p><%=p.getProductName()%></p>
						<p><%=p.getGender()%></p>
						<p style="color: #e4611f"><%=p.getPrice()%></p>
						<%
						if (p.getProductCategory().equals("Old")) {
						%>
						<div class="row" style="justify-content: center">
							<a href="view_product.jsp?pid=<%=p.getProductID()%>"
								class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
						<%
						} else {
						%>
						<!-- <p><%=p.getProductCategory()%></p> -->

						<div class="row" style="justify-content: center">
							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-custom btn-sm ml-1"
								style="color: white"><i class="fas fa-cart-plus"
								style="color: white"></i> Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?pid=<%=p.getProductID()%>&&uid=<%=u.getId()%>"
								class="btn btn-custom btn-sm ml-1" style="color: white"><i
								class="fas fa-cart-plus" style="color: white"></i> Add Cart</a>
							<%
							}
							%>

							<a href="view_product.jsp?pid=<%=p.getProductID()%>"
								class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
						<%
						}
						%>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-1">
			<a href="all_recent_products.jsp" class="btn btn-danger btn-sm mt-3">View
				All</a>
		</div>
	</div>
	<!-- End Recent-->
	<hr>
	<!-- Start New-->
	<div class="container">
		<h3 class="text-center mt-5 mb-4" style="color: #30373b">New</h3>
		<div class="row">
			<%
			ProductDAOImpl dao2 = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list2 = dao2.getNewProducts();
			for (Products p : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/<%=p.getPhotoName()%>"
							style="width: 100%; height: 100%;" class="img-thumblin">
						<p><%=p.getProductName()%></p>
						<p><%=p.getGender()%></p>
						<!-- <p><%=p.getProductCategory()%></p> -->
						<p style="color: #e4611f"><%=p.getPrice()%></p>
						<div class="row" style="justify-content: center">
							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-custom btn-sm ml-1"
								style="color: white"><i class="fas fa-cart-plus"
								style="color: white"></i> Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?pid=<%=p.getProductID()%>&&uid=<%=u.getId()%>"
								class="btn btn-custom btn-sm ml-1" style="color: white"><i
								class="fas fa-cart-plus" style="color: white"></i> Add Cart</a>
							<%
							}
							%>
							<a href="view_product.jsp?pid=<%=p.getProductID()%>"
								class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-1">
			<a href="all_new_products.jsp" class="btn btn-danger btn-sm mt-3">View
				All</a>
		</div>
	</div>
	<!-- End New-->
	<hr>
	<!-- Start Old -->
	<div class="container">
		<h3 class="text-center mt-5 mb-4" style="color: #30373b">Old</h3>
		<div class="row">
			<%
			ProductDAOImpl dao3 = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list3 = dao3.getOldProducts();
			for (Products p : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="product/<%=p.getPhotoName()%>"
							style="width: 100%; height: 100%;" class="img-thumblin">
						<p><%=p.getProductName()%></p>
						<p><%=p.getGender()%></p>
						<p style="color: #e4611f"><%=p.getPrice()%></p>
						<%
						if (p.getProductCategory().equals("Old")) {
						%>
						<div class="row" style="justify-content: center">
							<a href="view_product.jsp?pid=<%=p.getProductID()%>"
								class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
						<%
						} else {
						%>
						<!-- <p><%=p.getProductCategory()%></p> -->

						<div class="row" style="justify-content: center">
							<a href="" class="btn btn-custom btn-sm ml-1"><i
								class="fas fa-cart-plus"></i> Add Cart</a> <a
								href="view_product.jsp?pid=<%=p.getProductID()%>"
								class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
						<%
						}
						%>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-1">
			<a href="all_old_products.jsp" class="btn btn-danger btn-sm mt-3">View
				All</a>
		</div>
	</div>

	<!--End Old-->

	<!-- ChatBot -->
	<!--<div class="chatbot">
		<div class="chat-icon">
			<p>Talk with us	<i class="fas fa-comment"></i></p>
		</div>
		
		<div class="chat-box">				
			<div class="conv-form-wrapper">
				<form action="" method="GET" class="hidden">
				<input type="text" name="name" data-conv-question="Hello! Please tell me your name!">	
					<select name="category" data-conv-question="How can I help you?">
						<option value="shoppingAdvice">Shopping advice</option>
						<option value="complaint">Complaint</option>
						<option value="contactToSupporter">Contact to supporter</option>
					</select>
					
					<div data-conv-fork="category">
						<div data-conv-case="shoppingAdvice">	
						 	<select name="advice" data-conv-question="Which one do you want to buy?">
								<option value="tshirt">T-Shirt</option>
								<option value="shirt">Shirt</option>
								<option value="sneaker">Sneaker</option>
							</select>
							<div data-conv-fork="category">
								<div data-conv-case="shoppingAdvice">	
								 	<select name="advice" data-conv-question="Which one do you want to buy?">
										<option value="tshirt">T-Shirt</option>
										<option value="shirt">Shirt</option>
										<option value="sneaker">Sneaker</option>
									</select>
								</div>
						</div>
						<div data-conv-case="complaint">
							<select name="thought" data-conv-question="You want to report">
								<option value="orderService">Order service</option>
								<option value="shipperBehavior">Shipper behavior</option>
							</select>
						</div>
						<div data-conv-case="contactToSupporter">
							<input type="text" name="name" data-conv-question="Alright! First, tell me your full name, please.|Okay! Please, tell me your name first.">
							<input type="text" name="name" data-conv-question="Alright! First, tell me your full name, please.|Okay! Please, tell me your name first.">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>  -->
	<!-- End ChatBot -->

	<%@include file="all_component/footer.jsp"%>
	<%@include file="all_component/scroll_top.jsp"%>
</body>
</html>