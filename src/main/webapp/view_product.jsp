<%@page import="com.entity.Products"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
	<%
	int pid = Integer.parseInt(request.getParameter("pid"));
	ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
	Products p = dao.getProductbyID(pid);
	%>
	<div class="container p-3" style="margin-top: 10px">
		<div class="row">
			<div class="col-md-6 text-center pt-2 pl-5 pr-5 pd-5 bg-white">
				<img src="img/<%=p.getPhotoName()%>" style="height:600px; width:400px;"/><br>
				<div style="margin-top:10px;">
					<h4>Product Name: <span class="text-success"><%=p.getProductName()%></span></h4>
					<h4>Gender: <span class="text-success"><%=p.getGender()%></span> </h4>
					<h4>Category: <span class="text-success"><%=p.getProductCategory()%></span></h4>
				</div>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=p.getProductName()%></h2>
				<%
				if("Old".equals(p.getProductCategory()))
				{%>
					<h5 class="text-primary">Contact To Shop</h5>
					<h5 class="text-primary"><i class="far fa-envelope"></i> Email: <%=p.getEmail()%></h5>
				<%}
				%>
				
				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
					<i class="fas fa-money-bill-wave fa-2x"></i>
					<p>Cash On Delivery</p></div>
					<div class="col-md-4 text-danger text-center p-2">
					<i class="fas fa-undo-alt fa-2x"></i><p>Return Available</p></div>
					<div class="col-md-4 text-danger text-center p-2">
					<i class="fas fa-truck-moving fa-2x"></i><p>Free Ship</p></div>				
				</div>
				<%
				if("Old".equals(p.getProductCategory()))
				{%>
					<div class="text-center p-3">
						<a href="index.jsp" class="btn btn-success">Continue Shopping</a>
						<a href="" class="btn btn-danger">200</a>
					</div>
				<%}else{
				%>
					<div class="text-center p-3">
						<a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add to Cart</a>
						<a href="" class="btn btn-danger">200</a>
					</div>
				<%} %>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp" %>
</body>
</html>