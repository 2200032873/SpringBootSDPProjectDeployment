package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Content; // Updated import to Content

@Repository
public interface ContentRepository extends CrudRepository<Content, Integer> // Changed class name to ContentRepository
{
	  @Query("from Content c where c.category=?1")
	    public List<Content> viewAllContentsByCategory(String category);
	    public List<Content> findByCategory(String category);
	    // Method for deleting content by ID
	    void deleteById(int id);  // Provided by Spring Data JPA for deleting by ID
}
