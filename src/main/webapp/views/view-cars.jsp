<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import ="rencar.model.Car"  %>
<%@page import ="rencar.DAO.CarDAO"  %>
<%@page import ="rencar.DAO.CarModelDAO" %>
<%@page import ="rencar.DAO.ManufacturerDAO"  %>
<%@page import ="java.util.List"  %>

<html>
	<head>
		<title>Cars | Rencar</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
		crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconneubect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Readex+Pro&display=swap" rel="stylesheet">
		<style>
			body{
  				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<div class="container mt-4">
			<div class = "row-md mt-4 mb-4">
				<h3 class = "font-weight-bold text-center">Registered Cars</h5>
			</div>
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/create-car" class="btn btn-success btn-md">Create New Car <i class="bi bi-person-plus-fill"></i></a>
			</div>
			<div class = "row-md justify-content-center mt-4">	
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class = "text-center">Car ID</th>
							<th class = "text-center">Model</th>
							<th class = "text-center">Manufacturer</th>
							<th class = "text-center">Rent</th>
							<th class = "text-center">Availability</th>
							<th class = "text-center">Actions</th>
						</tr>
					</thead>
					<tbody>
					<%
						List<Car> cars = CarDAO.readCar();
						for(Car car: cars){
					%>
						<tr>
							<td class = "text-center"><%=car.getId()%></td>
							<td class = "text-center"><%=CarModelDAO.readModelById(car.getModel_id())%></td>
							<td class = "text-center"><%=ManufacturerDAO.readManufacturerById(car.getManufacturer_id())%></td>
							<td class = "text-center"><%=car.getRent()%></td>
							<td class = "text-center">
								<%
									if(car.getStatus() == 1){
								%>
									<button class = "btn btn-success">Available</button>
								<% 									
									}
									else{
								%>
									<button class = "btn btn-danger">Unavailable</button>
								<%		
									}
								%>
							</td>
							<td class = "text-center"><a class = "btn btn-primary btn-md" href=<%="update-car?id="+car.getId()%>>Edit <i class="bi bi-pencil-square"></i></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a class = "btn btn-danger btn-md"
								href=<%="/rencar/delete-car?id="+car.getId()%>><i class="bi bi-person-dash-fill"></i> Delete</a></td>
						</tr>
					<%
						}
					%>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>