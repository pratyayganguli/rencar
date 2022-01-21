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
		<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	
		<title>Show Bookings | Car Rental System</title>
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
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class="container text-right mb-5 pb-3">
				<a href="#" class="btn btn-primary btn-md">
						<%=session.getAttribute("user")%>
				</a>
				<a href="<%=request.getContextPath()%>/logout" class="btn btn-danger btn-md">Logout <i class="bi bi-box-arrow-left"></i></a>
			</div>
			<div class = "col col-sm-4 mt-4">
				<h4 class = "text-center font-weight-bold mt-3 mb-4">Enter your email to check your bookings</h4>
				<form class = "card card-light bg-light" method = "get" action = "view-bookings">
  					<div class = "card-body">
  						<div class="form-group">
    						<label for="exampleInputEmail1">Registered E-mail</label>
    						<input type="text" name = "email" class="form-control form-control-md" required = "required" id="email" aria-describedby="emailHelp" placeholder="Enter Email">
    						<small id="emailError">sample@mail.com</small>
  						</div>
  						<button type="submit" id = submit class="btn btn-success">Check Booking</button>
					</div>
				</form>
			</div>
		</div>
		<script>
		function isValidEmail(email){
            	if(email.length > 10){
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
		</script>
	</body>
</html>