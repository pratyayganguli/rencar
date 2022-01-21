<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import ="rencar.model.Booking"  %>
<%@page import ="rencar.DAO.BookingDAO"  %>
<%@page import ="java.util.List"  %>

<html>
	<head>
		<title>Bookings | Rencar</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
		crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconneubect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Readex+Pro&display=swap" rel="stylesheet">
		<style>
			body{
  				font-family: 'Readex Pro', sans-serif;
			}
		</style>
	</head>
	<body>
		<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			if(session.getAttribute("user") == null){
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
			
			if(request.getParameter("email") == null){
				response.sendRedirect("views/forbidden.jsp");	
			}
		%>
		<div class="container mt-4">
			<div class = "row-md mt-4 mb-4">
				<div class="container text-right mb-5 pb-3">
					<a href="#" class="btn btn-primary btn-md">
						<%=session.getAttribute("user")%>
					</a>
					<a href="<%=request.getContextPath()%>/logout" class="btn btn-danger btn-md">Logout <i class="bi bi-box-arrow-left"></i></a>
				</div>
			</div>
			<div class = "row-md mt-4 mb-4">
				<h3 class = "font-weight-bold text-center">Car Booked</h5>
			</div>
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/create-booking" class="btn btn-success btn-md">Create New Booking <i class="bi bi-person-plus-fill"></i></a>
			</div>
			<div class = "row-md justify-content-center mt-4">	
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class = "text-center">Person Name</th>
							<th class = "text-center">Booking Date</th>
							<th class = "text-center">Journey Date (From)</th>
							<th class = "text-center">Journey Date (to)</th>
							<th class = "text-center">Car Id</th>
							<th class = "text-center">Action</th>
						</tr>
					</thead>
					<tbody>
					<%
						List<Booking> bookings = BookingDAO.readBooking(request.getParameter("email"));
						for(Booking booking: bookings){
					%>
						<tr>
							<td class = "text-center"><%=booking.getPerson_name()%></td>
							<td class = "text-center"><%=booking.getBooking_date()%></td>
							<td class = "text-center"><%=booking.getStarting_date()%></td>
							<td class = "text-center"><%=booking.getEnding_date()%></td>
							<td class = "text-center"><%=booking.getCar_id()%></td>
							<td class = "text-center"><a href = "/rencar/create-payment?booking_id=<%=booking.getId()%>" class = "btn btn-success btn-sm">Pay</a></td>
						</tr>
					<%
						}
					%>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>