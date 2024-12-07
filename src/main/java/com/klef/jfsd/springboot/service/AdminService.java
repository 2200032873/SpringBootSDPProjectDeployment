package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.model.ContentCreator;
import com.klef.jfsd.springboot.model.TourGuide;

public interface AdminService 
{
  // User-related methods
  public List<User> viewAllUsers();
  public Admin checkAdminLogin(String uname, String pwd);
  public User displayUserByID(int uid);
  public long userCount();
  public String deleteUser(int uid);
  public String updateUserStatus(String status, int uid);

  // ContentCreator-related methods
  public List<ContentCreator> viewAllContentCreators();
  public ContentCreator displayContentCreatorByID(int cid);
  public long contentcreatorCount();
  public String deleteContentCreator(int cid);
  public String updateContentCreatorStatus(String status, int cid);
  
  // Additional methods for other functionalities
  // public String addCustomer(Customer c);
  public List<TourGuide> viewAllTourGuides();
  public long tourGuideCount();
  public String deleteTourGuide(int tid);
}
