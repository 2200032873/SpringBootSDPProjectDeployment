package com.klef.jfsd.springboot.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.TourGuide;
import com.klef.jfsd.springboot.repository.TourGuideRepository;
import com.klef.jfsd.springboot.repository.ContentRepository;

@Service
public class TourGuideServiceImpl implements TourGuideService {

    @Autowired
    private TourGuideRepository tourGuideRepository;

    @Override
    public String tourGuideRegistration(TourGuide tourGuide) {
        tourGuideRepository.save(tourGuide);
        return "Tour Guide Registered Successfully";
    }

    @Override
    public TourGuide checkTourGuideLogin(String email, String pwd) {
        return tourGuideRepository.checkTourGuideLogin(email, pwd);
    }

    @Override
    public String updateTourGuideProfile(TourGuide tourGuide) {
        TourGuide existingTourGuide = tourGuideRepository.findById(tourGuide.getId()).orElse(null);
        if (existingTourGuide != null) {
            existingTourGuide.setName(tourGuide.getName());
            existingTourGuide.setGender(tourGuide.getGender());
            existingTourGuide.setAddress(tourGuide.getAddress());
            existingTourGuide.setPassword(tourGuide.getPassword());
            existingTourGuide.setContact(tourGuide.getContact());
            tourGuideRepository.save(existingTourGuide);
            return "Profile Updated Successfully";
        }
        return "Tour Guide Not Found";
    }

    @Override
    public TourGuide displayTourGuideByID(int tid) {
        return tourGuideRepository.findById(tid).orElse(null);
    }

   
}
