  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!-- Navbar Same Change Value -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="Index.jsp"><i class="fa-solid fa-taxi"></i> GoCheeta</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
       
       <c:if test="${empty userObj }">
       
       <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Admin_login.jsp"><i class="fa-solid fa-user-lock"> </i> Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Driver_login.jsp">Driver</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="User_login.jsp">User</a>
        </li>  
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="ContactUs.jsp">Contact Us</a>
        </li>  
     
       </c:if>
         
        
       
        <c:if test="${not empty userObj}">
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="User_booking.jsp"> Cab Booking</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="View_booking.jsp"> View Bookings</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="cal.jsp"> Charge Calculator</a>
        </li>
      <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Feedback.jsp"> Feedback to Driver</a>
        </li>
       
    <!-- source : https://getbootstrap.com/docs/5.0/components/navbar/ . and Customized -->
    
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ${userObj.fullname }
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
           
            <li><a class="dropdown-item" href="userLogout">Logout</a></li>
      
        </ul>
        </li>
    
       </c:if>
     
          
        <!--   <ul class="dropdown-menu" aria-labelledby="navbarDropdown">          
           <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li> 
            
          </ul>
        </li>--> 
        
   
   
      </ul>
     
    </div>
  </div>
</nav>