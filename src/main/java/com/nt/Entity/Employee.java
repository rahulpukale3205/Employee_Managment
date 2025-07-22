package com.nt.Entity;

public class Employee {
	
	private int employee_id;
	private String name;
	private String email;
	private String address;
	private String dob;
	private String gender;
	private int age;
	private String joining_date;
	private String designation;
	private String deparment;
	private String phone;
	
	public Employee() {
		
	}

	public Employee(int employee_id, String name, String email, String address, String dob, String gender, int age,
			String joining_date, String designation, String deparment, String phone) {
		super();
		this.employee_id = employee_id;
		this.name = name;
		this.email = email;
		this.address = address;
		this.dob = dob;
		this.gender = gender;
		this.age = age;
		this.joining_date = joining_date;
		this.designation = designation;
		this.deparment = deparment;
		this.phone = phone;
	}

	public int getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getJoining_date() {
		return joining_date;
	}

	public void setJoining_date(String joining_date) {
		this.joining_date = joining_date;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getDeparment() {
		return deparment;
	}

	public void setDeparment(String deparment) {
		this.deparment = deparment;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
