
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class=“container” style="width:50%; height:50%" align="left";>
					<form action="EMpregDB.jsp" method="post">
					<div class="form-group">
							<label for="exampleInputEmail1">Employer ID</label> <input
								type="number" class="form-control" name="Employer ID" id="Employer ID"
								placeholder="Employer ID" required="required">
						</div>
					<div class="form-group">
							<label for="exampleInputEmail1">Company Name</label> <input
								type="text" class="form-control" name="Company name" id="Company name"
								placeholder="Company Name" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">First Name</label> <input
								type="text" class="form-control" name="firstName" id="firstName"
								placeholder="Enter First Name" required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Last Name</label> <input
								type="text" class="form-control" name="lastName" id="lastName"
								placeholder="Enter Last Name" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Address</label> <input
								type="text" class="form-control" name="address" id="address"
								placeholder="Enter Address" required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Phone Number</label> <input
								type="number" class="form-control" name="phoneNumber"
								id="phoneNumber" placeholder="Enter Phone Number"
								required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Company Email</label> <input
								type="text" class="form-control" name="CompanyEmail"
								id="CompanyEmail" placeholder="Enter Email Address"
								required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" name="Password"
								id="Password" placeholder="Enter Password" required="required">
						</div>

						<button type="submit" style="width: 100%; font-size: 1.1em;"
							class="btn btn-large btn btn-success btn-lg btn-block">
							<b>Sign Up</b>
						</button>

				
					</form>
			</div>
</body>
</html>
