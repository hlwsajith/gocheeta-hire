package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.User;

@WebServlet ("/adminLogin")   //@WebServlet type - javax.servlet.annotation.WebServlet//

public class AdminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		
		//Admin Login page Email and Password//
		
		if("admin@gocheeta.com".equals(email)  && "admin".equals(password))
				{
			
			session.setAttribute("adminObj", new User()); //Note- Used here com.entitiy "User" //
			resp.sendRedirect("admin/Index.jsp");
			
				} else { 
					session.setAttribute("errorMsg", "Enter Right Email & Password"); //Note- Used here com.entitiy "User" hope it works//
					resp.sendRedirect("Admin_login.jsp");
				} 
	
	} catch (Exception e) {
		e.printStackTrace(); 
	}
	}
}

//All checked and completed, finished//