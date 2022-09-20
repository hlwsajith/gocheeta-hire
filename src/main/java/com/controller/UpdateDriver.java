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


@WebServlet ("/updateDriver")
public class UpdateDriver extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//- Note this-  These code lines copied from AddDriver.java did some changes//
		
try {
			
			String fullName=req.getParameter("fullname");
			String vehicle=req.getParameter("vehicle");
			String vehicleNumber=req.getParameter("vehicleNumber");
			
			String branch=req.getParameter("branch");
			
			String email=req.getParameter("email");
			String mobNo=req.getParameter("mobNo");
			String password=req.getParameter("password");
			
			int id=Integer.parseInt(req.getParameter("id"));
			
		
			Driver d=new Driver(id, fullName, vehicle, vehicleNumber, branch, email, mobNo, password);
			
			DriverDao dao=new DriverDao(DBConnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.updateDriver(d))
			{
				session.setAttribute("succMsg", "Driver Update Successfully");
				resp.sendRedirect("admin/View_driver.jsp"); //redirect to driver.jsp after completed the task//
					
			} else { //if update process incomplete print message and redirect//
				session.setAttribute("errorMsg", "Please Try Again Later");
				resp.sendRedirect("admin/View_driver.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
	
	}
//No errors, all good. 404 Error solved. Completed 9.47PM, 12/9/22 //
