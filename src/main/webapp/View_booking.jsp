<%@page import="com.model.Driver"%>
<%@page import="com.model.Booking"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DriverDao"%>
<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.BookingDao"%>
<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Booking</title>
<%@include file="Component/Allcss.jsp"%>
	
	<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	border-radius: 20px;	
	
}


.backgImg2 {
	background: linear-gradient(rgba(0, 0, 0, .1), rgba(0, 0, 0, .0)),
		url("Component/img/Booking3.jpg");
	height: 80vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	
}



	</style>
</head>


<body>

	
<%@include file="Component/Navbar.jsp"%>

<div class="container-fulid backgImg2 p-5"> 		
		<p class="text-center fs-2 text-white"></p>
		
	</div>
	

	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-13">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Check Booking </p>
						
						<!--  Error message and success  message -->
						
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
							
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">DOB</th>
									<th scope="col">Booking Date</th>
									<th scope="col">Branch</th>
									<th scope="col">Driver Name</th>
									<th scope="col">Vehicle</th>
									<th scope="col">Vehicle No</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Status</th>

								</tr>
							</thead>
							<tbody>
								
								<%
								User user = (User) session.getAttribute("userObj");
								BookingDao dao = new BookingDao(DBConnect.getConn());
								
								DriverDao dao2 = new DriverDao(DBConnect.getConn());
								List<Booking> list = dao.getAllbookingByLoginUser(user.getId());
								
								for (Booking bk : list) {
									Driver d = dao2.getDriversByID(bk.getDriverId());
								
								%>
								<tr>
									<th><%=bk.getFullName()%></th>
									<td><%=bk.getGender()%></td>
									<td><%=bk.getDob()%></td>
									<td><%=bk.getBookingDate()%></td>
									<td><%=d.getBranch()%></td>
									<td><%=d.getFullName()%></td>
									<td><%=d.getVehicle() %> </td>
									<td><%=d.getVehicleNumber() %> </td>
									<td><%=d.getEmail() %>						</td>
									<td><%=d.getMobNo() %> </td>
									<td>
									
								 
										<%
										if ("Pending".equals(bk.getStatus())) {
										%> <a href="#" class="btn btn-sm btn-warning">Pending</a> <%
 } else {
 %> <%=bk.getStatus()%> <%
 }
 %>
									</td>
								</tr>
								<%
								}
								%>



							</tbody>
						</table>

					</div>
					
					
			</div>
			
		
		</div>
		
	</div>
	
</div>
		



</body>
</html>