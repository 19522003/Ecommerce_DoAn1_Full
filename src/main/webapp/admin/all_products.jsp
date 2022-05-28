<%@page import="java.util.List"%>
<%@page import="com.entity.Products"%>
<%@page import="com.DAO.*"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All products</title>
<%@ include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h3 class="text-center">Hello Admin</h3>
	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg}</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg}</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Image</th>
				<th scope="col">Product name</th>
				<th scope="col">Gender</th>
				<th scope="col">Price</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list = dao.getAllBooks();
			for (Products p : list) {
			%>
			<tr>
				<td><%=p.getProductID()%></td>
				<td><img src="../img/<%=p.getPhotoName()%>"
					style="width: 50p; height: 50px"></td>
				<td><%=p.getProductName()%></td>
				<td><%=p.getGender()%></td>
				<td><%=p.getPrice()%></td>
				<td><%=p.getProductCategory()%></td>
				<td><%=p.getStatus()%></td>
				<td><a href="edit_products.jsp?id=<%=p.getProductID()%>"
					class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Edit</a>
					<a href="../delete_product?id=<%=p.getProductID()%>"
					class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>
						Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>