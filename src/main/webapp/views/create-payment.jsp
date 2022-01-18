<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "rencar.model.Manufacturer" %>
<%@ page import = "rencar.DAO.ManufacturerDAO" %>
<%@ page import = "java.util.List" %>
<!DOCTYPE html>
<html>	
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
		<link rel="stylesheet" 
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
		crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconneubect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Readex+Pro&display=swap" rel="stylesheet">
		<title>Payment | Car Rental System</title>
		<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<div class = "row row-md-12 justify-content-center mt-4">
			<div class = "col col-sm-4 mt-4">
				<h4 class = "text-muted mt-2 mb-4 pb-1">Renting Details</h4>
				<form class = "card card-light" method = "post" action = "create-payment">
  					<div class = "card-body">
  						<div class="form-group">
    						<label for="exampleInputManufacturer">Customer name</label>
    						<p class = "form-control">
    							<% %>
    						</p>
    					</div>
  						<div class="form-group">
    						<label for="exampleInputManufacturer">Customer email</label>
    						<p class = "form-control">
    							<% %>
    						</p>
    					</div>
    					<div class="form-group">
    						<label class = "text-weight-200" for="exampleInputManufacturer">Customer phone</label>
    						<p class = "form-control">
    							<% %>
    						</p>
    					</div>
  						<div class="form-group">
    						<label class = "text-weight-200" for="exampleInputManufacturer">City</label>
    						<p class = "form-control">
    							<% %>
    						</p>
    					</div>
  						<div class="form-group">
    						<label class = "text-weight-200" for="exampleInputManufacturer">Location</label>
    						<p class = "form-control">
    							<% %>
    						</p>
    					</div>
  						<div class="form-group">
    						<label class = "text-weight-200" for="exampleInputManufacturer">Amount</label>
    						<p class = "form-control">
    							<% %>
    							100000
    						</p>
    					</div>
  						<div class="form-group">
    						<label class = "text-weight-200" for="exampleInputManufacturer">Car Model</label>
    						<p class = "form-control">
    							<% %>
    						</p>
    					</div>			
  					</div>
			</div>
			<div class = "col col-sm-4 mt-4">
					<h4>Payment Details</h4>
					<div class = "card-body">
  						<div class="form-group">
    						<label for="exampleInputManufacturer">Mode of payment</label>
    						<select class = "form-control"  name = "payment_mode">
    							<option>--SELECT--</option>
    							<option value = "debit card">Debit Card</option>
    							<option value = "credit-card">Credit Card</option>
    						</select>
    					</div>
  						<div class="form-group">
    						<label for="exampleInputModel">Card Number</label>
    						<input type="text" name = "card_number" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp">
    						<small id="emailHelp" class="form-text text-muted">16 digit card number</small>
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputEmail1">Card Holder Name</label>
    						<input type="text" name = "card_holder_name" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp">
    						<small id="emailHelp" class="form-text text-muted">Name of the card owner</small>
  						</div>
  						<button type="submit" class="btn btn-success">Pay</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>