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
<title>Insert title here</title>
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

			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Driver</p>
						
						<!--  Error message and success  message -->
						
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						
						
						<!-- Form  -->
						
						<form action="../addDriver" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control" >
									
												
							</div>

							<div class="mb-3">
								<label class="form-label">Vehicle</label> <input type="text"
									required name="vehicle" class="form-control">
									
									
							</div>

							<div class="mb-3">
								<label class="form-label">Vehicle Number</label> <input required
									name="vehicleNumber" type="text" class="form-control">
									
							</div>
							<div class="mb-3">
								<label class="form-label">Branch</label> <select name="branch"
									required class="form-control">
									
									<option>--select--</option>

		<!-- Request branch DB connect Branch -->
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
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mobile No</label> <input type="text"
									required name="mobNo" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>


			
		</div>
	</div>
	
</body>
</html>

<!--  Why 404 Error check, 9.40AM 12/9/22 
							fault cant add drivers to DB 9.47. Solved error 1.09pm fault is I dint add values. Drivers Add works now Finished-->
