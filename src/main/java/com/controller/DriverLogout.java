package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/driverLogout")
public class DriverLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		session.removeAttribute("drivObj");
		session.setAttribute("succMsg", "Driver, You're Out");
		
		resp.sendRedirect("Driver_login.jsp");
	}

	
}


//13/9/22- why 404 Error? 3.58PM.. Solved ../driverlogout //