package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.ContentCreator;
import com.klef.jfsd.springboot.service.ContentCreatorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ContentCreatorController 
{
  @Autowired
  private ContentCreatorService contentcreatorService;
  
 
  
  @GetMapping("/contentcreatorreg")
  public ModelAndView contentcreatorreg()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("contentcreatorreg");
    return mv;
  }
  
  @GetMapping("/contentcreatorlogin")
  public ModelAndView contentcreatorlogin()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("contentcreatorlogin");
    return mv;
  }
  
  @PostMapping("/insertcontentcreator")
  public ModelAndView insertcontentcreator(HttpServletRequest request)
  {
    String name = request.getParameter("cname");
    String gender = request.getParameter("cgender");
    String address = request.getParameter("caddress");
    String email = request.getParameter("cemail");
    String password = request.getParameter("cpwd");
    String contact = request.getParameter("ccontact");
    String status = "Registered";
   
    ContentCreator contentcreator = new ContentCreator();
    contentcreator.setName(name);
    contentcreator.setGender(gender);
    contentcreator.setAddress(address);
    contentcreator.setEmail(email);
    contentcreator.setPassword(password);
    contentcreator.setContact(contact);
    contentcreator.setStatus(status);
   
    String msg = contentcreatorService.contentcreatorRegistration(contentcreator);
   
    ModelAndView mv = new ModelAndView("regsuccesscontentcreator");
    mv.addObject("message", msg);
   
    return mv;
  }
  
  @PostMapping("/checkcontentcreatorlogin")
  public ModelAndView checkContentCreatorLogin(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    String email = request.getParameter("cemail");
    String password = request.getParameter("cpwd");
    
    ContentCreator contentcreator = contentcreatorService.checkContentCreatorLogin(email, password);
    
    if (contentcreator != null)
    {
      HttpSession session = request.getSession();
      session.setAttribute("contentcreator", contentcreator);
      mv.setViewName("contentcreatorhome");
    }
    else
    {
      mv.setViewName("contentcreatorlogin");
      mv.addObject("message", "Login Failed");
    }
    return mv;
  }
  
  @GetMapping("/contentcreatorhome")
  public ModelAndView contentcreatorHome()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("contentcreatorhome");
    return mv;
  }
  
  @GetMapping("/contentcreatorprofile")
  public ModelAndView contentcreatorProfile()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("contentcreatorprofile");
    return mv;
  }
  
  @GetMapping("/updatecontentcreator")	
  public ModelAndView updateContentCreator()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("updatecontentcreator");
    return mv;
  }
  
  @PostMapping("/updatecontentcreatorprofile")
  public ModelAndView updateContentCreatorProfile(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    
    try
    {
      int id = Integer.parseInt(request.getParameter("cid"));
      String name = request.getParameter("cname");
      String gender = request.getParameter("cgender");
      String address = request.getParameter("caddress");
      String password = request.getParameter("cpwd");
      String contact = request.getParameter("ccontact");
       
      ContentCreator contentcreator = new ContentCreator();
      contentcreator.setId(id);
      contentcreator.setName(name);
      contentcreator.setGender(gender);
      contentcreator.setAddress(address);
      contentcreator.setPassword(password);
      contentcreator.setContact(contact);
       
      String msg = contentcreatorService.updateContentCreatorProfile(contentcreator);
       
      ContentCreator c = contentcreatorService.displayContentCreatorByID(id);
       
      HttpSession session = request.getSession();
      session.setAttribute("contentcreator", c);
       
      mv.setViewName("updatesuccesscontentcreator");
      mv.addObject("message", msg);
    }
    catch(Exception e)
    {
      mv.setViewName("updateerrorcontentcreator");
      mv.addObject("message", e.getMessage());
    }
    return mv;
  }
  
  @GetMapping("/contentcreatorcontactus")
  public ModelAndView contentcreatorContactUs()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("contentcreatorcontactus");
    return mv;
  }
  
  @GetMapping("/contentcreatorlogout")
  public ModelAndView contentcreatorLogout(HttpServletRequest request)
  {
    HttpSession session = request.getSession();
    session.removeAttribute("contentcreator");
    ModelAndView mv = new ModelAndView();
    mv.setViewName("contentcreatorlogin");
    return mv;
  }
  
  @GetMapping("/contentcreatorsessionexpiry")
  public ModelAndView contentcreatorSessionExpiry()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("contentcreatorsessionexpiry");
    return mv;
  }
  // Additional mappings for content management
  @GetMapping("index1")
  public String index1() {
      return "index1";
  }
  @GetMapping("addcontent")
  public ModelAndView addContentDemo() {
      ModelAndView mv = new ModelAndView("addcontent");
      return mv;
  }

  @PostMapping("insertcontent")
  public ModelAndView insertContentDemo(HttpServletRequest request, @RequestParam("contentimage") MultipartFile file) throws Exception {
      String msg = null;
      ModelAndView mv = new ModelAndView();
      
      try {
          String category = request.getParameter("category");
          String name = request.getParameter("name");
          String description = request.getParameter("description");
        //  Double cost = Double.valueOf(request.getParameter("cost"));
          String contentLink = request.getParameter("contentlink");
          
          byte[] bytes = file.getBytes();
          Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
          
          Content c = new Content();
          c.setCategory(category);
          c.setName(name);
          c.setDescription(description);
        //  c.setCost(cost);
          c.setUrl(contentLink);
          c.setImage(blob);
          
          msg = contentcreatorService.addContent(c);
          System.out.println(msg);
          mv.setViewName("contentmsg");
          mv.addObject("message", msg);
      } catch (Exception e) {
          msg = e.getMessage();
          System.out.println(msg);
          mv.setViewName("contenterror");
          mv.addObject("message", msg);
      }
      return mv;
  }

  @GetMapping("viewallcontents")
  public ModelAndView viewAllContentsDemo() {
      List<Content> contentList = contentcreatorService.viewAllContents();
      ModelAndView mv = new ModelAndView("viewallcontents");
      mv.addObject("contentlist", contentList);
      return mv;
  }

  @GetMapping("displaycontentimage")
  public ResponseEntity<byte[]> displayContentImageDemo(@RequestParam int id) throws Exception {
      Content content = contentcreatorService.viewContentByID(id);
      byte[] imageBytes = content.getImage().getBytes(1, (int) content.getImage().length());
      return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
  }

  @GetMapping("viewcontentbyid")
  public ModelAndView viewContentByIdDemo() {
      List<Content> contentList = contentcreatorService.viewAllContents();
      ModelAndView mv = new ModelAndView("viewcontentbyid");
      mv.addObject("contentlist", contentList);
      return mv;
  }

  @PostMapping("displaycontent")
  public ModelAndView displayContentDemo(HttpServletRequest request) {
      int cid = Integer.parseInt(request.getParameter("cid"));
      Content content = contentcreatorService.viewContentByID(cid);
      ModelAndView mv = new ModelAndView("displaycontent");
      mv.addObject("content", content);
      return mv;
  }

  @GetMapping("viewcontentsbycategory")
  public ModelAndView viewContentsByCategoryDemo() {
      ModelAndView mv = new ModelAndView("viewcontentsbycategory");
      return mv;
  }

  @PostMapping("displaycontentsbycategory")
  public ModelAndView displayContentsByCategoryDemo(HttpServletRequest request) {
      String category = request.getParameter("category");
      List<Content> contentList = contentcreatorService.viewAllContentsByCategory(category);
      ModelAndView mv = new ModelAndView("displaycontentsbycategory");
      mv.addObject("contentlist", contentList);
      return mv;
  }@GetMapping("updatecontent")
  public ModelAndView updateContentForm(@RequestParam int id) {
	    Content content = contentcreatorService.viewContentByID(id);
	    ModelAndView mv = new ModelAndView("updatecontent");
	    mv.addObject("content", content);
	    return mv;
	}

	@PostMapping("updatecontent")
	public ModelAndView updateContentDemo(HttpServletRequest request, @RequestParam("contentimage") MultipartFile file) throws Exception {
	    String msg = null;
	    ModelAndView mv = new ModelAndView();
	    try {
	        int id = Integer.parseInt(request.getParameter("id"));
	        String category = request.getParameter("category");
	        String name = request.getParameter("name");
	        String description = request.getParameter("description");
	     //   Double cost = Double.valueOf(request.getParameter("cost"));
	        String contentLink = request.getParameter("contentlink");

	        Content content = contentcreatorService.viewContentByID(id);
	        content.setCategory(category);
	        content.setName(name);
	        content.setDescription(description);
	    //    content.setCost(cost);
	        content.setUrl(contentLink);

	        if (!file.isEmpty()) {
	            byte[] bytes = file.getBytes();
	            Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
	            content.setImage(blob);
	        }

	        msg = contentcreatorService.updateContent(content);
	        mv.setViewName("contentmsg");
	        mv.addObject("message", msg);
	    } catch (Exception e) {
	        msg = e.getMessage();
	        mv.setViewName("contenterror");
	        mv.addObject("message", msg);
	    }
	    return mv;
	}
	@GetMapping("deletecontent")
	public ModelAndView deleteContentForm(@RequestParam int id) {
	    Content content = contentcreatorService.viewContentByID(id);
	    ModelAndView mv = new ModelAndView("deletecontent");
	    mv.addObject("content", content);  // Pass content for confirmation page
	    return mv;
	}

	@PostMapping("deletecontent")
	public String deleteContentDemo(@RequestParam int id, RedirectAttributes redirectAttributes) {
	    String msg = contentcreatorService.deleteContentByID(id);  // Delete content by ID
	    redirectAttributes.addFlashAttribute("message", msg);  // Pass message to redirect
	    return "redirect:/viewallcontents";  // Redirect to the viewallcontents page
	}





}
