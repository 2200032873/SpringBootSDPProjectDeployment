package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.ContentCreator;
import com.klef.jfsd.springboot.model.TourGuide;
//import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.TourGuideRepository;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
  @Autowired 
  private AdminService adminService;
  
  @GetMapping("adminhome")
  public ModelAndView adminhome()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("adminhome");
    
    long count = adminService.userCount();
    long count1 = adminService.contentcreatorCount();
    mv.addObject("userCount", count);
    mv.addObject("contentcreatorCount", count1);
    return mv;
  }
  
  @GetMapping("adminlogin")
  public ModelAndView adminlogin()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("adminlogin");
    
    return mv;
  }
  
  @PostMapping("checkadminlogin")
  public ModelAndView checkadminlogin(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    
    String auname = request.getParameter("auname");
    String apwd = request.getParameter("apwd");
       
    Admin admin = adminService.checkAdminLogin(auname, apwd);
      
    if(admin != null)
    {
        mv.setViewName("adminhome");
        long count = adminService.userCount();
        mv.addObject("userCount", count);
        long count1 = adminService.contentcreatorCount();
        mv.addObject("contentcreatorCount", count1);
    }
    else
    {
        mv.setViewName("adminloginfail");
        mv.addObject("message", "Login Failed");
    }
    return mv;
  }
  
  @GetMapping("viewallusers")
  public ModelAndView viewAllUsers()
  {
    ModelAndView mv = new ModelAndView();
    List<User> userList = adminService.viewAllUsers();
    mv.setViewName("viewallusers");
    mv.addObject("userList", userList);
    
    long count = adminService.userCount();
    mv.addObject("userCount", count);
    return mv;
  }
  
  @GetMapping("deleteuser")
  public ModelAndView deleteUser()
  {
    ModelAndView mv = new ModelAndView();
    List<User> userList = adminService.viewAllUsers();
    mv.setViewName("deleteuser");
    mv.addObject("userList", userList);
    return mv;
  }
  
  @GetMapping("updateuserstatus")
  public ModelAndView updateUserStatus()
  {
    ModelAndView mv = new ModelAndView();
    List<User> userList = adminService.viewAllUsers();
    mv.setViewName("updateuserstatus");
    mv.addObject("userList", userList);
    return mv;
  }
  
  @GetMapping("updatestatus")
  public String updateStatus(@RequestParam("id") int uid, @RequestParam("status") String status)
  {
    adminService.updateUserStatus(status, uid);
    return "redirect:/updateuserstatus";
  }
   
  @GetMapping("delete")
  public String deleteOperation(@RequestParam("id") int uid)
  {
    adminService.deleteUser(uid);
    return "redirect:/deleteuser";
  }
  
  @GetMapping("adminlogout")
  public ModelAndView adminLogout()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("adminlogin");
    return mv;
  }
  
 /* @GetMapping("addcustomer")
  public String addCustomer(Model m)
  {
    m.addAttribute("customer", new Customer());
    return "addcustomer";
  }
  
  @PostMapping("insertcustomer")
  public ModelAndView insertCustomer(@ModelAttribute("customer") Customer c) {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("customersuccess");
     
    String msg = adminService.addCustomer(c);
    mv.addObject("message", msg);
    return mv;
  }*/
  
//Content Creator methods with unique URL mappings

//Content Creator methods with exact case sensitivity
@GetMapping("viewallcontentcreators")
public ModelAndView viewAllContentCreators() {
   ModelAndView mv = new ModelAndView();
   List<ContentCreator> contentcreatorList = adminService.viewAllContentCreators();
   mv.setViewName("viewallcontentcreators");
   mv.addObject("contentcreatorList", contentcreatorList);
   
   long count1 = adminService.contentcreatorCount();
   mv.addObject("contentcreatorCount", count1);
   return mv;
}

@GetMapping("deletecontentcreator")
public ModelAndView deleteContentCreator() {
   ModelAndView mv = new ModelAndView();
   List<ContentCreator> contentcreatorList = adminService.viewAllContentCreators();
   mv.setViewName("deletecontentcreator");
   mv.addObject("contentcreatorList", contentcreatorList);
   return mv;
}

@GetMapping("updatecontentcreatorstatus")
public ModelAndView updateContentCreatorStatus() {
   ModelAndView mv = new ModelAndView();
   List<ContentCreator> contentcreatorList = adminService.viewAllContentCreators();
   mv.setViewName("updatecontentcreatorstatus");
   mv.addObject("contentcreatorList", contentcreatorList);
   return mv;
}

@GetMapping("updatecontentcreatorstatusaction")
public String updatecontentcreatorStatus(@RequestParam("id") int cid, @RequestParam("status") String status) {
   adminService.updateContentCreatorStatus(status, cid);
   return "redirect:/updatecontentcreatorstatus";
}

@GetMapping("deletecontentcreatoraction")
public String deletecontentcreatorOperation(@RequestParam("id") int cid) {
   adminService.deleteContentCreator(cid);
   return "redirect:/deletecontentcreator";
}
@GetMapping("viewalltourguides")
public ModelAndView viewAllTourGuides() {
    ModelAndView mv = new ModelAndView();
    List<TourGuide> tourGuideList = adminService.viewAllTourGuides();
    mv.setViewName("viewalltourguides");
    mv.addObject("tourGuideList", tourGuideList);

    long count = adminService.tourGuideCount();
    mv.addObject("tourGuideCount", count);
    return mv;
}
//Method to show all tour guides for deletion
@GetMapping("/deletetourguide")
public ModelAndView showTourGuides() {
    ModelAndView mv = new ModelAndView();
    List<TourGuide> tourGuideList = adminService.viewAllTourGuides();  // Assuming this method is present in the service layer
    mv.setViewName("deletetourguide");  // Ensure your "deletetourguide.jsp" is correctly mapped
    mv.addObject("tourGuideList", tourGuideList);
    return mv;
}

// Method to delete a tour guide
@GetMapping("/deletetourguideaction")
public String deleteTourGuide(@RequestParam("id") int id) {
    adminService.deleteTourGuide(id);  // Assuming the service method handles the deletion
    return "redirect:/viewalltourguides";  // Redirect back to the list of tour guides after deletion
}





}
