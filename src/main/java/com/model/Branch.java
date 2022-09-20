package com.model;

import javax.servlet.annotation.WebServlet;

public class Branch {
	private int id;
	private String branchName;
	
	
	public Branch() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Branch(int id, String branchName) {
		super();
		this.id = id;
		this.branchName = branchName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	
	

}



/*
For My Acknowledgement																										
			Faults - I use String=bran but finally found error is, bran should by "branch"
		@WebServlet ("/addbranchlist") solve the 404 Error, so remember to update @WebServlet always.
	Got Admin log out succefully msg on AddBranch page. Update "SuccMSg " always
	
			+=+=+=+=+=+=+=+= |Developer M SAJITH GUNATHILAKA| =+=+=+=+=+=+=+=+																																																												
																																																													
																																																													
*/