package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="user_table")
public class User 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="user_id")
  private int id;

  @Column(name="user_name", nullable=false, length=50)
  private String name;

  @Column(name="user_gender", nullable=false, length=20)
  private String gender;

  @Column(name="user_dob", nullable=false, length=20)
  private String dateOfBirth;

 
  @Column(name="user_email", nullable=false, unique=true, length=50)
  private String email;

  @Column(name="user_password", nullable=false, length=50)
  private String password;

  @Column(name="user_location", nullable=false, length=50)
  private String location;

  @Column(name="user_contact", nullable=false, unique=true, length=20)
  private String contact;

  @Column(name="user_status", nullable=false, length=50)
  private String status;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getDateOfBirth() {
	return dateOfBirth;
}

public void setDateOfBirth(String dateOfBirth) {
	this.dateOfBirth = dateOfBirth;
}



public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}

public String getContact() {
	return contact;
}

public void setContact(String contact) {
	this.contact = contact;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

  // Getters and Setters for each attribute
  // ...
}
