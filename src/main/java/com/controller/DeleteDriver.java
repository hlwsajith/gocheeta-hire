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

@WebServlet ("/deleteDriver")
public class DeleteDriver  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int id =Integer.parseInt(req.getParameter("id"));
		
		DriverDao dao=new DriverDao(DBConnect.getConn());
		HttpSession session=req.getSession();
		
		if(dao.deleteDriver(id))
		{
			session.setAttribute("errorMsg", "Opz..Try Again");
			resp.sendRedirect("admin/View_driver.jsp"); //redirect to view driver.jsp after completed the task/
			
	
		} else {
			session.setAttribute("succMsg", "Driver Delete Successfully");
			resp.sendRedirect("admin/View_driver.jsp"); 
			 //if deleting  process incomplete print message and redirect//
		}
		
	}
	
}




/* Note- Remember to change "errorMSg" to top and "succMsg" to bottom line, why? View_Driver.jsp file I changed it to top-bottom
 * Completed 13/9/22 . 1.22PM
 * All good		*/
 