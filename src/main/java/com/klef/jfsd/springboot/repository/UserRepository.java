package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
  @Query("select u from User u where u.email=?1 and u.password=?2")
  public User checkUserLogin(String email, String pwd);

  @Modifying
  @Transactional
  @Query("update User u set u.status=?1 where u.id=?2")
  public int updateUserStatus(String status, int uid);
  
 
  
  public List<User> findByGender(String gender);
}
