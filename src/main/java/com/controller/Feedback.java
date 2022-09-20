package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BookingDao;
import com.dao.DBConnect;
import com.dao.DriverDao;
import com.dao.FeedbackDao;
import com.model.Driver;

public class Feedback extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
try {
			
			String fullName=req.getParameter("fullname");
			String vehicle=req.getParameter("vehicle");
			String vehicleNumber=req.getParameter("vehicleNumber");
			
			String branch=req.getParameter("branch");
			
			String email=req.getParameter("email");
			String mobNo=req.getParameter("mobNo");
			String feedback=req.getParameter("feedback");
		
						
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
}