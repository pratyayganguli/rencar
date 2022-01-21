<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import = "javax.servlet.http.HttpServletRequest" %> 
<%@ page import = "rencar.model.Manufacturer" %> 
<%@ page import = "rencar.DAO.ManufacturerDAO" %>
<%@ page import = "rencar.DAO.CarModelDAO" %>  
<%@ page import = "java.util.List" %>

<%
	if(session.getAttribute("email") == null){
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}
	
	String ID = "";
	if(request.getParameter("id")!= null){
		ID 		= request.getParameter("id");	
	}
	int id 			= Integer.parseInt(ID);
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
		<title>Update Car Model | Rencar</title>
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
		<div class = "row-md mt-4 mb-4">
			<div class="container text-right">
				<a href="#" class="btn btn-primary btn-md">
					<%=session.getAttribute("email")%>
				</a>
				<a href="<%=request.getContextPath()%>/logout" class="btn btn-danger btn-md">Logout <i class="bi bi-box-arrow-left"></i></a>
			</div>
		</div>
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class = "col col-sm-4 mt-4">
				<h4 class = "text-center font-weight-bold mb-3 pb-3">Update Car Model</h4>
				<form class = "card card-light bg-light mt-2" method = "post" action = "update-car-model">
  					<div class = "card-body">
  						<input type = "hidden" name = "id" value= <%=id%>>
  						<div class="form-group">
  							<label for="exampleInputFirstname">Car Manufacturer</label>
    						<%
    							List<Manufacturer> manufacturers = ManufacturerDAO.readManufacturer();
    						%>
    						<select class = "form-control form-control-md" name = "manufacturer_id">
    							<option value = <%= CarModelDAO.readManufacturerById(id)%>>
    								<%=ManufacturerDAO.readManufacturerById(CarModelDAO.readManufacturerById(id))%>
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
    						<label for="exampleInputFirstname">Model name</label>
    						<input type="text" name = "name" value = <%=CarModelDAO.readModelById(id)%> class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" >
    						<small id="emailHelp" class="form-text text-muted">Your model name</small>
    					</div>
  						
  						<div class="form-group">
    						<%
    							int status = CarModelDAO.getStatus(id);
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
    						<div class = "row justify-content-center mt-3">
    							<input type="submit" class="btn btn-success " value = "Edit details">
    						</div>
  						</div>
				</form>
			</div>
		</div>
	</body>
</html>