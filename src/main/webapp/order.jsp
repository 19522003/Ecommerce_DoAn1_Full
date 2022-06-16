<%@page import="com.entity.Product_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ProductOrderDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecommerce: Orders</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<div class="container p-1">
		<h3 class="text-center text-primary">Your Order</h3>
		<table class="table table-striped mt-5">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Order Id</th>
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
				User u = (User) session.getAttribute("userobj");
				ProductOrderDAOImpl dao = new ProductOrderDAOImpl(DBConnect.getConnection());
				List<Product_Order> plist = dao.getProduct(u.getEmail());
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
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>