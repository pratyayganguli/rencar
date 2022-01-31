<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
		<link rel="stylesheet" 
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
		crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconneubect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Readex+Pro&display=swap" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <title>Admin Panel | Rencar</title>
    <style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
	</style>
  </head>
  <%
  	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	if(session.getAttribute("email") == null){
  		RequestDispatcher dispatcher = request.getRequestDispatcher("views/login.jsp");
  		dispatcher.forward(request, response);
  	}
  %>
  <body>		
    	<div class = "row justify-content-center pt-2 mb-4 pb-2 bg-dark">
    		<div class = "col-sm-1">
    			<a href = "/rencar/view-drivers"><p class = "text-light text-center font-weight-bold">Driver</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/view-cities"><p class = "text-light text-center font-weight-bold">Cities</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/view-cars"><p class = "text-light text-center font-weight-bold">Cars</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/view-manufacturers"><p class = "text-light text-center font-weight-bold">Manufacturers</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/view-car-models"><p class = "text-light text-center font-weight-bold">Car Model</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/view-admins"><p class = "text-light text-center font-weight-bold">Administrators</p></a>
    		</div>
    		<div class = "row justify-content-end">
    			<div class = "col-sm-1 justify-content-end">
    				<a class = "btn btn-sm btn-danger mt-0" href = "/rencar/logout">Logout</a>
    			</div>
    		</div>		
    	</div>
    	<div class = "row justify-content-center mt-4">
    		<div class = "col-md-4 justify-content-center">
    			<div class = "card bg-warning">
    				<div class = "card-body">
    					<h3 class = "card-title text-dark mb-3">Data Analytics</h3>
    					<p class = "card-subtitle text-dark"> 
    						Mordern business tools that helps us in targeting audience analyzing information
    						and processing them for a better experience. 
    					</p>
    					<a class = "btn btn-danger mt-2" href = "/rencar/analyst-login"><span class = "text-light font-weight-bold">Login as an Analyst</span></a>
    					<a class = "btn btn-light mt-2" href = "/rencar/create-user"><span class = "text-dark font-weight-bold">Dashboard</span></a>
    				</div>
    			</div>
    		</div>
    	</div>
    	
    	<div class = "row justify-content-center mt-4">
    		<div class = "col-md-4 justify-content-center">
    			<div class = "card bg-dark">
    				<div class = "card-body">
    					<h4 class = "card-title text-light mb-3">Active users</h4>
    					<p class = "card-subtitle text-light"> We have over 1000 active users to check their information and help with
    					the support click here</p>
    					<a class = "btn btn-light mt-2" href = "/rencar/view-users"><span class = "text-dark font-weight-bold">Users</span></a>
    					<a class = "btn btn-light mt-2" href = "/rencar/create-user"><span class = "text-dark font-weight-bold">Create New User</span></a>
    				</div>
    			</div>
    		</div>
    	</div>
    	
    	<div class = "row justify-content-center mt-3">
    		<div class = "col-md-4 justify-content-center">
    			<div class = "card bg-light">
    				<div class = "card-body">
    					<h4 class = "card-title text-dark mb-3">Car Models</h4>
    					<p class = "card-subtitle text-dark"> We have over active vehicles to meet with
    					the demand</p><a class = "btn btn-dark mt-2" href = "/rencar/view-manufacturers"><span class = "text-light font-weight-bold">View Car Brands</span></a>	
    					<a class = "btn btn-dark mt-2" href = "/rencar/view-car-models"><span class = "text-light font-weight-bold">View Car Models</span></a>
    					<a class = "btn btn-dark mt-2" href = "/rencar/view-cars"><span class = "text-light font-weight-bold">Check Model Availability</span></a>
    				</div>
    			</div>
    		</div>
    	</div>
    	
    	<div class = "row justify-content-center mt-3">
    		<div class = "col-md-4 justify-content-center">
    			<div class = "card bg-success">
    				<div class = "card-body">
    					<h4 class = "card-title text-light mb-3">Admins</h4>
    					<p class = "card-subtitle text-light">Know your peers</p>
    					<a class = "btn btn-light mt-2" href = "/rencar/view-admins"><span class = "text-dark font-weight-bold">View Admins</span></a>
    					<a class = "btn btn-light mt-2" href = "/rencar/create-admin"><span class = "text-dark font-weight-bold">Add an Admin</span></a>
    				</div>
    			</div>
    		</div>
    	</div>
    	
    	<div class = "row justify-content-center mt-3">
    		<div class = "col-md-4 justify-content-center">
    			<div class = "card bg-primary">
    				<div class = "card-body">
    					<h4 class = "card-title text-light mb-3">Manage Drivers</h4>
    					<p class = "card-subtitle text-light">Set up an driver account, within a few seconds</p>
    					<a class = "btn btn-light mt-2"><span class = "text-dark font-weight-bold" href = "view-driver">View Drivers</span></a>
    					<a class = "btn btn-light mt-2"><span class = "text-dark font-weight-bold" href = "create-driver">Create New Driver</span></a>
    				</div>
    			</div>
    		</div>
    	</div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
    	
    </script>
  </body>
</html>