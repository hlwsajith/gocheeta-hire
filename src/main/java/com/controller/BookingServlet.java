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

@WebServlet ("/yesBooking")
public class BookingServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int userId =Integer.parseInt(req.getParameter("userid"));
		String fullname = req.getParameter("fullname");
		String gender = req.getParameter("gender");
		String dob = req.getParameter("dob");
		String booking_date = req.getParameter("booking_date");
		String email = req.getParameter("email");
		String phno = req.getParameter("phno");
		String branch = req.getParameter("branch");
		int driver_id = Integer.parseInt(req.getParameter("driv"));
		String address = req.getParameter("address");
		
		
		Booking bk=new Booking(userId, fullname, gender, dob, booking_date, email, phno, branch, driver_id, address, "Pending");
		
		BookingDao dao=new BookingDao(DBConnect.getConn());
		HttpSession session=req.getSession();
		
		if  (dao.addBooking(bk)) {
	
			session.setAttribute("succMsg", "Booking Completed");
			resp.sendRedirect("User_booking.jsp");
		} else {
			session.setAttribute("errorMsg", "Please Try Again Later");
			resp.sendRedirect("User_booking.jsp");
			
		}
	 
	
	}

	
}
