<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import = "javax.servlet.http.HttpServletRequest" %> 
<%@ page import = "rencar.model.Admin" %> 
<%@ page import = "rencar.DAO.AdminDAO" %> 
<%
	String ID 		= request.getParameter("id");
	int id 			= Integer.parseInt(ID);
	String username = AdminDAO.getAdminUsername(id);
	String password = AdminDAO.getAdminPassword(id);
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
		<title>Update Admin Details | Rencar</title>
		<style>
			body{
				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<div class = "row row-md-6 justify-content-center mt-4">
			<div class = "col col-sm-4 mt-4">
				<h4 class = "font-weight-bold">Update Admin details</h4>
				<p class = "text-muted">With great power comes great responsibilities</p>
				<form class = "card card-light" method = "post" action = "update-admin">
  					<div class = "card-body">
  						<input type = "hidden" name = "id" value= <%=id%>>
  						<input type = "hidden" name = "creator_id" value = "1">
  						<div class="form-group">
    						<label for="exampleInputFirstname">Username</label>
    						<input type="text" name = "username" value = <%=username%> class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" >
    						<small id="emailHelp" class="form-text text-muted">Your username should be rencar.adminusername</small>
  						</div>
  						<div class="form-group">
    						<label for="exampleInputFirstname">Password</label>
    						<input type="text" value = <%=password%> name = "password" class="form-control form-control-md" required = "required" id="exampleInputEmail1" aria-describedby="emailHelp" >
    						<small id="emailHelp" class="form-text text-muted">Your password</small>
  						</div>
  							<input type="submit" class="btn btn-success" value = "Edit details">
						</div>
				</form>
			</div>
		</div>
	</body>
</html>