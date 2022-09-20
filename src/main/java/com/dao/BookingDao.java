package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.google.protobuf.ListValue;
import com.model.Booking;

public class BookingDao {

	private Connection conn;

	public BookingDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addBooking(Booking bk) {
	
		boolean f=false;
	
		try {
		
		String sql="insert into booking(user_id,fullname,gender,dob,booking_date,email,phno,branch,driver_id,address,status) values(?,?,?,?,?,?,?,?,?,?,?) ";
		PreparedStatement ps=conn.prepareStatement(sql);
		
		ps.setInt(1, bk.getUserID());
		ps.setString(2, bk.getFullName());
		ps.setString(3, bk.getGender());
		ps.setString(4, bk.getDob());
		ps.setString(5, bk.getBookingDate());
		ps.setString(6, bk.getEmail());
		ps.setString(7, bk.getPhNo());
		ps.setString(8, bk.getBranch());
		ps.setInt(9, bk.getDriverId());
		ps.setString(10, bk.getAddress());
		ps.setString(11, bk.getStatus());
		
		int i=ps.executeUpdate();
		if (i==1) {
		
			f=true;
		}
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return f;			
		}
	
	 public List<Booking> getAllbookingByLoginUser(int userId)
	 {
		 List<Booking> list=new ArrayList<Booking>();
		 
		 Booking bk=null;
		 
		 try {
			 
			 String sql="select * from booking where user_id=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setInt(1, userId);
			 
			 
			 ResultSet rs=ps.executeQuery();
			 while (rs.next())
			 
			 {
				 bk=new Booking();
				 bk.setId(rs.getInt(1));
				 bk.setUserID(rs.getInt(2));
				 bk.setFullName(rs.getString(3));
				 bk.setGender(rs.getString(4));
				 bk.setDob(rs.getString(5));
				 bk.setBookingDate(rs.getString(6));
				 bk.setEmail(rs.getString(7));
				 bk.setPhNo(rs.getString(8));
				 bk.setBranch(rs.getString(9));
				 bk.setDriverId(rs.getInt(10));
				 bk.setAddress(rs.getString(11));
				 bk.setStatus(rs.getString(12));
				 list.add(bk);
				 
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return list;
		 
	 }
	 
	 public List<Booking> getAllbookingByDriverLogin(int driverId)
	 {
		 List<Booking> list=new ArrayList<Booking>();
		 
		 Booking bk=null;
		 
		 try {
			 
			 String sql="select * from booking where driver_id=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setInt(1, driverId);
			 
			 
			 ResultSet rs=ps.executeQuery();
			 while (rs.next())
			 
			 {
				 bk=new Booking();
				 bk.setId(rs.getInt(1));
				 bk.setUserID(rs.getInt(2));
				 bk.setFullName(rs.getString(3));
				 bk.setGender(rs.getString(4));
				 bk.setDob(rs.getString(5));
				 bk.setBookingDate(rs.getString(6));
				 bk.setEmail(rs.getString(7));
				 bk.setPhNo(rs.getString(8));
				 bk.setBranch(rs.getString(9));
				 bk.setDriverId(rs.getInt(10));
				 bk.setAddress(rs.getString(11));
				 bk.setStatus(rs.getString(12));
				 list.add(bk);
				 
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return list;
		 
	 }
	 
	 public Booking getbookingById(int id)
	 {
		
		 
		 Booking bk=null;
		 
		 try {
			 
			 String sql="select * from booking where id=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setInt(1, id);
			 
			 
			 ResultSet rs=ps.executeQuery();
			 while (rs.next())
			 
			 {
				 bk=new Booking();
				 bk.setId(rs.getInt(1));
				 bk.setUserID(rs.getInt(2));
				 bk.setFullName(rs.getString(3));
				 bk.setGender(rs.getString(4));
				 bk.setDob(rs.getString(5));
				 bk.setBookingDate(rs.getString(6));
				 bk.setEmail(rs.getString(7));
				 bk.setPhNo(rs.getString(8));
				 bk.setBranch(rs.getString(9));
				 bk.setDriverId(rs.getInt(10));
				 bk.setAddress(rs.getString(11));
				 bk.setStatus(rs.getString(12));
				
				 
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return bk;
		 
	 }
	 
	 public  boolean updateResponseStatus(int id, int drivId, String respo )
	 {
		  boolean f=false;
		  
		  try {
			  String sql="update booking set status=? where id=? and driver_id=?";
			  PreparedStatement ps=conn.prepareStatement(sql);
			  ps.setString(1, respo);
			  ps.setInt(2, id);
			  ps.setInt(3, drivId);
			  
			  int i = ps.executeUpdate();
			  if (i==1) {
				  f=true;
			  }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		    
		  return f;
		  
	 }
	
	 public List<Booking> getAllbooking()
	 {
		 List<Booking> list=new ArrayList<Booking>();
		 
		 Booking bk=null;
		 
		 try {
			 
			 String sql="select * from booking order by id desc";
			 PreparedStatement ps=conn.prepareStatement(sql);
		
			 
			 
			 ResultSet rs=ps.executeQuery();
			 while (rs.next())
			 
			 {
				 bk=new Booking();
				 bk.setId(rs.getInt(1));
				 bk.setUserID(rs.getInt(2));
				 bk.setFullName(rs.getString(3));
				 bk.setGender(rs.getString(4));
				 bk.setDob(rs.getString(5));
				 bk.setBookingDate(rs.getString(6));
				 bk.setEmail(rs.getString(7));
				 bk.setPhNo(rs.getString(8));
				 bk.setBranch(rs.getString(9));
				 bk.setDriverId(rs.getInt(10));
				 bk.setAddress(rs.getString(11));
				 bk.setStatus(rs.getString(12));
				 list.add(bk);
				 
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return list;	 
	 }
	 
	 //Cancel order//
	 
	 public boolean deleteBooking(int id)
	 {
	 	
	 	boolean f=false;
	 	
	 	try {
	 		
	 		String sql="delete from booking where id=?";
	 		PreparedStatement ps=conn.prepareStatement(sql);
	 		ps.setInt(1, id);
	 		
	 		int i=-ps.executeUpdate();
	 		if (i==1) 
	 		
	 		{
	 			
	 			f = true;
	 		}
	 		
	 		
	 	} catch (Exception e) {
	 		e.printStackTrace();
	 	}
	 	
	 	
	 	return f;
	 }
}

