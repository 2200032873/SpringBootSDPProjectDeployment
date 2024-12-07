package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.UserService;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
public class UserController 
{
  @Autowired
  private UserService userService;
  
  @GetMapping("/")
  public ModelAndView home()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("home");
    return mv;
  }
  
  @GetMapping("/userreg")
  public ModelAndView userreg()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("userreg");
    return mv;
  }
  
  @GetMapping("/userlogin")
  public ModelAndView userlogin()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("userlogin");
    return mv;
  }
  
  @PostMapping("/insertuser")
  public ModelAndView insertUser(HttpServletRequest request)
  {
    String name = request.getParameter("uname");
    String gender = request.getParameter("ugender");
    String dob = request.getParameter("udob");
    String location = request.getParameter("ulocation");
    String email = request.getParameter("uemail");
    String password = request.getParameter("upwd");
    String contact = request.getParameter("ucontact");
    String status = "Registered";
   
    User user = new User();
    user.setName(name);
    user.setGender(gender);
    user.setDateOfBirth(dob);
    user.setLocation(location);
    user.setEmail(email);
    user.setPassword(password);
    user.setContact(contact);
    user.setStatus(status);
   
    String msg = userService.userRegistration(user);
   
    ModelAndView mv = new ModelAndView("regsuccess");
    mv.addObject("message", msg);
   
    return mv;
  }
  
  @PostMapping("/checkuserlogin")
  public ModelAndView checkUserLogin(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    String email = request.getParameter("uemail");
    String password = request.getParameter("upwd");
    
    User user = userService.checkUserLogin(email, password);
    
    if (user != null)
    {
      HttpSession session = request.getSession();
      session.setAttribute("user", user);
      mv.setViewName("userhome");
    }
    else
    {
      mv.setViewName("userlogin");
      mv.addObject("message", "Login Failed");
    }
    return mv;
  }
  
  @GetMapping("/userhome")
  public ModelAndView userHome()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("userhome");
    return mv;
  }
  
  @GetMapping("/userprofile")
  public ModelAndView userProfile()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("userprofile");
    return mv;
  }
  
  @GetMapping("/updateuser")	
  public ModelAndView updateUser()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("updateuser");
    return mv;
  }
  
  @PostMapping("/updateuserprofile")
  public ModelAndView updateUserProfile(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    
    try
    {
      int id = Integer.parseInt(request.getParameter("uid"));
      String name = request.getParameter("uname");
      String gender = request.getParameter("ugender");
      String dob = request.getParameter("udob");
    
    
      String password = request.getParameter("upwd");
      String location = request.getParameter("ulocation");
      String contact = request.getParameter("ucontact");
       
      User user = new User();
      user.setId(id);
      user.setName(name);
      user.setGender(gender);
     
      user.setDateOfBirth(dob);
     
      user.setPassword(password);
      user.setLocation(location);
      user.setContact(contact);
       
      String msg = userService.updateUserProfile(user);
       
      User u = userService.displayUserByID(id);
       
      HttpSession session = request.getSession();
      session.setAttribute("user", u);
       
      mv.setViewName("updatesuccess");
      mv.addObject("message", msg);
    }
    catch(Exception e)
    {
      mv.setViewName("updateerror");
      mv.addObject("message", e.getMessage());
    }
    return mv;
  }
  
  @GetMapping("/usercontactus")
  public ModelAndView userContactUs()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("usercontactus");
    return mv;
  }
  @Autowired
  private JavaMailSender mailSender;
  @PostMapping("sendemail")
  public ModelAndView sendEmail(HttpServletRequest request) throws Exception 
  {
  String name = request.getParameter("name");
  String toemail = request.getParameter("email");
  String subject = request.getParameter("subject");
  String msg = request.getParameter("message");
  MimeMessage mimeMessage = mailSender.createMimeMessage();
  MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
  
  int otp = (int)(Math.random() * 99999); // random number generation 
  helper.setTo(toemail);
  helper.setSubject(subject);
  helper.setFrom("dvishnutejareddy@gmail.com");
  String htmlContent = 
  "<h3>Contact Form Details</h3>" +
  "<p><strong>Name:</strong> " + name + "</p>" +
  "<p><strong>Email:</strong> " + toemail + "</p>" +
  "<p><strong>Subject:</strong> " + subject + "</p>" +
  "<p><strong>Message:</strong> " + msg + "</p>" +
  "<p><strong>OTP:</strong> " + otp + "</p>";
  helper.setText(htmlContent, true);
  mailSender.send(mimeMessage);
  
  ModelAndView mv = new ModelAndView("mailsuccess");
  mv.addObject("message", "Email Sent Successfully");
  return mv;
  }
  @GetMapping("/userlogout")
  public ModelAndView userLogout(HttpServletRequest request)
  {
    HttpSession session = request.getSession();
    session.removeAttribute("user");
    ModelAndView mv = new ModelAndView();
    mv.setViewName("userlogin");
    return mv;
  }
  
  @GetMapping("/usersessionexpiry")
  public ModelAndView userSessionExpiry()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("usersessionexpiry");
    return mv;
  }
  @GetMapping("/viewasuser")
  public ModelAndView viewAsUserDemo() {
      List<Content> contentList = userService.viewAsUser();
      ModelAndView mv = new ModelAndView("viewasuser");
      mv.addObject("contentlist", contentList);
      return mv;
  }@Autowired
  private JavaMailSender sendfeedback;

  @PostMapping("/sendfeedback")
  public ModelAndView sendFeedback(HttpServletRequest request) {
      ModelAndView mv = new ModelAndView();

      try {
          // Retrieve parameters from the form
          String userName = request.getParameter("userName");
          String userEmail = request.getParameter("userEmail");
          String feedbackMessage = request.getParameter("feedbackText");
          String rating = request.getParameter("rating");

          // Validate required fields
          if (userName == null || userName.isEmpty() || userEmail == null || userEmail.isEmpty() 
              || feedbackMessage == null || feedbackMessage.isEmpty() || rating == null || rating.isEmpty()) {
              mv.setViewName("feedbackerror");
              mv.addObject("message", "All fields are required.");
              return mv;
          }

          // Create and configure the email message
          MimeMessage mimeMessage = mailSender.createMimeMessage();
          MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

          // Compose email content
          String htmlContent = 
              "<h3>User Feedback</h3>" +
              "<p><strong>Name:</strong> " + userName + "</p>" +
              "<p><strong>Email:</strong> " + userEmail + "</p>" +
              "<p><strong>Feedback:</strong> " + feedbackMessage + "</p>" +
              "<p><strong>Rating:</strong> " + rating + "</p>";

          helper.setTo(userEmail);
          helper.setSubject("Feedback Received - Thank You");
          helper.setFrom("");
          helper.setText(htmlContent, true);

          // Send email
          mailSender.send(mimeMessage);

          mv.setViewName("sendfeedback");
          mv.addObject("message", "Thank you for your feedback! A confirmation email has been sent to " + userEmail + ".");
      } catch (Exception e) {
          mv.setViewName("feedbackerror");
          mv.addObject("message", "An error occurred while sending feedback: " + e.getMessage());
      }

      return mv;
  }


  
  @GetMapping("heritages")
  public ModelAndView viewHeritageSites() {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("heritages"); // This maps to the 'heritages.jsp' file
      return mv;
  }


} 