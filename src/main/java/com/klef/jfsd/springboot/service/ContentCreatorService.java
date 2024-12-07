package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.ContentCreator;


public interface ContentCreatorService {
    String contentcreatorRegistration(ContentCreator contentcreator);
    ContentCreator checkContentCreatorLogin(String email, String pwd);
    String updateContentCreatorProfile(ContentCreator contentcreator);
    ContentCreator displayContentCreatorByID(int cid);
    
    
    // New methods for content management
    public String addContent(Content content);
    public List<Content> viewAllContents();
    public Content viewContentByID(int contentId);
    public List<Content> viewAllContentsByCategory(String category);
    
    // New Methods for Content Management
    public String updateContent(Content content);  // Updates existing content
    public String deleteContentByID(int contentId); // Deletes content by ID
}
