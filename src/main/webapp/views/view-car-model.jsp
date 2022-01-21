<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import ="rencar.model.CarModel"  %>
<%@page import ="rencar.DAO.CarModelDAO"  %>
<%@page import ="rencar.DAO.ManufacturerDAO"  %>
<%@page import ="java.util.List"  %>

<html>
	<head>
		<title>Car Models | Rencar</title>
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
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("email") == null){
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
	%>
	<body>
		<div class="container mt-4">
			<div class = "row-md mt-4 mb-4">
				<h3 class = "font-weight-bold text-center">Registered Car Models</h5>
			</div>
			<div class = "row-md mt-4 mb-4">
				<div class="container text-left">
					<a href="<%=request.getContextPath()%>/create-model" class="btn btn-success btn-md">Create Car Model</a>
				</div>
				<div class="container text-right mb-5 pb-3">
					<a href="#" class="btn btn-primary btn-md">
						<%=session.getAttribute("email")%>
					</a>
					<a href="<%=request.getContextPath()%>/logout" class="btn btn-danger btn-md">Logout <i class="bi bi-box-arrow-left"></i></a>
				</div>
			</div>
			<div class = "row-md justify-content-center mt-4">	
				<table class="table table-bordered">
					<thead class="thead-dark">
						<tr>
							<th class = "text-center">ID</th>
							<th class = "text-center">Name</th>
							<th class = "text-center">Manufacturer</th>
							<th class = "text-center">Actions</th>
						</tr>
					</thead>
					<tbody>
					<%
						List<CarModel> models = CarModelDAO.readCarModel();
						for(CarModel model: models){
					%>
						<tr>
							<td class = "text-center"><%=model.getId()%></td>
							<td class = "text-center"><%=model.getName()%></td>
							<td class = "text-center"><%=ManufacturerDAO.readManufacturerById(model.getManufacturer_id())%></td>
							<td class = "text-center"><a class = "btn btn-primary btn-md" href=<%="/rencar/update-car-model?id="+model.getId()%>>Edit <i class="bi bi-pencil-square"></i></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a class = "btn btn-danger btn-md"
								href=<%="/rencar/delete-car-model?id="+model.getId()%>><i class="bi bi-person-dash-fill"></i> Delete</a></td>
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