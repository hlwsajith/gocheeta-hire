package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Driver;

public class DriverDao {

	private Connection conn;
	//Generated Source>super constructor using field..>

	public DriverDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean registerDriver(Driver d){ 
		
		boolean f=false; 
		
		/*created TABLE in  DB as Driver, Copied field name and paste
		in this code line 23rd line*/
		
		try {
			String sql="insert into driver(full_name,vehicle,vehicleNumber,branch,email,mobNo,password)values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getVehicle()); 			//POINT not DOB to Vehicle//
			ps.setString(3, d.getVehicleNumber());
			ps.setString(4, d.getBranch());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobNo());
			ps.setString(7, d.getPassword());
			
			int i=ps.executeUpdate();
			if (i==1)
			{
				f =true;
				
			}
		
		
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		return f;
	}
	
	public List<Driver> getAllDrivers() 
	{
		List<Driver> list=new ArrayList<Driver>();
		Driver d=null; 
		try {
			
			
			String sql="select * from driver order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next())
				
			{
				d=new Driver();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setVehicle(rs.getString(3));
				d.setVehicleNumber(rs.getString(4));
				d.setBranch(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobNo(rs.getString(7));
				d.setPassword(rs.getString(8));
				
				list.add(d);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}

//Select Drivers by order, According to id//
public Driver getDriversByID(int id) 
{
	
	Driver d=null; 
	try {
		
		
		String sql="select * from driver where id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		
		ResultSet rs=ps.executeQuery();
		while (rs.next())
			
		{
			d=new Driver();
			d.setId(rs.getInt(1));
			d.setFullName(rs.getString(2));
			d.setVehicle(rs.getString(3));
			d.setVehicleNumber(rs.getString(4));
			d.setBranch(rs.getString(5));
			d.setEmail(rs.getString(6));
			d.setMobNo(rs.getString(7));
			d.setPassword(rs.getString(8));
			
			
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return d;
	
}

//Update Driver

public boolean updateDriver(Driver d){ 
	
	boolean f=false; 
	
	/*This all lines copied from top lines, Line 21-52
	and done some changes according to update driver details */
	
	try {
		String sql="update driver set full_name=?,vehicle=?,vehicleNumber=?,branch=?,email=?,mobNo=?,password=? where id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, d.getFullName());
		ps.setString(2, d.getVehicle()); 			//POINT not DOB to Vehicle//
		ps.setString(3, d.getVehicleNumber());
		ps.setString(4, d.getBranch());
		ps.setString(5, d.getEmail());
		ps.setString(6, d.getMobNo());
		ps.setString(7, d.getPassword());
		ps.setInt(8, d.getId());  //New 144 line added to get ID from DB//
		int i=ps.executeUpdate();
	
		if (i==1)
		{
			f =true;
			
		}
	
	
	} catch (Exception e) {
		e.printStackTrace();
	
	}
	return f;
	}

//Delete Driver//

public boolean deleteDriver(int id)
{
	
	boolean f=false;
	
	try {
		
		String sql="delete from driver where id=?";
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

	public Driver login(String email,String psw)
	{
		Driver d=null;
		
		 try {
			
			 String sql="select * from driver where email=? and password=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setString(1, email);
			 ps.setString(2, psw);
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
				 
			 {
				 	
				 	d=new Driver();
					d.setId(rs.getInt(1));
					d.setFullName(rs.getString(2));
					d.setVehicle(rs.getString(3));
					d.setVehicleNumber(rs.getString(4));
					d.setBranch(rs.getString(5));
					d.setEmail(rs.getString(6));
					d.setMobNo(rs.getString(7));
					d.setPassword(rs.getString(8));
			 }
		} catch (Exception e) {
			 
		}
		
		return d;
		
	}

	
	public int countDriver()
	{
		 int i=0;
		 try {
			String sql="select * from driver";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
				 
			 {
				 i++;
			 }
				 
				 
			 
			 
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return i;
	}
	
	
	
	public int countUser()
	{
		 int i=0;
		 try {
			String sql="select * from user_dtls";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
				 
			 {
				 i++;
			 }
				 
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return i;
	}
	
	public int countBooking()
	{
		 int i=0;
		 try {
			String sql="select * from booking";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
				 
			 {
				 i++;
			 }
				 
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return i;
		 
	}

	public int countBranch()
	{
		 int i=0;
		 try {
			String sql="select * from branchlist";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
				 
			 {
				 i++;
			 }
				 
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return i;
	}
	
	
	public int countBookingByDriverId(int did)
	{
		 int i=0;
		 try {
			String sql="select * from booking where driver_id=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setInt(1, did);
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
				 
			 {
				 i++;
			 }
				 
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return i;
	
}

	
	
}





/*Faults 12/9/22 | f=true got f error. didnt solve 2.31am
 * solved 2.33am entered 20 line,  boolean f=false; 
 * syntax error 42 line 2.35am..
 * Checked and All good 3.43am
 * error solved drivers add didnt work. fault is I didnt add values. values(?,?,?,?,?,?,?)";
 * All completed. Good 1.09PM.
 *Again update code for edit driver info 8.37PM, copied reg driver code from top.
 *Start code line 127 " updateDriver(Driver d)"
 *13/9/22 - Delete driver work but error message wrong. 1.28AM. Solved
 *Driver Login failed 2.25PM.
 * */
