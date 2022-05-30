<%@page import="com.entity.Product_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ProductOrderDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Orders</title>
<%@ include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
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
				<th scope="col">Gender</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>
			<%
			ProductOrderDAOImpl dao = new ProductOrderDAOImpl(DBConnect.getConnection());
			List<Product_Order> plist = dao.getProduct();
			for (Product_Order p : plist) {
			%>
			<tr>
				<th scope="row"><%=p.getOrderId()%></th>
				<td><%=p.getUserName()%></td>
				<td><%=p.getEmail()%></td>
				<td><%=p.getFulladd()%></td>
				<td><%=p.getPhone()%></td>
				<td><%=p.getProductName()%></td>
				<td><%=p.getGender()%></td>
				<td><%=p.getPrice()%></td>
				<td><%=p.getPaymentType()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div class="container-fluid text-center text-white p-3"
		style="background-color: #0000a0; margin-top: 33rem">
		<h5>©Design and Develop by ThanhPhat_TanViet</h5>
	</div>
</body>
</html>