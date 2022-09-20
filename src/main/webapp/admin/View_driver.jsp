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

		
		<!-- View Driver Code -->

			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Drivers Information</p>
						
						
					<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						<!-- Drivers details table -->
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Vehicle</th>
									<th scope="col">Vehicle Number</th>
									<th scope="col">Branch</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile No</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							
							<!-- DB Connect path -->
								<%
								 DriverDao dao2=new DriverDao(DBConnect.getConn());
								List<Driver> list2=dao2.getAllDrivers();
								for (Driver d:list2)
									
								{%>  <!-- Error what? had to edit list to list2 -->
								<tr> 
								<td> <%=d.getFullName() %> </td>
								<td> <%=d.getVehicle() %></td>
								<td> <%=d.getVehicleNumber() %></td>
								<td> <%=d.getBranch() %></td>
								<td> <%=d.getEmail() %></td>
								<td> <%=d.getMobNo() %></td>
								<td>
								
								<a href="Edit_driver.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a>
								<a href="../deleteDriver?id=<%=d.getId() %>"
								 class="btn btn-sm btn-danger">Delete</a> </td>
								 
							</tr>	 
								<%
								} 
							
								%>
							<!--  Why 404 Error check, 9.40AM 12/9/22 
							fault cant add drivers to DB 9.47. Solved error 1.09pm fault is I dint add values. Drivers Add works now Finished-->



							</tbody>
						</table>

					</div>
				</div>
			</div>

</body>
</html>