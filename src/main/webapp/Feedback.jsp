<%@page import="java.util.List"%>
<%@page import="com.model.Branch"%>
<%@page import="com.dao.BranchDao"%>
<%@page import="com.model.Feedback"%>
<%@page import="com.dao.FeedbackDao"%>
<%@page import="com.model.Driver"%>
<%@page import="com.model.Booking"%>
<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.DriverDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback for driver</title>

<style type="text/css">
			.paint-card { box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); }

 .cfi {
 
 width:20vh;
	display: block;
	margin-left: auto;
	margin-right: auto;
 
 }


</style>
<%@include file="../Component/Allcss.jsp"%>

</head>
<body>

	
	
<%@include file="Component/Navbar.jsp"%>

<div class="container-fulid backImg p-5"> <!-- didnt add img useless -->
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">

			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4"><b>	Customer Feedback  </b></p>
						
						<img class="cfi" src="Component/img/CF.png">
						
						 
						
						
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class=" fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						
						<form class="row" action="feedback" method="post">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname">
								
							</div>

					

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label"> Cab Model</label> <select
									required class="form-control" name="vehicle">
									<option value="">--select--</option>

									<%
									DriverDao dao2 = new DriverDao (DBConnect.getConn());
									List<Driver> list2 = dao2.getAllDrivers();
									for (Driver d : list2) {
									%>
									<option value="<%=d.getId()%>">	 (<%=d.getVehicle()%>) (Driver: <%=d.getFullName()%> )
									</option>
									<%
									}
									%>

								</select>
							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label"> Cab Number</label> <select
									required class="form-control" name="VehicleNumber">
									<option value="">--select--</option>

									<%
									DriverDao dao3 = new DriverDao (DBConnect.getConn());
									List<Driver> list3 = dao3.getAllDrivers();
									for (Driver d : list3) {
									%>
									<option value="<%=d.getId()%>">	 (<%=d.getVehicleNumber()%>
									</option>
									<%
									}
									%>

								</select>
								
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
						 <label for="inputEmail4" class="form-label">Email</label> <input
									required type="text" class="form-control" name="email">
							</div>
							
							<div class="col-md-6">
								<br> <label for="inputEmail4" class="form-label">Mob No</label> <input
									required type="text" class="form-control" name="mobNo">
							</div>

							<div class="col-md-12">
								<br> <label>Your Feedback</label>
								<textarea required name="feedback" class="form-control" row="3"
									cols=""></textarea>
							</div>

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

<body>

</body>
</html>