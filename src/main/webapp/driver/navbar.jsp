<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="/gocheeta-hire/Index.jsp"><i
			class="fa-solid fa-taxi"></i> GoCheeta</a>
			
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="./Index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link" href="Customer.jsp">CUSTOMER</a></li>
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fas fa-user-circle"></i> ${drivObj.fullName} <!-- Copied drivObj from DriverLogin.Java and fullName from Driver.java -->
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						
						<li><a class="dropdown-item" href="../driverLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>

<!--  13/9/22- why 404 Error? 3.58PM.. Solved ../driverlogout -->