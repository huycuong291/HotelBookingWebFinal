package com.giang.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;
	private String fullName;
	private String gender;
	private LocalDate dateOfBirth;
	private String email;
	private String phone;
	private String address;
	private String password;
	
	public User() {
		userId = 0;
		fullName = "";
		gender = "";
		dateOfBirth = LocalDate.now();
		email = "";
		phone = "";
		address = "";
		password ="";
	}
	
	public User(String _fullname, String _gender, LocalDate _dob, String _email, String _phone, String _address, String _password) {
		userId = 0;
		fullName = _fullname;
		gender = _gender;
		dateOfBirth = _dob;
		email = _email;
		phone = _phone;
		address = _address;
		password = _password;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public void addUser(User user) {
		
	}
	
	public User updateUser(int uid) {
		return null;
	}
	
	public void deleteUser(int uid) {
		
	}
}
