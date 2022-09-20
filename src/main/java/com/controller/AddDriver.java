package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBConnect;
import com.dao.DriverDao;
import com.model.Driver;

@WebServlet ("/addDriver") //Enter to Driver.jsp file in right line//
public class AddDriver extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String fullName=req.getParameter("fullname");
			String vehicle=req.getParameter("vehicle");
			String vehicleNumber=req.getParameter("vehicleNumber");
			
			String branch=req.getParameter("branch");
			
			String email=req.getParameter("email");
			String mobNo=req.getParameter("mobNo");
			String password=req.getParameter("password");
		
			Driver d=new Driver(fullName, vehicle, vehicleNumber, branch, email, mobNo, password);
			
			DriverDao dao=new DriverDao(DBConnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.registerDriver(d))
			{
				session.setAttribute("succMsg", "Driver Added Successfully");
				resp.sendRedirect("admin/Driver.jsp"); //redirect to driver.jsp after completed the task//
					
			} else { //if adding process incomplete print message and redirect//
				session.setAttribute("errorMsg", "Please Try Again");
				resp.sendRedirect("admin/Driver.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
}
