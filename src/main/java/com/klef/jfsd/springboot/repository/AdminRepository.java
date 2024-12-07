package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String>
{
  @Query("select a from Admin a where a.username=?1 and a.password=?2")
  public Admin checkAdminLogin(String uname, String pwd);
  
  @Modifying
  @Transactional
  @Query("delete from User where email=?1")
  public int deleteUserByEmail(String email);
}
