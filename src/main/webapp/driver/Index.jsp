<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.DriverDao"%>
<%@page import="com.model.Driver"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Driver Home page</title>

<style type="text/css">

.container p-5{

display: block;
    margin-left: auto;
    margin-right: auto
}

.col-md-4 {
display: block;
    margin-left: auto;
    margin-right: auto
}


.paint-card { box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); 
display: block;
    margin-left: auto;
    margin-right: auto

}


.h1{
 text-align:center;
 }
 
.dor {

	height: 140px;
	width:150px;
	display: block;
	margin-left: auto;
	margin-right: auto;
}

	
	

</style> 

</head>
<body>


	
<%@include file="../Component/Allcss.jsp"%>
<%@include file="navbar.jsp"%>
 <div class="container p-5">
 
 						<p class="text-center fs-3"><b>	Driver Dashboard	</b></p>
 						
	<% 
	DriverDao dao=new DriverDao(DBConnect.getConn());
	%>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						
						<img class="dor" src="../Component/img/DrB.jpg"> 
						
						<p class="fs-4 text-center">
							Total Booking <br><%=dao.countBooking() %>
							
						</p>
					</div>
				</div>
			</div>

		</div>
	
</body>
</html>