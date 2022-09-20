package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBConnect;
import com.dao.FeedbackDao;
import com.model.Feedback;
import com.mysql.cj.Session;

@WebServlet ("/feedback")
public class Getfeedback extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String fullname=req.getParameter("fullname");
			String vehicle=req.getParameter("vehicle");
			String vehicleNumber=req.getParameter("VehicleNumber");
			String branch=req.getParameter("branch");
			String email=req.getParameter("email");
			String mobNo=req.getParameter("mobNo");
			String feedback=req.getParameter("feedback");
	
		Feedback d=new Feedback(fullname, vehicle, vehicleNumber, branch, email, mobNo, feedback);
			
	FeedbackDao dao=new FeedbackDao(DBConnect.getConn());
	HttpSession session=req.getSession();	
	
	if (dao.getFeedback(d)) 
	{
	
	session.setAttribute("succMsg", "Thank you for feedback..");
	resp.sendRedirect("Feedback.jsp");
	
	
	
		} else {
		
		session.setAttribute("errorMsg", "Feedback Error!");
		resp.sendRedirect("Feedback.jsp");
	}
			
		
	
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
