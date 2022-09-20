package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Branch;

public class BranchDao {

	private Connection conn;

	public BranchDao(Connection conn) {
		super();
		this.conn = conn; 
	}
	
	
	public boolean addBranch (String branch) {
		boolean f=false;
		
		/* Connect DB and insert data	*/
		
		try {
		
			String sql="insert into branchlist(branch_name) values(?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, branch);  //remember to update "bran" to "branch"//
			
			int i=ps.executeUpdate();
			if (i==1) {
				f = true;
			
			}  
			
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		return f;
	}
	
	public List<Branch>  getAllBranch() {
		List<Branch> list=new ArrayList<Branch>();
		 Branch s=null;
		 
		 try {
			 
			 String sql="select * from branchlist";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 
			 ResultSet rs=ps.executeQuery();
			
			 while(rs.next()){
			 
				 s=new Branch();
				 s.setId(rs.getInt(1));
				 s.setBranchName(rs.getString(2));
				 list.add(s);
						 	 
			 }
			 
		 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 
		 return list; 

	}

}



/*
 12/9/22 - 12.11am driver-branch Checking- syntax error - 1.23am Solved. 
 * all good*/
 