<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="rencar.model.State"  %>
<%@page import ="rencar.DAO.StateDAO"  %>
<%@page import ="rencar.model.City"  %>
<%@page import ="rencar.DAO.CityDAO"  %>
<%@page import ="rencar.DAO.LocationDAO"  %>
<%@page import ="rencar.model.Location"  %>
<%@page import ="java.util.List"  %>
  
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
	<title>Dashboard | Rencar</title>
	<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
	</style>
</head>
	<% 
		if(request.getParameter("email") == null){
			response.sendRedirect("forbidden.jsp");
		}
	%>
	<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
  			<a class="navbar-brand" href="#"><span class = "font-weight-bold text-danger">Rencar</span></a>
  			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
   			<ul class="navbar-nav mr-auto">
      			<li class="nav-item active">
        			<a class="nav-link" href="../check-booking">Bookings <span class="sr-only">(current)</span></a>
      			</li>
      			<li class="nav-item active">
        			<a class="nav-link" href="#">Rent Your own car</a>
      			</li>
      			<li class="nav-item dropdown">
        			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          				Cities
        			</a>
        			<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          				<a class="dropdown-item" href="#">Kolkata</a>
          				<a class="dropdown-item" href="#">Delhi</a>	
          				<a class="dropdown-item" href="#">Pune</a>
          				<a class="dropdown-item" href="#">Mumbai</a>
          				<a class="dropdown-item" href="#">Chennai</a>
        			</div>
      			</li>
      			<li class="nav-item">
        			<a class="nav-link disabled" href="#">Disabled</a>
      			</li>
    		</ul>
    		
    		<form class="form-inline my-2 my-lg-0">
      			<ul class = "navbar-nav mr-auto">
      				<li class="nav-item active">
        				<a class="nav-link" href="/rencar/login">
        					<%
        						if(request.getParameter("email")!= null){
        							String email = request.getParameter("email");
        					%>
        							<%=request.getParameter("email")%>
        					<%
        						}
        					%>
        				</a>
      				</li>
      				<li class="nav-item active">
        				<a class="btn bg-danger text-light" href="/rencar/logout">Log out</a>
      				</li>
      			</ul>
    		</form>
  			</div>
		</nav>
		<div class = "container mb-4">	
			<div class = "row justify-content-center mt-3">
				<div class = "col-md-6 mt-3 justify-content-center">
					<div class = "card bg-light">
						<div class = "card-body">
							<div class = "row justify-content-center">
								<a class = "btn btn-secondary mr-2" href = "../create-booking">Create a booking</a>
								<a class = "btn btn-primary" href = "" >Explore range of cars</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class = "row justify-content-center mt-3">
				<div class = "col-md-6 mt-3">
					<div class = "card bg-dark">
						<div class = "card-body">
							<h4 class = "text-center text-light font-weight-bold">Book for a ride in less than a minute</h4>
						</div>
					</div>
				</div>
			</div>
			<div class = "row justify-content-center mt-3">
				<div class = "col-md-6 mt-3">
					<div class = "card bg-success">
						<div class = "card-body">
							<h3 class = "text-center text-light font-weight-bold">Choose Your Pickup City</h3>
							<p class = "text-center text-light">Currently we operate in North East India, We are expanding soon</p>	
						</div>
					</div>
				</div>
			</div>
			<div class = "row justify-content-center mt-3">
				<div class = "col-md-6 mt-3">
					<div class = "card bg-primary">
						<div class = "card-body">
							<h4 class = "text-center text-light font-weight-bold">Choose Your Driver or Drive free</h4>
							<p class = "text-center text-light">Currently we operate in North East India, We are expanding soon</p>	
						</div>
					</div>
				</div>
			</div>
			<div class = "row justify-content-center mt-3">
				<div class = "col-md-6 mt-3">
					<div class = "card bg-danger">
						<div class = "card-body justify-content-center">
							<h4 class = "text-center text-light font-weight-bold">Your first 4 KMs in on us</h4>
							<div class = "row justify-content-center">
								<a class = "btn btn-sm btn-light" href = "../create-booking?email="+<%=request.getParameter("email")%>>Book Your Ride Now</a>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>