<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Products"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Products</title>
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

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<div class="container-fluid">
		<div class="row p-5">
			<%
			ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list = dao.getAllRecentProducts();
			for (Products p : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="product/<%=p.getPhotoName()%>"
							style="width: 100%; height: 100%;" class="img-thumblin">
						<p><%=p.getProductName()%></p>
						<p><%=p.getGender()%></p>
						<p style="color: orange"><%=p.getPrice()%></p>
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
							<a href="login.jsp" class="btn btn-custom btn-sm ml-1"><i
								class="fas fa-cart-plus"></i> Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?pid=<%=p.getProductID()%>&&uid=<%=u.getId()%>"
								class="btn btn-custom btn-sm ml-1"><i
								class="fas fa-cart-plus"></i> Add Cart</a>
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
	</div>
	<%@include file="all_component/footer.jsp" %>
</body>
</html>