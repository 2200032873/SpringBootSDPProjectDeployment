package com.klef.jfsd.springboot.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.ContentCreator;

import com.klef.jfsd.springboot.repository.ContentCreatorRepository;
import com.klef.jfsd.springboot.repository.ContentRepository;



@Service
public class ContentCreatorServiceImpl implements ContentCreatorService {

    @Autowired
    private ContentCreatorRepository contentcreatorRepository;



    @Override
    public String contentcreatorRegistration(ContentCreator contentcreator) {
        contentcreatorRepository.save(contentcreator);
        return "Content Creator Registered Successfully";
    }

    @Override
    public ContentCreator checkContentCreatorLogin(String email, String pwd) {
        return contentcreatorRepository.checkContentCreatorLogin(email, pwd);
    }

    @Override
    public String updateContentCreatorProfile(ContentCreator contentcreator) {
        ContentCreator existingContentCreator = contentcreatorRepository.findById(contentcreator.getId()).orElse(null);
        if (existingContentCreator != null) {
            existingContentCreator.setName(contentcreator.getName());
            existingContentCreator.setGender(contentcreator.getGender());
            existingContentCreator.setAddress(contentcreator.getAddress());
            existingContentCreator.setPassword(contentcreator.getPassword());
            existingContentCreator.setContact(contentcreator.getContact());
            contentcreatorRepository.save(existingContentCreator);
            return "Profile Updated Successfully";
        }
        return "Content Creator Not Found";
    }

    @Override
    public ContentCreator displayContentCreatorByID(int cid) {
        return contentcreatorRepository.findById(cid).orElse(null);
    }

   
	  @Autowired
	    private ContentRepository contentRepository;


	    @Override
	    public String addContent(Content content) {
	        contentRepository.save(content);
	        return "Content Added Successfully";
	    }

	    @Override
	    public List<Content> viewAllContents() {
	        return (List<Content>) contentRepository.findAll();
	    }

	    @Override
	    public Content viewContentByID(int contentId) {
	        return contentRepository.findById(contentId).get();
	    }

	    @Override
	    public List<Content> viewAllContentsByCategory(String category) {
	        return contentRepository.viewAllContentsByCategory(category);
	    }
	    // New Methods for Content Management
	    @Override
	    public String updateContent(Content content) {
	        Content existingContent = contentRepository.findById(content.getId()).orElse(null);
	        if (existingContent != null) {
	            existingContent.setCategory(content.getCategory());
	            existingContent.setName(content.getName());
	            existingContent.setDescription(content.getDescription());
	       //     existingContent.setCost(content.getCost());
	            existingContent.setUrl(content.getUrl());
	            existingContent.setImage(content.getImage());
	            contentRepository.save(existingContent);
	            return "Content Updated Successfully";
	        }
	        return "Content Not Found";
	    }

	    @Override
	    public String deleteContentByID(int id) {
	        try {
	            contentRepository.deleteById(id);  // Delete content from the database
	            return "Content Deleted Successfully";
	        } catch (Exception e) {
	            return "Error Deleting Content: " + e.getMessage();
	        }
	    }

}
