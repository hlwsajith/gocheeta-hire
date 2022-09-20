<%@page import="com.dao.DBConnect" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index.jsp</title>

		<!-- Style CSS Cards -->
			<style type="text/css">
.paint-card { box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);  }

</style> 

			<!--  Links and Script linking -->

				<%@include file="Component/Allcss.jsp"%>
</head>

<body>
 			<!--  Navbar Linking -->

					<%@include file="Component/Navbar.jsp"%>


			<!-- Carousel  -->

<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Component/img/GoCheetaH.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Feel The Journey </h5>
        <p>Get us-Feel the freedom-Cheap Price.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Component/img/GoCheeta0.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Affordable and Professional Service</h5>
        <p>We bring the comfortable world for you. VIP service and fast destination.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Component/img/GoCheetaH2.jpg" class="d-block w-100" alt="..." >
      <div class="carousel-caption d-none d-md-block">
        <h5>Don't Forget Your Babe</h5>
        <p>We offer our special service for your pet. No EXTRA charge for your pet. </p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

			<!--  Add Image Logo later  
		<div> <img src="Component/img/logo.png" heigh="100px"  > </div> -->

		
		<!-- Paint Card -->

<div class="container p-3">
		<p class="text-center fs-2 "> <b> FOCUSED ON SAFETY WHEREVER YOU GO </b></p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5"> <b> 100% Safety </b> </p>
								<p>We want you to move freely, make the most of your time, and be connected to the people and places that matter most to you.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5"> <b>Safe during COVID-19 </b></p>
								<p>We offer you free mask for a every ride. Free of charge for patients</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5"> <b> Support at every turn </b> </p>
								<p>A specially trained team is available 24/7. Reach them in the app, day or night, with any questions or safety concerns</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5"><b> An inclusive community </b></p>
								<p>Millions of riders and drivers share a set of Community Guidelines, holding each other accountable to do the right thing.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="Component/img/GoCheetaH3.jpg">
			</div>

		</div>
	</div>

					
					<!-- Team Code -->

		<hr>
		
			<div class="container p-2">
		<p class="text-center fs-2 "> <b> Our Team</b> </p>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Component/img/pro4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Mr. M Sajith</p>
						<p class="fs-7">(Founder)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Component/img/pro3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Mr. L Lakshith</p>
						<p class="fs-7">(Chief Manager)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Component/img/pro2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Mr. Gunathilaka</p>
						<p class="fs-7">(Organizer)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Component/img/pro1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Mr. S Mihindu</p>
						<p class="fs-7">(Developer)</p>
					</div>
				</div>
			</div>

		</div>

	</div>
	
	<%@include file="Component/Footer.jsp"%>
<br>

</body>
</html>