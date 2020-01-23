package com.face.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.face.model.Login;

//import javax.servlet.http.HttpServletRequest;

import com.face.model.Registration;
import com.face.service.UserService;
@Controller
public class Controll {
	
	@Autowired
	UserService userService;

  @RequestMapping(value="/")
	public ModelAndView home() {System.out.println("Registration controller");
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}

	@RequestMapping(value="/register", method = RequestMethod.GET)
	public ModelAndView showRegister() {
		ModelAndView mv=new ModelAndView("register");
		return mv;
	}
	
	
	@RequestMapping(value="/registerProcess", method=RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request,HttpServletResponse response,Registration user) {
			userService.register(user);
			return new ModelAndView("welcome", "firstname" , user.getName());
		}
		
	//login process
	
	@RequestMapping(value="login")

	public ModelAndView showLogin() {
	ModelAndView mav=new ModelAndView("login");//redirect to login.jsp
	return mav;

	}
	//@RequestMapping(value="/registerProcess", method=RequestMethod.POST)
	@RequestMapping(value="/loginprocess", method=RequestMethod.POST)
	public ModelAndView SearchUser(HttpServletRequest request, HttpServletResponse response,Login log) {
		ModelAndView mv=null;
			List<Registration> reg=userService.validateUser(log);     //call validate user and it return a list
			if(reg!=null)        //check the user is available or not
			{
				mv=new ModelAndView("welcome");      //if available goto welcome.jsp
				mv.addObject("firstname", reg.get(0).getUsername());    //pass the parameter as first name	
			}
			else {
				mv=new ModelAndView("login");     //if their is no user it goto login page
				mv.addObject("message","invalid login");    //also display a meassge invalid login
			}
			return mv;
		}
	
	

}
