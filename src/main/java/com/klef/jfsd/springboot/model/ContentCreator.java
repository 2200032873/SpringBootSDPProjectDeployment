package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="contentcreator_table")
public class ContentCreator 
{
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

@Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="contentcreator_id")
  private int id;

  @Column(name="contentcreator_name", nullable=false, length=50)
  private String name;

  @Column(name="contentcreator_gender", nullable=false, length=10)
  private String gender;

  @Column(name="contentcreator_email", nullable=false, unique=true, length=30)
  private String email;

  @Column(name="contentcreator_password", nullable=false, length=30)
  private String password;

  @Column(name="contentcreator_address", nullable=false)
  private String address;

  @Column(name="contentcreator_contact", nullable=false, unique=true)
  private String contact;

  @Column(name="contentcreator_status", nullable=false, length=50)
  private String status;

  // Getters and Setters for each attribute
  // ...
}
