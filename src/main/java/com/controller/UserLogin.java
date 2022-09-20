package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBConnect;
import com.dao.UserDao;
import com.model.User;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		
		UserDao Dao=new UserDao(DBConnect.getConn());
		User user=Dao.login(email, password);
		
		// USER Login for User login page//
		
		if(user!=null) {
	
	session.setAttribute("userObj", user ); 
	resp.sendRedirect("Index.jsp");
	
		} else { 
			session.setAttribute("errorMsg", "Enter Right Email or Password"); //Note- Used here com.entitiy "User" hope it works//
			resp.sendRedirect("User_login.jsp"); 
	}

	
	}	
}



/*
+++++++++++++++ KEEPING CODE FOR MY ACKNOWLEGDMENT, +++++++																		
Admin Login page Email and Password, copied code from my admin login file. Changed code according to User login.																																					
	if("admin@gocheeta.com".equals(email)  && "gocheeta".equals(password))																
			{																																																										
		session.setAttribute("adminObj", new User()); //Note- Used here com.entitiy "User" //											
	resp.sendRedirect("admin/Index.jsp");																																																						
		} else { 																													
			session.setAttribute("errorMsg", "Enter Right Email & Password"); //Note- Used here com.entitiy "User" hope it works//	
			resp.sendRedirect("Admin_login.jsp");																					||

				 */