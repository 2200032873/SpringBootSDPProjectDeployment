package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.ContentCreator;

@Repository
public interface ContentCreatorRepository extends JpaRepository<ContentCreator, Integer>
{
  @Query("select c from ContentCreator c where c.email=?1 and c.password=?2")
  public ContentCreator checkContentCreatorLogin(String email, String pwd);

  @Modifying
  @Transactional
  @Query("update ContentCreator c set c.status=?1 where c.id=?2")
  public int updateContentCreatorStatus(String status, int cid);
  
  public List<ContentCreator> findByGender(String gender);
}
