<%@page import="com.dao.DBConnect"%>
<%@page import="com.dao.DriverDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Index</title>
<%@include file="/Component/Allcss.jsp" %>

	<!--  CSS Style added same as User_login.jsp file because class=.paint-card-->
	
<style type="text/css">



.paint-card { box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); }

.driverimbg { height: 140px;
	width:150px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	

}

.AddBranchbtn {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  
}
.coll-md-4 mt-2{
 
	display: block;
	margin-left: auto;
	margin-right: auto;

}


.fs-4{
display: block;
    margin-left: auto;
    margin-right: auto
}
</style> 	


	<!--  After Login to Admin board redirect to this Admin/index.jsp File -->
</head>
<body>
 <%@include file="navbar.jsp" %>

 <!--  ><H1> Hi bosa Welcome</H1> -->
 
 <!-- Admin Dashboard after loging using admin info -->
 
 <div class="container p-5">
		<p class="text-center fs-3" > <b>Admin Dashboard </b></p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
			
			
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
	
	<% 
	DriverDao dao=new DriverDao (DBConnect.getConn());
	%>
		
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						
						<img class="driverimbg" src="../Component/img/DriverPro.png"> 
						
						<br>
						<p class="fs-4 text-center">
							Driver <br><%=dao.countDriver() %>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
		<img class="driverimbg" src="../Component/img/UserPro.png"> 				
		<br>
						<p class="fs-4 text-center">
							User <br><%=dao.countUser() %>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						
	<img class="driverimbg" src="../Component/img/OrderPro.png"> 
	<br>
						<p class="fs-4 text-center">
							Total Orders <br><%=dao.countBooking() %>
						</p>
					</div>
				</div>
			</div>
			
			
	 	<div class="coll-md-4 mt-2">
				<div class="card paint-card2 " data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
				
	<img class="driverimbg" src="../Component/img/BranchPro.png"> 
						
	<br>
						<p class="fs-4 text-center">
							Branches <br><%=dao.countBranch() %>
						</p>
	<button class="AddBranchbtn" type="button">Add Branch Here </button>
						
					</div>
				</div>

			</div>

		</div>
	</div>
	

<!-- Modal  Added by Bootstrap  Source : https://getbootstrap.com/docs/5.0/components/modal/--> 

<!--  This modal added to admin dashboard to insert data for SQL, POP UP windows. -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Your Branch</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      
      <div class="modal-body">
      <form action="../addbranchlist" method="post">
      
      <div class="form-group">
      
      <label> Enter Branch Name</label>
      <input type="text" name="branchName" class="form-control">
      
            </div>
            <div class="text-center mt-2">  
            <button type="submit" class="btn btn-primary"> Add </button>
            </div>
         </form>
     </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
   
      </div>
    </div>
  </div>
</div>
</body>
</html>