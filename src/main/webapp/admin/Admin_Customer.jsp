<%@page import="com.model.Driver"%>
<%@page import="com.dao.DriverDao"%>
<%@page import="javax.lang.model.element.ModuleElement.DirectiveVisitor"%>
<%@page import="com.model.Booking"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.BookingDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Board Customer</title>
<%@include file="/Component/Allcss.jsp" %>

	<!--  CSS Style added same as User_login.jsp file because class=.paint-card-->
	
<style type="text/css">
.paint-card { box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); }


.hlogo{

 height: 140px;
	width:150px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	}


</style>

</head>
<body>
<%@include file="navbar.jsp" %>



	<div class="container p-2">
		<div class="row">
			<div class="col-md-15">
				<div class="card paint-card">
					<div class="card-body">
					<!-- logo -->			<img class="hlogo" src="../Component/img/logo.png">
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
									<th scope="col">Driver Name</th>
									<th scope="col">Address</th>
									<th scope="col">Status</th>
								
								</tr>
							</thead>
							<tbody>
		
		<!-- NOTE- Connect driver DB because of why need to see driver name not driver it 
		So code it as dao 2. Keep this to do branch 
		-->					
				<%
					BookingDao dao=new BookingDao(DBConnect.getConn());
					DriverDao dao2=new DriverDao(DBConnect.getConn());
					List<Booking> list = dao.getAllbooking();
					for ( Booking bk:list)  {
				Driver d=dao2.getDriversByID(bk.getDriverId());
					%>
					
					<tr>
						<th>	<%=bk.getFullName() %>			</th>
						<td>	<%=bk.getGender()%>				</td>
						<td>	<%=bk.getDob()	%>				</td>
						<td> 	<%=bk.getBookingDate()%>		</td>
						<td> 	<%=bk.getEmail()%>				</td>
						<td>	<%=bk.getPhNo() %>				</td>
						<td>	<%=d.getBranch() %>			</td>
						<td> 	<%=d.getFullName()%>			</td>
						<td>	<%=bk.getAddress()%>			</td>
						<td>	<%=bk.getStatus() %> </td>
					
						
						<td>
						
		
						
						</td>
					</tr>	
					
					 <%}
											
				{%>
					
					
						
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

<!-- 1.32PM 17-9-22 -->