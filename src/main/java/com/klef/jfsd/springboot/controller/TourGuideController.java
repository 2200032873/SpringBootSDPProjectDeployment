package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.TourGuide;
import com.klef.jfsd.springboot.service.TourGuideService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class TourGuideController {
    @Autowired
    private TourGuideService tourGuideService;

    @GetMapping("/tourguidereg")
    public ModelAndView tourGuideReg() {
        return new ModelAndView("tourguidereg");
    }

    @GetMapping("/tourguidelogin")
    public ModelAndView tourGuideLogin() {
        return new ModelAndView("tourguidelogin");
    }

    @PostMapping("/inserttourguide")
    public ModelAndView insertTourGuide(HttpServletRequest request) {
        String name = request.getParameter("tname");
        String gender = request.getParameter("tgender");
        String address = request.getParameter("taddress");
        String email = request.getParameter("temail");
        String password = request.getParameter("tpwd");
        String contact = request.getParameter("tcontact");
        String status = "Registered";

        TourGuide t = new TourGuide();
        t.setName(name);
        t.setGender(gender);
        t.setAddress(address);
        t.setEmail(email);
        t.setPassword(password);
        t.setContact(contact);
        t.setStatus(status);

        String msg = tourGuideService.tourGuideRegistration(t);

        ModelAndView mv = new ModelAndView("regsuccesstourguide");
        mv.addObject("message", msg);

        return mv;
    }

    @PostMapping("/checktourguidelogin")
    public ModelAndView checkTourGuideLogin(HttpServletRequest request) {
        String email = request.getParameter("temail");
        String password = request.getParameter("tpwd");

        TourGuide t = tourGuideService.checkTourGuideLogin(email, password);
        ModelAndView mv = new ModelAndView();

        if (t != null) {
            HttpSession session = request.getSession();
            session.setAttribute("tourguide", t);
            mv.setViewName("tourguidehome");
        } else {
            mv.setViewName("tourguidelogin");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("/tourguidehome")
    public ModelAndView tourGuideHome(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("tourguidehome");
        HttpSession session = request.getSession();
        TourGuide tourguide = (TourGuide) session.getAttribute("tourguide");

        if (tourguide != null) {
            mv.addObject("tourguide", tourguide);
        }
        return mv;
    }

    @GetMapping("/tourguideprofile")
    public ModelAndView tourGuideProfile() {
        return new ModelAndView("tourguideprofile");
    }

    @GetMapping("/updatetourguide")
    public ModelAndView updateTourGuide() {
        return new ModelAndView("updatetourguide");
    }

    @PostMapping("/updatetourguideprofile")
    public ModelAndView updateTourGuideProfile(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        try {
            int id = Integer.parseInt(request.getParameter("tid"));
            String name = request.getParameter("tname");
            String gender = request.getParameter("tgender");
            String address = request.getParameter("taddress");
            String password = request.getParameter("tpwd");
            String contact = request.getParameter("tcontact");

            TourGuide t = new TourGuide();
            t.setId(id);
            t.setName(name);
            t.setGender(gender);
            t.setAddress(address);
            t.setPassword(password);
            t.setContact(contact);

            String msg = tourGuideService.updateTourGuideProfile(t);
            TourGuide updatedTourGuide = tourGuideService.displayTourGuideByID(id);

            HttpSession session = request.getSession();
            session.setAttribute("tourguide", updatedTourGuide);

            mv.setViewName("updatesuccesstourguide");
            mv.addObject("message", msg);
        } catch (Exception e) {
            mv.setViewName("updateerrortourguide");
            mv.addObject("message", e.getMessage());
        }
        return mv;
    }

    @GetMapping("/tourguidecontactus")
    public ModelAndView tourGuideContactUs() {
        return new ModelAndView("tourguidecontactus");
    }

    @GetMapping("/tourguidelogout")
    public ModelAndView tourGuideLogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("tourguide");
        return new ModelAndView("tourguidelogin");
    }

    @GetMapping("/tourguidesessionexpiry")
    public ModelAndView tourGuideSessionExpiry() {
        return new ModelAndView("tourguidesessionexpiry");
    }
}
