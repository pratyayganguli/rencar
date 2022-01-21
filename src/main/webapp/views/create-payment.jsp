<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "rencar.model.Manufacturer" %>
<%@ page import = "rencar.DAO.ManufacturerDAO" %>
<%@ page import = "rencar.DAO.PaymentDAO" %>
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
	<% 
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("user") == null){
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
	%>
	<body>
		<div class = "row-md mt-4 mb-4">
				<div class="container text-right mb-5 pb-3">
					<a href="#" class="btn btn-primary btn-md">
						<%=session.getAttribute("user")%>
					</a>
					<a href="<%=request.getContextPath()%>/logout" class="btn btn-danger btn-md">Logout <i class="bi bi-box-arrow-left"></i></a>
				</div>
		</div>
		<div class = "row row-md-8 justify-content-center mt-4">
			<div class = "col col-md-6 mt-4">
				<form class = "card card-light bg-light pt-3" method = "post" action = "create-payment">
					<h4 class = "text-center font-weight-bold">Payment Details</h4>
					<div class = "card-body">
  						<div class="form-group">
    						<p class = "font-weight-bold"> Total Billed Amount </p>
    						<label>
    							<%=PaymentDAO.calcPaymentAmount(Integer.parseInt(request.getParameter("booking_id")))%>
    							<input type = "hidden" name = "booking_id" id = "booking_id" value = <%=request.getParameter("booking_id")%>>
    							<input type = "hidden" name = "amount" id = "amount" value = <%=PaymentDAO.calcPaymentAmount(Integer.parseInt(request.getParameter("booking_id")))%>>
    						</label>
    					</div>
  						
  						<div class="form-group">
    						<label for="exampleInputManufacturer">Mode of payment</label>
    						<select class = "form-control"  name = "mode_of_payment">
    							<option>--SELECT--</option>
    							<option value = "debit card">Debit Card</option>
    							<option value = "credit card">Credit Card</option>
    						</select>
    					</div>
  						<div class="form-group">
    						<label for="exampleInputModel">Card Number</label>
    						<input type="text" name = "card_number" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp">
    						<small id="emailHelp" class="form-text text-muted">16 digit card number</small>
  						</div>
  						
  						<button type="submit" class="btn btn-success">Pay</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>