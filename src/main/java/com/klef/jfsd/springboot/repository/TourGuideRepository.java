package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.TourGuide;

@Repository
public interface TourGuideRepository extends JpaRepository<TourGuide, Integer> {
    @Query("select t from TourGuide t where t.email=?1 and t.password=?2")
    public TourGuide checkTourGuideLogin(String email, String pwd);

    @Modifying
    @Transactional
    @Query("update TourGuide t set t.status=?1 where t.id=?2")
    public int updateTourGuideStatus(String status, int tid);
    
    public List<TourGuide> findByGender(String gender);
}
