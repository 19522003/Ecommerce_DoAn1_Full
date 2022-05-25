<%@page import="com.entity.Products"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Edit Products</title>
<%@ include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-body">
						<h4 class="text-center">Edit Products</h4>
						
						<%int id = Integer.parseInt(request.getParameter("id")); 
							ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
							Products p = dao.getProductbyID(id);
						%>
						<form action="../edit_products" method="post">
							<input type="hidden" name="id" value="<%=p.getProductID()%>">
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Product
									name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" required="required" name="name" value="<%=p.getProductName()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Gender
								</label> <input type="text" class="form-control"
									id="exampleInputEmail1" required="required" name="gender" value="<%=p.getGender()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Price</label>
								<input type="number" class="form-control"
									id="exampleInputEmail1" required="required" name="price" value="<%=p.getPrice()%>">
							</div>
							
							<div class="form-group">
								<label for="inputState" class="form-label">Product status</label> <select
									name="status" id="inputState" class="form-control">
									<%
									if ("Inactive".equals(p.getStatus())) {
									%>
										<option value="Active">Active</option>
										<option value="Inactive">Inactive</option>
									<%
									}else{
									%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<%
									}
									%>
								</select>
							</div>
							<button type="submit" class="btn btn-primary mt-2">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>