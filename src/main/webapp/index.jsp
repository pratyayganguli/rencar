<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Admin Panel | Rencar</title>
  </head>
  <body>
    	<div class = "row justify-content-center pt-2 mb-3 bg-dark">
    		<div class = "col-sm-1">
    			<a href = "/rencar/login"><p class = "text-light font-weight-bold">Login</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/create-account"><p class = "text-light font-weight-bold">Register</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/create-car"><p class = "text-light font-weight-bold">Add Car</p></a>
    		</div>
    		<div class = "col-sm-2">
    			<a href = "/rencar/create-manufacturer"><p class = "text-light font-weight-bold">Add Manufacturer</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/create-model"><p class = "text-light font-weight-bold">Add Model</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/create-admin"><p class = "text-light font-weight-bold">Add Admin</p></a>
    		</div>
    		<div class = "col-sm-1">
    			<a href = "/rencar/view-admins"><p class = "text-light font-weight-bold">View Admins</p></a>
    		</div>
    	</div>
    	<div class = "row justify-content-center mt-4">
    		<div class = "col-md-4 justify-content-center">
    			<div class = "card bg-dark">
    				<div class = "card-body">
    					<h4 class = "card-title text-light mb-3">Active users</h4>
    					<p class = "card-subtitle text-light"> We have over active users to check their information and help with
    					the support click here</p>
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
    				</div>
    			</div>
    		</div>
    	</div>
    	
    	<div class = "row justify-content-center mt-3">
    		<div class = "col-md-4 justify-content-center">
    			<div class = "card bg-primary">
    				<div class = "card-body">
    					<h4 class = "card-title text-light mb-3">Manage Prices</h4>
    					<p class = "card-subtitle text-light">Set the prices</p>
    					<a class = "btn btn-dark mt-2"><span class = "text-light">View Prices</span></a>
    				</div>
    			</div>
    		</div>
    	</div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
    	console.log($);
    </script>
  </body>
</html>