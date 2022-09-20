<%@page import="com.model.Booking"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.BookingDao"%>
<%@page import="com.model.Driver"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
<%@include file="../Component/Allcss.jsp"%>
<style type="text/css">
			.paint-card { box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); }

</style> 
</head>
<body>

<c:if test="${empty drivObj }">
		<c:redirect url="../Driver_login.jsp"></c:redirect>
	</c:if>
	
	<%@include file="navbar.jsp"%>
	<div class="container-fulid backgImg2 p-5"> 		
		<p class="text-center fs-2 text-white"></p>
		
	</div>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 fw-bold text-center text-success">Customer Details </p>
							
							<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class=" fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
							
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">DOB</th>
									<th scope="col">Booking Date</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile No</th>
									<th scope="col">Branch</th>
									<th scope="col">Address</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
									

								</tr>
							</thead>
							<tbody>
							
							<%
							
						Driver d=(Driver) session.getAttribute("drivObj");
						BookingDao dao=new BookingDao(DBConnect.getConn());
				List<Booking> list=dao.getAllbookingByDriverLogin(d.getId());
				for (Booking bk:list)
					
				{%>
					<tr>
						<th> <%=bk.getFullName() %>	</th>
						<td><%=bk.getGender()%>	</td>
						<td><%=bk.getDob()%>	</td>
						<td><%=bk.getBookingDate()%>	</td>
						<td><%=bk.getEmail() %>	</td>
						<td><%=bk.getPhNo()%>
						<td><%=d.getBranch()%>	</td>
						<td><%=bk.getAddress()%>	</td>
						<td><%=bk.getStatus() %> </td>
						<td>
						
		<%
			if("Pending".equals(bk.getStatus()))
		{%>
			<a href="Response.jsp?id=<%=bk.getId()%>" class="btn btn-success btn-sm"> Response</a>
		<%} else {%>
			<a href="#" class="btn btn-success btn-sm disabled"> Response</a>				
		<%}
						
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
