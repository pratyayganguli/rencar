<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import = "javax.servlet.http.HttpServletRequest" %> 
<%@ page import = "rencar.model.Car" %> 
<%@ page import = "rencar.DAO.CarDAO" %> 
<%@ page import = "rencar.model.Manufacturer" %> 
<%@ page import = "rencar.DAO.ManufacturerDAO" %> 
<%@ page import = "rencar.model.CarModel" %> 
<%@ page import = "rencar.DAO.CarModelDAO" %> 
<%@ page import = "java.util.List" %>
<%
	String ID = "";
	if(request.getParameter("id") != null){
		ID 		= request.getParameter("id");	
	}
	int id 			= Integer.parseInt(ID);
	String rent = CarDAO.getRent(id);
%>

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
		<title>Update Car Details | Rencar</title>
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
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class="container text-right">
				<a href="" class="btn btn-primary btn-md">
					<%=session.getAttribute("email")%>
				</a>
				<a href="<%=request.getContextPath()%>/logout" class="btn btn-danger btn-md">Logout <i class="bi bi-box-arrow-left"></i></a>
			</div>
			<div class = "col col-sm-4 mt-4">
				<h4 class = "font-weight-bold">Update Car details</h4>
				<p class = "text-muted">Make sure a valid admin is logged in</p>
				<form class = "card card-light bg-light" method = "post" action = "update-car">
  					<div class = "card-body">
  						<input type = "hidden" name = "id" value= <%=id%>>
  						<label for="exampleInputFirstname">Manufacturer</label>
  						<div class="form-group">
    						<%
    							List<Manufacturer> manufacturers = ManufacturerDAO.readManufacturer();
    						%>
    						<select class = "form-control form-control-md" name = "manufacturer_id">
    							<option value = <%=CarDAO.getManufacturerId(id)%>>
    								<%=ManufacturerDAO.readManufacturerById(CarDAO.getManufacturerId(id))%>
    							</option>
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
  							<label for="exampleInputFirstname">Model</label>
    						<%
    							List<CarModel> models = CarModelDAO.readCarModel();
    						%>
    						<select class = "form-control form-control-md" name = "model_id">
    							<option value = <%=CarDAO.getModelId(id)%>>
    								<%=CarModelDAO.readModelById(CarDAO.getModelId(id))%>
    							</option>
    							<%
    								for(CarModel model: models){
    							%>	
    									<option value = <%=model.getId()%>>
    										<%=model.getName()%>
    									</option>
    							<% 
    								} 
    							%>
    						</select>
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputFirstname">Rent</label>
    						<input type="text" name = "rent" value = <%=rent%> class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" >
    						<small id="emailHelp" class="form-text text-muted">Your car rent per day</small>
    					</div>
  						<div class="form-group">
    						<%
    							int status = CarDAO.getStatus(id);
    						%>
    						<select class = "form-control form-control-md" name = "status">
    							<%
    								if(status == 1){	
    							%>	
    									<option value = "1">Available</option>
    									<option value = "0">Unavailable</option>
    							<% 
    								}
    								else{
    							%>
    									<option value = "0">Unavailable</option>
    									<option value = "1">Available</option>
    							<%
    								}
    							%>
    						</select>
  						</div>
  						</div class = "form-group">
  							<input type="submit" class="btn btn-success" value = "Edit details">
						</div>
				</form>
			</div>
		</div>
	</body>
</html>