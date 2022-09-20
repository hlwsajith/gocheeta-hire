<%@page import="com.model.Booking"%>
<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.BookingDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Response</title>

<style type="text/css">
			.paint-card { box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); }
.backgImg {
	background: linear-gradient(rgba(0, 0, 0, .1), rgba(0, 0, 0, .0)),
		url("Component/img/Booking2.jpg");
	height: 80vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	
} 

.drimg {

	width:50vh;
	display: block;
	margin-left: auto;
	margin-right: auto;

}

</style>
<%@include file="../Component/Allcss.jsp"%>

</head>
<body>
<c:if test="${empty drivObj }">
		<c:redirect url="../Driver_login.jsp"></c:redirect>
	</c:if>
<%@include file="navbar.jsp"%>

<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">

			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4">	<b>	Customer Response	</b>	</p>
						<img class="drimg" src="../Component/img/DriverResp.jpg"> 

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookingDao dao = new BookingDao(DBConnect.getConn());
	
							Booking bk=dao.getbookingById(id);
						
						%>
						<form class="row" action="../UpdateStatus" method="post">
							<div class="col-md-6">
								<label>	<b>Customer Name </b>	</label> <input type="text" readonly
									value="<%=bk.getFullName()%>" class="form-control">
							</div>

							<div class="col-md-6">
								<label>	<b>	Date of Birth  </b></label> <input type="text" value="<%=bk.getDob()%>"
									readonly class="form-control">
							</div>


							<div class="col-md-6">
								<br> <label>	<b> 	Mob No  </b></label> <input type="text" readonly
									value="<%=bk.getPhNo()%>" class="form-control">
							</div>

							<div class="col-md-6">
								<br> <label>	<b> Branch  </b>	</label> <input type="text" readonly
									value="<%=bk.getBranch()%>" class="form-control">
							</div>

							<div class="col-md-12">
								<br> <label> <b> Your Response  </b>	</label>
								<textarea required name="respo" class="form-control" row="3"
									cols=""></textarea>
							</div>

							<input type="hidden" name="id" value="<%=bk.getId()%>"> <input
								type="hidden" name="did" value="<%=bk.getDriverId()%>">

							<button class=" mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>