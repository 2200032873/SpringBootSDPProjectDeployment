package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.User;

import java.util.List;

import com.klef.jfsd.springboot.model.Content;

public interface UserService
{
  public String userRegistration(User user);
  public User checkUserLogin(String email, String pwd);
  public String updateUserProfile(User user);
  public User displayUserByID(int uid);
  public List<Content> viewAsUser();

}
