<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "rencar.model.Manufacturer" %>
<%@ page import = "rencar.DAO.ManufacturerDAO" %>
<%@ page import = "rencar.model.CarModel" %>
<%@ page import = "rencar.DAO.CarModelDAO" %>
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
		<title>Add Car | Car Rental System</title>
		<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class = "col col-sm-4 mt-4">
				<h4 class = "text-muted mt-2 mb-4 pb-1">Create Car Availability</h4>
				<form class = "card card-light" method = "post" action = "create-car">
  					<div class = "card-body">
  						<div class="form-group">
    						<label for="exampleInputManufacturer">Manufacturer</label>
    						<select class = "form-control"  name = "manufacturer_id">
    							<% List<Manufacturer> manufacturers = ManufacturerDAO.readManufacturer(); %>
    								<option>---SELECT---</option>
    							<% 
    								for(Manufacturer manufacturer: manufacturers){
    							%>	
    								<option value = <%=manufacturer.getId()%> >
    									<%=manufacturer.getName()%>
    								</option>
    							<%
    								}
    							%>	
    						
    						</select>
    					</div>
  						<div class="form-group">
    						<label for="exampleInputModel">Car Model</label>
    						<select class = "form-control" name = "model_id">
    							<% List<CarModel> models = CarModelDAO.readCarModel(); %>
    							<option>---SELECT---</option>
    							<%
    								for(CarModel model: models){
    							%>
    								<option value = <%=model.getId()%> >
    									<%=model.getName()%>
    								</option>
    							<%
    								}
    							%>	
    						</select>
  						</div>
  						<div class="form-group">
    						<label for="exampleInputModel">Car Availability</label>
    						<select class = "form-control" name = "status">
    							<option>---SELECT---</option>
    							<option value = "1">Available</option>
    							<option value = "0">Unavailable</option>
    						</select>
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputEmail1">Rent/Day</label>
    						<input type="text" name = "rent" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter rent">
    						<small id="emailHelp" class="form-text text-muted">Not more than 10,000</small>
  						</div>
  						
  						<button type="submit" class="btn btn-success">Add Car</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>