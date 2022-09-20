<%@page import="com.model.Branch"%>
<%@page import="com.dao.BranchDao"%>
<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.DriverDao"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.model.Driver"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Booking</title>
<%@include file="Component/Allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	border-radius: 20px;	
	
}
.logo {

	height: 150px;
	width:150px;
	display: block;
	margin-left: auto;
	margin-right: auto;

}

.backgImg {
	background: linear-gradient(rgba(0, 0, 0, .1), rgba(0, 0, 0, .0)),
		url("Component/img/Booking2.jpg");
	height: 80vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	
}

.brfont {
color:red;
}
</style>
</head>
<body>
	<%@include file="../Component/Navbar.jsp"%>

	<div class="container-fulid backgImg p-5"> 		<!-- Background image, Custom size using CSS -->
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
		
		 	<div class="col-md-3 p-5">
				
			</div>

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">Customer Booking</p>
						
					
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class=" fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						
						<form class="row g-3" action="yesBooking" method="post">

							<input type="hidden" name="userid" value="${userObj.id }">
							
							

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname">
							</div>

							<div class="col-md-6">
								<label>Gender</label> <select class="form-control" name="gender"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Date of birth</label> <input
									required type="date" class="form-control" name="dob">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">
									Booking Date</label> <input type="date" class="form-control" required
									name="booking_date">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone No</label> <input
									maxlength="10" required type="number" class="form-control"
									name="phno">
							</div>
		
		

			
			<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Branch </label> <select
									required class="form-control" name="branch">
									<option value="">--select--</option>

									<%
									BranchDao dao = new BranchDao (DBConnect.getConn());
									List<Branch> list = dao.getAllBranch();
									for (Branch d : list) {
									%>
									<option value="<%=d.getId()%>">	<%=d.getBranchName()%>
									</option>
									<%
									}
									%>

								</select>
							</div>
			
			
							<div class="col-md-6">
								<label for="inputPassword4" class="form-label"> Available Cab - Driver</label> <select
									required class="form-control" name="driv">
									<option value="">--select--</option>

									<%
									DriverDao dao2 = new DriverDao (DBConnect.getConn());
									List<Driver> list2 = dao2.getAllDrivers();
									for (Driver d : list2) {
									%>
									<option value="<%=d.getId()%>">	<%=d.getBranch()%> (<%=d.getVehicle()%>) (Driver: <%=d.getFullName()%> )
									</option>
									<%
									}
									%>

								</select>
							</div>

				
							<div class="col-md-12">
								<label>Full Address</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>
							
		<p class="brfont"> <b> Note </b> - Select your cab according to branch. If not we have to CANCEL the booking</p>
		
							<c:if test="${empty userObj }">
								<a href="User_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>

							<c:if test="${not empty userObj }">
								<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							</c:if>
					
							
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<%@include file="Component/Footer.jsp"%>

</body>
</html>