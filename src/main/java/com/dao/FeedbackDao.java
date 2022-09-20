package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Booking;
import com.model.Driver;
import com.model.Feedback;

public class FeedbackDao {
	
	private Connection conn;

	public FeedbackDao(Connection conn) {
		super();
		this.conn=conn;
	}
	 public boolean getFeedback(Feedback d)
	 
	 {
	 
	 boolean f=false;
	
	 try {
		 
		 String sql="insert into feedback (full_name,vehicle,vehicleNumber,branch,email,mobNo,feedback) values (?,?,?,?,?,?,?)";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 
		 ps.setString(1, d.getFullName());
		 ps.setString(2, d.getVehicle());
		 ps.setString(3, d.getVehicleNumber());
		 ps.setString(4, d.getBranch());
		 ps.setString(5, d.getEmail());
		 ps.setString(6, d.getMobNo());
		 ps.setString(7, d.getFeedback());
		 
	 int i=ps.executeUpdate();
	 if (i==1)
	 {
		 f=true;
	 }
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	 return f;
	
	 }
	 
	 
	 public Feedback getfeedbackById(int id)
	 {
	 	
	 	Feedback fd=null; 
	 	try {
	 		
	 		
	 		String sql="select * from feedback where id=?";
	 		PreparedStatement ps=conn.prepareStatement(sql);
	 		ps.setInt(1, id);
	 		
	 		ResultSet rs=ps.executeQuery();
	 		while (rs.next())
	 			
	 		{
	 			fd=new Feedback();
	 			fd.setId(rs.getInt(1));
	 			fd.setFullName(rs.getString(2));
	 			fd.setVehicle(rs.getString(3));
	 			fd.setVehicleNumber(rs.getString(4));
	 			fd.setBranch(rs.getString(5));
	 			fd.setEmail(rs.getString(6));
	 			fd.setMobNo(rs.getString(7));
	 			fd.setFeedback(rs.getString(8));
	 			
	 			
	 		}
	 		
	 	} catch (Exception e) {
	 		e.printStackTrace();
	 	}
	 	
	 	return fd;
	 	
	 } 
	 
	 public List<Feedback> getAllfeedback()
	 {
		 List<Feedback> list=new ArrayList<Feedback>();
		 
	Feedback fd=null;
		 
		 try {
			 
			 String sql="select * from feedback order by id desc";
			 PreparedStatement ps=conn.prepareStatement(sql);
		
			 
			 
			 ResultSet rs=ps.executeQuery();
			 while (rs.next())
			 
			 {
				fd=new Feedback();
				 fd.setId(rs.getInt(1));
				 fd.setFullName(rs.getString(3));
				 fd.setVehicle(rs.getString(0));
				 fd.setVehicleNumber(rs.getString(0));
				 fd.setBranch(rs.getString(9));
				 fd.setEmail(rs.getString(0));
				 fd.setMobNo(rs.getString(0));
				 fd.setFeedback(rs.getString(0));
				 list.add(fd);
				 
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return list;	 
	 }
	 
}