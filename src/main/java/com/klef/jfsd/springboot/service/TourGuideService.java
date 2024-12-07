package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.TourGuide;

public interface TourGuideService {
    String tourGuideRegistration(TourGuide tourGuide);
    TourGuide checkTourGuideLogin(String email, String pwd);
    String updateTourGuideProfile(TourGuide tourGuide);
    TourGuide displayTourGuideByID(int tid);
    
   
}
