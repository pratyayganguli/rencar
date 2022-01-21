<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="rencar.model.State"  %>
<%@page import ="rencar.model.Car"  %>
<%@page import ="rencar.DAO.StateDAO"  %>
<%@page import ="rencar.DAO.CarDAO"  %>
<%@page import ="rencar.DAO.CarModelDAO" %>
<%@page import ="rencar.DAO.ManufacturerDAO"  %>
<%@page import ="rencar.model.City"  %>
<%@page import ="rencar.DAO.CityDAO"  %>
<%@page import ="rencar.DAO.LocationDAO"  %>
<%@page import ="rencar.model.Location"  %>
<%@page import ="java.util.List"  %>
<%@page import ="java.time.LocalDateTime" %>
<%@page import ="java.time.format.DateTimeFormatter"  %>

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
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<title>Create Booking | Rencar</title>
	<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
	</style>
	</head>
	<% 	
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("user") == null){
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
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
        			<a class="nav-link" href="check-booking">Bookings <span class="sr-only">(current)</span></a>
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
        				<a href = "#" class = "btn btn-primary"><%=session.getAttribute("user")%></a>
        				<a class="btn bg-danger text-light" href="/rencar/logout">Log out</a>
      				</li>
      			</ul>
    		</form>
  			</div>
		</nav>
		<div class = "container">	
			<form action = "create-booking" method = "post">
			<h4 class = "text-center font-weight-bold mt-4 mb-2">Complete your car booking now</h4>
			<div class = "row justify-content-center mt-3">
				<div class = "col-md-6 mt-3">
					<div class = "card bg-light">
						<div class = "card-body">
							<div class="form-group">
    							<label for="exampleInputEmail1">Person Name</label>
    							<input type="text" name = "person_name" class="form-control form-control-md" required = "required" id="fullname" aria-describedby="emailHelp" placeholder="Enter Full Name">
    							<small id="fullNameError">Example Rohan Joshi.</small>
  							</div>
  							
  							<div class="form-group">
    							<label for="exampleInputEmail1">Person Email</label>
    							<input type="text" name = "person_email" class="form-control form-control-md" required = "required" id="email" aria-describedby="emailHelp" placeholder="Enter Valid E-mail">
    							<small id="emailError">Example rohan@mail.com.</small>
  							</div>
							<div class="form-group">
    							<label for="exampleInputEmail1">Person Phone Number</label>
    							<input type="text" name = "person_phone" class="form-control form-control-md" required = "required" id="phone" aria-describedby="emailHelp" placeholder="Enter Phone Number">
    							<small id="phoneError">Example 912233212.</small>
  							</div>
							<input type = "hidden" name = "booking_date" value = <%=java.time.LocalDate.now()%>>
							<div class="form-group">
    							<label for="exampleInputEmail1">From Date</label>
    							<input type="date" name = "starting_date" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter manufacturer name">
  							</div>
							<div class="form-group">
    							<label for="exampleInputEmail1">End Date</label>
    							<input type="date" name = "ending_date" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter manufacturer name">
  							</div>
							</div>
					</div>
				</div>
				
				<div class = "col-md-6 mt-3">
					<div class = "card bg-light">
						<div class = "card-body">
							<div class="form-group">
    							<label for="exampleInputEmail1">Select State</label>
    							<select class = "form-control" name = "state_id">
    							<% List<State> states = StateDAO.readState(); %>
    							<option>---SELECT---</option>
    							<%
    								for(State state: states){
    							%>
    								<option value = <%=state.getId()%> >
    									<%=state.getName()%>
    								</option>
    							<%
    								}
    							%>	
    						</select>
    						</div>
							<div class="form-group">
    							<label for="exampleInputEmail1">Select City</label>
    							<select class = "form-control" name = "city_id">
    							<% List<City> cities = CityDAO.readCity(); %>
    							<option>---SELECT---</option>
    							<%
    								for(City city: cities){
    							%>
    								<option value = <%=city.getId()%> >
    									<%=city.getName()%>
    								</option>
    							<%
    								}
    							%>	
    							</select>
    						</div>
							<div class="form-group">
    							<label for="exampleInputEmail1">Select Location</label>
    							<select class = "form-control" name = "location_id">
    							<% List<Location> locations = LocationDAO.readLocation(); %>
    							<option>---SELECT---</option>
    							<%
    								for(Location location: locations){
    							%>
    								<option value = <%=location.getId()%> >
    									<%=location.getName()%>
    								</option>
    							<%
    								}
    							%>	
    							</select>
    						</div>
    						<div class="form-group">
    							<label for="exampleInputEmail1">Check car with prices</label>
    							<select class = "form-control" name = "car_id" id = "carId">
    							<% List<Car> cars = CarDAO.readCar(); %>
    							<option>---SELECT---</option>
    							<%
    								for(Car car: cars){
    							%>
    								<option value = <%=car.getId()%> >
    									Rs.
    									<%=car.getRent()%>
    									|
    									<%=CarModelDAO.readModelById(car.getModel_id())%>
    									|
    									<%=ManufacturerDAO.readManufacturerById(car.getManufacturer_id())%>
    								</option>
    							<%
    								}
    							%>	
    							</select>
    						</div>
    						<input type = "submit" id = "submit" class = "btn btn-success mt-3" value = "Book now">
    					</div>
					</div>
				</div>
			</div>
			</form>
		</div>
		<script>
		function isValidName(name){
	        if(name.length > 1){
    	        for(let i=0; i < name.length; i++){
        	        if(!isNaN(name[i])){
            	        return false;
                	}
            	}
            	return true;
        	}
        	return false;
    	}
		function isValidEmail(email){
            if(email.length > 12){
                for(let i=0; i < email.length; i++){
                    if(email[i] == '@'){
                        i++;
                        while(i<email.length){
                            if(email[i] == '.'){
                                return true;
                            }
                            i++;
                        }
                        return false;
                    }
                }
                return false;
            }
            return false;
        }
		function isValidPhone(phone){
            if(phone.length == 10){
                for(let i = 0; i<phone.length; i++){
                    if(isNaN(phone[i])){
                        return false;
                    }
                }
                return true
            }
            return false;
        }
		
        /*jQuery Code*/
        
		document.getElementById("fullname").onchange = function(){
            let firstname = document.getElementById("fullname").value;
            if(isValidName(firstname) === false){
                $("#fullNameError").css("color", "red");
                $("#fullNameError").text("Invalid Name");
                $("#submit").prop('disabled', true);
            }
            else{
                $("#fullNameError").text("");
                $("#submit").prop('disabled', false);
            }
        }
		
		document.getElementById("email").onchange = function(){
            let email = document.getElementById("email").value;
            if(isValidEmail(email) === false){
                $("#emailError").css("color", "red");
                $("#emailError").text("Invalid E-mail");
                $("#submit").prop('disabled', true);
            }
            else{
                $("#emailError").text("");
                $("#=submit").prop('disabled', false);
            }
		}
		document.getElementById("phone").onchange = function(){
            let phone = document.getElementById("phone").value;
            if(isValidPhone(phone) === false){
                $("#phoneError").css("color", "red");
                $("#phoneError").text("Invalid Phone Number");
                $("#submit").prop('disabled', true);
            }
            else{
                $("#phoneError").text("");
                $("#submit").prop('disabled', false);
            }
        }
		</script>
	</body>
</html>