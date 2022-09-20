<%@page import="com.google.protobuf.ListValue"%>
<%@page import="com.model.Feedback"%>
<%@page import="com.dao.FeedbackDao"%>
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

.hlogo {

	height: 130px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-bottom:0px;


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
								
							
									<th scope="col">Email</th>
									<th scope="col">Mobile No</th>
									<th scope="col">Branch</th>
									<th scope="col">Driver Name</th>
									<th scope="col">Driver Email</th>
									<th scope="col">Driver Mob No</th>
									<th scope="col">FeedBack</th>
									
								
								</tr>
							</thead>
							<tbody>
		
		<!-- NOTE- Connect driver DB because of why need to see driver name not driver it 
		So code it as dao 2. Keep this to do branch 
		-->					
				<%
				
				
				FeedbackDao dao=new FeedbackDao(DBConnect.getConn());
			
			List<Feedback> list =dao.getAllfeedback();
				for (Feedback fd:list) {
					
			
					%>
					
					<tr>
						<th>	<%=fd.getFullName()		%>	</th>
						<td>	<%=fd.getVehicle() %>				</td>
						<td>	<%=fd.getVehicleNumber()%>				</td>
						<td>	<%=fd.getBranch() %>				</td>
						<td> 	<%=fd.getEmail()%>				</td>
						<td>	<%=fd.getMobNo()%>				</td>
						<td>	<%=fd.getFeedback() %> 			</td>
						
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

<!-- 18.-09.22 Huh Called 3 database to get feedback . Database error not showing info. Table ok. Check later Start document.9.31 PM 18-9-2022-->