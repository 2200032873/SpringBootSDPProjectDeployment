package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tourguide_table")
public class TourGuide 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "tourguide_id")
  private int id;

  @Column(name = "tourguide_name", nullable = false, length = 50)
  private String name;

  @Column(name = "tourguide_gender", nullable = false, length = 10)
  private String gender;

  @Column(name = "tourguide_email", nullable = false, unique = true, length = 30)
  private String email;

  @Column(name = "tourguide_password", nullable = false, length = 30)
  private String password;

  @Column(name = "tourguide_address", nullable = false)
  private String address;

  @Column(name = "tourguide_contact", nullable = false, unique = true)
  private String contact;

  @Column(name = "tourguide_status", nullable = false, length = 50)
  private String status;

  // Getters and Setters
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
}
