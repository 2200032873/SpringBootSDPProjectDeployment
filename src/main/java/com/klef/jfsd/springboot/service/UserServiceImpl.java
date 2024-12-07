package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.User;

import com.klef.jfsd.springboot.repository.ContentRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService 
{
  @Autowired
  private UserRepository userRepository;

  @Override
  public String userRegistration(User user) 
  {
    userRepository.save(user);
    return "User Registered Successfully";
  }

  @Override
  public User checkUserLogin(String email, String pwd) 
  {
    return userRepository.checkUserLogin(email, pwd);
  }

  @Override
  public String updateUserProfile(User user) 
  {
    User existingUser = userRepository.findById(user.getId()).orElse(null);
    if (existingUser != null) 
    {
      existingUser.setName(user.getName());
      existingUser.setGender(user.getGender());
      existingUser.setDateOfBirth(user.getDateOfBirth());
     
     
      existingUser.setPassword(user.getPassword());
      existingUser.setLocation(user.getLocation());
      existingUser.setContact(user.getContact());
      userRepository.save(existingUser);
      return "User Updated Successfully";
    } 
    else 
    {
      return "User Not Found";
    }
  }

  @Override
  public User displayUserByID(int uid) 
  {
    return userRepository.findById(uid).orElse(null);
  }

  @Autowired
    private ContentRepository contentRepository;

@Override
public List<Content> viewAsUser() {
    // Retrieve all content for viewing as a user
    return (List<Content>) contentRepository.findAll();
}



}
