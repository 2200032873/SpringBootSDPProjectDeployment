package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.model.ContentCreator;
import com.klef.jfsd.springboot.model.TourGuide;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.UserRepository;
import com.klef.jfsd.springboot.repository.ContentCreatorRepository;
import com.klef.jfsd.springboot.repository.TourGuideRepository;

@Service
public class AdminServiceImpl implements AdminService {
  
  @Autowired
  private UserRepository userRepository;
  
  @Autowired
  private AdminRepository adminRepository;
  
  @Autowired
  private ContentCreatorRepository contentcreatorRepository;
  
  @Autowired
  private TourGuideRepository tourGuideRepository;

  // User-related methods
  @Override
  public List<User> viewAllUsers() {
    return userRepository.findAll();
  }

  @Override
  public Admin checkAdminLogin(String uname, String pwd) {
    return adminRepository.checkAdminLogin(uname, pwd);
  }

  @Override
  public User displayUserByID(int uid) {
    return userRepository.findById(uid).orElse(null);
  }

  @Override
  public long userCount() {
    return userRepository.count();
  }

  @Override
  public String deleteUser(int uid) {
    userRepository.deleteById(uid);
    return "User Deleted Successfully";
  }

  @Override
  public String updateUserStatus(String status, int uid) {
    userRepository.updateUserStatus(status, uid);
    return "User Status Updated Successfully";
  }

  // ContentCreator-related methods
  @Override
  public List<ContentCreator> viewAllContentCreators() {
    return contentcreatorRepository.findAll();
  }

  @Override
  public ContentCreator displayContentCreatorByID(int cid) {
    return contentcreatorRepository.findById(cid).orElse(null);
  }

  @Override
  public long contentcreatorCount() {
    return contentcreatorRepository.count();
  }

  @Override
  public String deleteContentCreator(int cid) {
    contentcreatorRepository.deleteById(cid);
    return "Content Creator Deleted Successfully";
  }

  @Override
  public String updateContentCreatorStatus(String status, int cid) {
    contentcreatorRepository.updateContentCreatorStatus(status, cid);
    return "Content Creator Status Updated Successfully";
  }

  // TourGuide-related methods
  @Override
  public List<TourGuide> viewAllTourGuides() {
    return tourGuideRepository.findAll();
  }

  @Override
  public long tourGuideCount() {
    return tourGuideRepository.count();
  }

  @Override
  public String deleteTourGuide(int tid) {
      // Delete the TourGuide by ID
      tourGuideRepository.deleteById(tid);
      return "Tour Guide Deleted Successfully";
  }

}
