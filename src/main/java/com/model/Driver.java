package com.model;

import javax.servlet.http.HttpServlet;

public class Driver extends HttpServlet{

	//Added to mysql DB//
	
	private int id;
	private String fullName;
	private String vehicle;
	private String vehicleNumber;
	private String branch;
	private String email;
	private String mobNo;
	private String password;
	

	public Driver() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Driver(String fullName, String vehicle, String vehicleNumber, String branch, String email, String mobNo, String password) {
		super();
		this.fullName = fullName;
		this.vehicle = vehicle;
		this.vehicleNumber = vehicleNumber;
		this.branch = branch;
		this.email = email;
		this.mobNo = mobNo;
		this.password = password;
	}

	
	public Driver(int id, String fullName, String vehicle, String vehicleNumber, String branch, String email,
			String mobNo, String password) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.vehicle = vehicle;
		this.vehicleNumber = vehicleNumber;
		this.branch = branch;
		this.email = email;
		this.mobNo = mobNo;
		this.password = password;
	}


	//generated Source> getters and setters//

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getVehicle() {
		return vehicle;
	}


	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}


	public String getVehicleNumber() {
		return vehicleNumber;
	}


	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}


	public String getBranch() {
		return branch;
	}


	public void setBranch(String branch) {
		this.branch = branch;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMobNo() {
		return mobNo;
	}


	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
}
