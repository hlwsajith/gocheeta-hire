<%@page import="com.model.Driver"%>
<%@page import="com.dao.DriverDao"%>
<%@page import="com.model.Branch"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.BranchDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Driver</title>
<%@include file="/Component/Allcss.jsp" %>

<!--  CSS Style added same as User_login.jsp file because class=.paint-card-->
	
<style type="text/css">
.paint-card { box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); }
</style> 	

</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Driver Info</p>
						
						<!--  Error message and success  message -->
						
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						<!-- DB Connect to edit Driver information, That's why use dao2. dao1 is Driver details
						request ID according to driver info
						-->
						
						<%
						int id=Integer.parseInt(request.getParameter("id")); 
						DriverDao dao2=new DriverDao(DBConnect.getConn());
						Driver d=dao2.getDriversByID(id);
						
						%>
						
						<!-- Form  -->
						
						<form action="../updateDriver" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control" 
									value="<%=d.getFullName()%>">
							</div>

							<div class="mb-3">
								<label class="form-label">Vehicle</label> <input type="text"
								 value="<%=d.getVehicle()%>"
									required name="vehicle" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Vehicle Number</label>
								 <input required value="<%=d.getVehicleNumber()%>"
									name="vehicleNumber" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Branch</label> <select name="branch"
									required class="form-control"value="<%=d.getBranch()%>">
									<option>	<%=d.getBranch()%>	</option>

									<% BranchDao dao=new BranchDao(DBConnect.getConn());
									List<Branch> list=dao.getAllBranch(); 
									for(Branch s:list)
									
									{%>
									
									<option><%=s.getBranchName()%></option>
										
										<%			
									}
									%>
								<!-- Got Server 500 Error. Check Driver,Java file 1.25am . Solved 12/9/22/ 9.23am-->

								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
								value="<%=d.getEmail()%>"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mobile No</label> <input type="text"
								value="<%=d.getMobNo()%>"
									required name="mobNo" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
								value="<%=d.getPassword()%>"
									name="password" type="text" class="form-control">
						<!-- changed here password to text why? in here I choose a text format -->
							</div>
					<input type="hidden" name="id" value="<%=d.getId()%>"> 
							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>

	
			
		</div>
	</div>
	
</body>
</html>

<!-- Final code update 12/9/22 8.32PM . Got 404 Error 9.39PM [/gocheeta-hire/updateDriver] is not available
problem solved. It isn't a fault. Run on server with restarting server. 
All good. Completed 9.44PM 12/9/22-->
