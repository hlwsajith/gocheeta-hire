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
import com.dao.UserDao;
import com.model.Driver;
import com.model.User;

@WebServlet ("/driverLogin")
public class DriverLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		
		DriverDao dao=new DriverDao(DBConnect.getConn());
		Driver driver=dao.login(email, password); 
		
		
		// driver Login for Driver_login.jsp login page//
		
		if(driver !=null) {
	
	session.setAttribute("drivObj", driver ); 
	resp.sendRedirect("driver/Index.jsp");
	
		} else { 
			session.setAttribute("errorMsg", "Invalid Email or Password");
			resp.sendRedirect("Driver_login.jsp"); 
		}
	}

}


/*13/9/22
 * Error- Driver login failed 2.17PM. Error solved 2.54PM. Used /driver/Index.jsp sometimes have to remove / mark, depend on location 
 * */
