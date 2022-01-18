<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="rencar.DAO.ManufacturerDAO"%>
<%@ page import="rencar.model.Manufacturer"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<title>Add Car Model | Car Rental System</title>
		<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class = "col col-sm-4 mt-4">
				<form class = "card card-light" method = "post" action = "create-model">
  					<div class = "card-body">
  						<h5 class = "text-dark mb-4">Add new car model</h5>
  						<div class="form-group">
    						<label for="exampleManufacturer">Manufacturer</label>
    						<%
    							List<Manufacturer> manufacturers = ManufacturerDAO.readManufacturer();
    						%>
    						<select class = "form-control" name = "manufacturer_id">
    							<option value = "">--SELECT--</option>
    							<%
    								for(Manufacturer manufacturer: manufacturers){
    							%>	
    									<option value = <%=manufacturer.getId()%>>
    										<%=manufacturer.getName()%>
    									</option>
    							<% 
    								} 
    							%>
    						</select>
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputEmail1">Model Name</label>
    						<input type="text" name = "name" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter model name">
    						<small id="emailHelp" class="form-text text-muted">Example (Sumo, i10).</small>
  						</div>
  						<button type="submit" class="btn btn-success">Add Car Model</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>