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
		<title>Car Rental System</title>
		<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class = "col col-sm-4 mt-4">
				<h4 class = "text-center font-weight-bold mb-5 pb-2">Book now, Driver Later</h4>
				<form class = "card card-light bg-light" method = "post" action = "account">
  					<div class = "card-body">
  						<div class="form-group">
    						<label for="exampleInputEmail1">Email address</label>
    						<input type="text" name = "email" class="form-control form-control-md" required = "required" id="email" aria-describedby="emailHelp" placeholder="Enter email">
    						<small id="emailError">Use registered email.</small>
  						</div>
  						<div class="form-group">
    						<label for="exampleInputPassword1">Password</label>
    						<input type="password" name = "password" class="form-control" required = "required" id="password" placeholder="Password">
  							<small id="passwordError" class="form-text text-muted">Your password.</small>
  						</div>
  						<button type="submit" id = "login" class="btn btn-success">Login</button>
						<p class = "text-sm mt-2">Do not have an account?<a href = "create-account"> Create one</a></p>
						<p class = "text-danger text-sm mt-2">Forgot password<a href = "forgot-account"> Click here</a></p>
					</div>
				</form>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script type = "text/javascript">
				
			/* Validation functions */
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
			
			/* Jquery code */
				
				document.getElementById("email").onchange = function(){
		            let email = document.getElementById("email").value;
		            if(isValidEmail(email) === false){
		                $("#emailError").css("color", "red");
		                $("#emailError").text("Invalid E-mail");
		                $("#login").prop('disabled', true);
		            }
		            else{
		                $("#emailError").text("");
		                $("#login").prop('disabled', false);
		            }
		        }
		</script>
	</body>
</html>