<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Address</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Add Address</h4>
						<form action="">
							<div class="form-row">
								<div class="form-group col-md-6"
									style="width: calc(50% - 3px); display: inline-block;">
									<label for="inputEmail">Address</label> <input type="text"
										class="form-control" placeholder="Address" id="inputEmail">
								</div>
								<div class="form-group col-md-6"
									style="width: calc(50% - 3px); display: inline-block;">
									<label for="inputEmail">Landmark</label> <input type="text"
										class="form-control" placeholder="Landmark" id="inputEmail">
								</div>
							</div>
							<div class="form-row mt-2">
								<div class="form-group col-md-6"
									style="width: calc(50% - 25px); display: inline-block;">
									<label for="inputEmail">City</label> <input type="text"
										class="form-control" placeholder="City" id="inputEmail">
								</div>
								<div class="form-group col-md-3"
									style="width: calc(50% - 100px); display: inline-block;">
									<label for="inputPassword">State</label> <input type="email"
										class="form-control" placeholder="State" id="inputPassword">
								</div>
								<div class="form-group col-md-3"
									style="width: calc(50% - 100px); display: inline-block;">
									<label for="inputPassword">Pin</label> <input type="email"
										class="form-control" placeholder="Pin" id="inputPassword">
								</div>
							</div>
							<div class="text-center">
								<button class="btn btn-warning text-white">Add Address</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>