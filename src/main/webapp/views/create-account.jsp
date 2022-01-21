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
		<title>Registration | Car Rental System</title>
		<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class = "col col-sm-4 mt-4">
				<h4 class = "text-center font-weight-bold mb-3">Sign up with Rencar today</h4>
				<form class = "card card-light bg-light" method = "post" action = "create-account">
  					<div class = "card-body">
  						<div class="form-group">
    						<label for="firstname">First name</label>
    						<input type="text" name = "firstname" class="form-control form-control-md" required = "required" id="firstname" aria-describedby="emailHelp" >
    						<small id="firstNameError">Your First Name</small>
  						</div>
  						<div class="form-group">
    						<label for="middlename">Middle name</label>
    						<input type="text" name = "middlename" class="form-control form-control-md" id="middlename" aria-describedby="emailHelp" >
    						<small id="middleNameError">Your Middle Name</small>
  						</div>
  						<div class="form-group">
    						<label for="lastname">Last name</label>
    						<input type="text" name = "lastname" class="form-control form-control-md" required = "required" id="lastname" aria-describedby="emailHelp">
    						<small id="lastNameError">Your Last Name.</small>
  						</div>
  						<div class="form-group">
    						<label for="email">Email address</label>
    						<input type="email" name = "email" class="form-control form-control-md" required = "email" id ="email" aria-describedby="emailHelp" placeholder="Enter email">
    						<small id="emailError">Use your primary email.</small>
  						</div>
  						<div class="form-group">
    						<label for="exampleInputPassword1">Password</label>
    						<input type="password" name = "password" class="form-control" required = "required" id="password" placeholder="Password">
  							<small id="passwordError" class="form-text text-muted">Use a strong password.</small>
  						</div>
  						<div class="form-group">
    						<label for="exampleConfirmPassword">Password</label>
    						<input type="password" name = "conf_password" class="form-control" required = "required" id="conf_password" placeholder="Confirm Password">
  							<small id="confirmPasswordError" class="form-text text-muted">Confirm your password.</small>
  						</div>
  						<button type="submit" id = "register" class="btn btn-success">Register</button>
						<p class = "text-sm mt-2">Have an account?<a href = "login"> Login</a></p>
					</div>
				</form>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script>
			/*Validation code*/
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
	            if(email.length > 14){
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
			
	        /*jQuery Code*/
			document.getElementById("firstname").onchange = function(){
	            let firstname = document.getElementById("firstname").value;
	            if(isValidName(firstname) === false){
	                $("#firstNameError").css("color", "red");
	                $("#firstNameError").text("Invalid Name");
	                $("#register").prop('disabled', true);
	            }
	            else{
	                $("#firstNameError").text("");
	                $("#register").prop('disabled', false);
	            }
	        }
			
			document.getElementById("lastname").onchange = function(){
	            let firstname = document.getElementById("lastname").value;
	            if(isValidName(firstname) === false){
	                $("#lastNameError").css("color", "red");
	                $("#lastNameError").text("Invalid Name");
	                $("#register").prop('disabled', true);
	            }
	            else{
	                $("#lastNameError").text("");
	                $("#register").prop('disabled', false);
	            }
	        }
			
			document.getElementById("email").onchange = function(){
	            let email = document.getElementById("email").value;
	            if(isValidEmail(email) === false){
	                $("#emailError").css("color", "red");
	                $("#emailError").text("Invalid E-mail");
	                $("#register").prop('disabled', true);
	            }
	            else{
	                $("#emailError").text("");
	                $("#register").prop('disabled', false);
	            }
	        }
	        
		</script>
	</body>
</html>