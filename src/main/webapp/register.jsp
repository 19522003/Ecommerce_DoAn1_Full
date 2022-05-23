<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecommerce: Register</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<div class="container p-5">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
					<h4 class="text-center">Registration Page</h4>
					<form>
						<div class="form-group">
    						<label for="exampleInputEmail1">Name</label>
    						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
 						</div>
 						<div class="form-group">
    						<label for="exampleInputEmail1">Phone Number</label>
    						<input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
 						</div>
  						<div class="form-group">
    						<label for="exampleInputEmail1">Email address</label>
    						<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ex: abc@gmail.com" required="required">
    						<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
 						</div>
  						<div class="form-group">
    						<label for="exampleInputPassword1">Password</label>
    						<input type="password" class="form-control" id="exampleInputPassword1" required="required">
						</div>
  						<div class="form-check">
    						<input type="checkbox" class="form-check-input" id="exampleCheck1" required="required">
    						<label class="form-check-label" for="exampleCheck1">Check me out</label>
  						</div>
  						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid text-center text-white p-3" style="background-color: #0000a0; margin-top: 11rem">
	<h5>©Design and Develop by ThanhPhat_TanViet</h5>
</div>
</body>
</html>