<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Products"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Products</title>
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
	/* toast */
	#toast {
		min-width: 300px;
		position: fixed;
		bottom: 30px;
		left: 50%;
		margin-left: -125px;
		background: #333;
		padding: 10px;
		color: white;
		text-align: center;
		z-index: 1;
		font-size: 18px;
		visibility: hidden;
		box-shadow: 0px 0px 100px #000;
	}

	#toast.display {
		visibility: visible;
		animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
	}

	@keyframes fadeIn {from { bottom:0;
		opacity: 0;
	}

	to {
		bottom: 30px;
		opacity: 1;
	}

	}
	@keyframes fadeOut {form { bottom:30px;
		opacity: 1;
	}

	to {
		bottom: 0;
		opacity: 0;
	}
	}

/* toast */
</style>
</head>
<body>
<%
	User u = (User)session.getAttribute("userobj");
%>
<c:if test="${not empty succCart}">
	<div id="toast">${succCart}</div>

		<script type="text/javascript">
			showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
		</script>
		<c:remove var="succCart" scope="session"/>
</c:if>
<%@include file="all_component/navbar.jsp" %>
	<div class="container-fluid">
		<div class="row p-5">
			<%
			ProductDAOImpl dao2 = new ProductDAOImpl(DBConnect.getConnection());
			List<Products> list2 = dao2.getAllNewProducts();
			for(Products p : list2){
			%>
			<div class="col-md-3">
				<div class= "card crd-ho mt-2">
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
							<a href="view_product.jsp?pid=<%=p.getProductID()%>" class="btn btn-success btn-sm ml-1">View Detail</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
			</div>
		</div>
	</body>
</html>