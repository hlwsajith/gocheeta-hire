package com.model;

public class Booking {
	
	private int id;
	private int userID;
	private String fullName;
	private String gender;
	private String dob;
	private String bookingDate;
	private String email;
	private String phNo;
	private String branch;
	private int driverId;
	private String address;
	private String status;
	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Booking(int userID, String fullName, String gender, String dob, String bookingDate, String email,
			String phNo, String branch, int driverId, String address, String status) {
		super();
		this.userID = userID;
		this.fullName = fullName;
		this.gender = gender;
		this.dob = dob;
		this.bookingDate = bookingDate;
		this.email = email;
		this.phNo = phNo;
		this.branch = branch;
		this.driverId = driverId;
		this.address = address;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhNo() {
		return phNo;
	}
	public void setPhNo(String phNo) {
		this.phNo = phNo;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public int getDriverId() {
		return driverId;
	}
	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	

}



