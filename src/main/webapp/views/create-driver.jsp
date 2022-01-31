<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "rencar.model.Driver" %>
<%@ page import = "rencar.model.Car" %>
<%@ page import = "rencar.model.CarModel" %>
<%@ page import = "rencar.model.Manufacturer" %>
<%@ page import = "rencar.DAO.CarDAO" %>
<%@ page import = "rencar.DAO.CarModelDAO" %>
<%@ page import = "rencar.DAO.ManufacturerDAO" %>
<%@ page import = "rencar.DAO.DriverDAO" %>
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
		<title>Add Driver | Car Rental System</title>
		<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class = "col col-sm-4 mt-4">
				<h4 class = "text-muted mt-2 mb-4 pb-1">Create New Driver</h4>
				<form class = "card card-light" method = "post" action = "create-driver">
  					<div class = "card-body">
  						
  						<div class="form-group">
    						<label for="exampleInputEmail1">First Name</label>
    						<input type="text" name = "firstname" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter First Name">
    						<small id="firstNameError" class="">eg. Raman</small>
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputEmail1">Last Name</label>
    						<input type="text" name = "lastname" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Last Name">
    						<small id="lastName" class="">eg. Joshi</small>
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputEmail1">License Unique ID</label>
    						<input type="text" name = "unique_license_number" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Unique ID">
    						<small id="emailHelp" class="">eg. 10XFGD5 (6 Digit unique number)</small>
  						</div>
  						<div class="form-group">
    						<label for="exampleInputEmail1">Check car with prices</label>
    						<select class = "form-control" name = "car_id">
    						<% List<Car> cars = CarDAO.readCar(); %>
    						<option>---SELECT---</option>
    						<%
    							for(Car car: cars){
    						%>
    							<option value = <%=car.getId()%> >
    								<%=CarModelDAO.readModelById(car.getModel_id())%>
    								|
    								<%=ManufacturerDAO.readManufacturerById(car.getManufacturer_id())%>
    							</option>
    						<%
    							}
    						%>	
    						</select>
    					</div>
  						<div class="form-group">
    						<label for="exampleInputModel">Account Status</label>
    						<select class = "form-control" name = "status">
    							<option>---SELECT---</option>
    							<option value = "1">Available</option>
    							<option value = "0">Unavailable</option>
    						</select>
  						</div>
  						<button type="submit" class="btn btn-success">Add Car</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>