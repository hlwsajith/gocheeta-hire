<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<%@include file="Component/Contactcss.jsp"%>
<%@include file="Component/Allcss.jsp"%>
</head>
<body>
<%@include file="Component/Navbar.jsp"%>
         

        <h1 class="h-primary center"
            style="margin-top:30px;">
            Options to Contact
        </h1>
        <div id="service">
            <div class="box">
                <!-- Call -->
                <img src= Component/img/call.jpg >
          
                <br>
                 
                <!-- Displaying text at
                    the center of the box-->
                <p class="center">
                    People can contact us by Phone Toll Free Number <br>+94 7812934567
                </p>
 
            </div>
            <div class="box">
                 
                <!-- Email -->
                <img src=Component/img/email.jpg >
                 
                <br>
                 
                    <!-- Displaying text at
                    the center of the box-->
                <p class="center">
                     Email to send us about the problem faced <br> info@gocheeta.com
                   
                </p>
 
            </div>
            <div class="box">
                <img src=Component/img/Visit.jpg >
                  
                <br>
                 
                <!-- Visit us-->
                <p class="center">
                    Visit Us  <br>12 Road,Colombo, GoCheeta PVT.LTD 
                </p>
 
            </div>
            
           
            
        </div>
         <img class="fimg" src=Component/img/ConF.jpg >
        
    <%@include file="Component/Footer.jsp"%>
</body>
</html>