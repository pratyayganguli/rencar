<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<title>Unauthorized Acess</title>
	<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
	</style>
</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
  			<a class="navbar-brand" href="#"><span class = "font-weight-bold text-danger">Rencar</span></a>
  			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
   			<ul class="navbar-nav mr-auto">
      			<li class="nav-item active">
        			<a class="nav-link" href="#">Bookings <span class="sr-only">(current)</span></a>
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
        				<a class="nav-link" href="/rencar/login">Login/Signup</a>
      				</li>
      			</ul>
    		</form>
  			</div>
		</nav>
		<div class = "container">	
			<div class = "row justify-content-center mt-4">
				<div class = "col-md-6 mt-4 justify-content-center">
					<div class = "card justify-content-center mt-4">
						<div class = "card-header">
							<h4 class ="text-center font-weight-bold">Alert</h4>
						</div>
						<div class = "card-body mt-2">
							<p class = "text-center">Access denied, your are <b class = "text-danger">forbidden</b> to access this page.</p>
							<p class = "text-center">Your session has expired</p>
							<div class="d-flex justify-content-center">
								<a class = "btn btn-dark" href = "login"><span class = "text-light">Click here to login again.</span></a>
							</div>
						</div>
						<div class = "class-footer">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>