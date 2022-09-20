package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BranchDao;
import com.dao.DBConnect;
import com.model.User;


@WebServlet ("/addbranchlist") //point for 404 Error, This linked to action="../addbranchlist" //
public class AddBranch  extends HttpServlet{

	//Source>Generated//
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String branchName=req.getParameter("branchName");
		
		
		BranchDao dao=new BranchDao(DBConnect.getConn());
		boolean f=dao.addBranch(branchName);
		
		HttpSession session=req.getSession();
		
		if(f)
		{
	
	session.setAttribute("succMsg", "Branch Added"); 
	resp.sendRedirect("admin/Index.jsp");
	
		} else { 
			session.setAttribute("errorMsg", "Incomplete, Try again"); 
			resp.sendRedirect("Admin_login.jsp");
		} 
		
	}
	
 	

}

/*For My Acknowledgement	
Check Branch.java, BranchDao.java and index.jsp. OK All worked. Checked the Admin Dashboard and enter a branch.
* DB OK.. Data insert without a case. Finally All Good.
* +=+=+=+=+=+=+=+= |Developer M SAJITH GUNATHILAKA| =+=+=+=+=+=+=+=+
*/