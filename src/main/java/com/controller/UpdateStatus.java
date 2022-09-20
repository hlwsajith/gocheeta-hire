package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BookingDao;
import com.dao.DBConnect;
import com.model.Booking;


@WebServlet ("/UpdateStatus")
public class UpdateStatus extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			String respo=req.getParameter("respo");
			
			BookingDao dao=new BookingDao(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			if(dao.updateResponseStatus(id, did, respo))
			{
				session.setAttribute("succMSg", "Responded to Customer");
				resp.sendRedirect("driver/Customer.jsp");
				
			} else {
				session.setAttribute("errorMSg", "Failed Response");
				resp.sendRedirect("driver/Customer.jsp");
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
